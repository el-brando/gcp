# Calls the template gke module in github

# google_client_config and kubernetes provider must be explicitly specified like the following.
data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}


module "gke" {
  #source                        = "https://github.com/terraform-google-modules/terraform-google-kubernetes-engine?ref=master"
  source                        = "terraform-google-modules/kubernetes-engine/google"
  project_id                    = var.project_id
  name                          = var.cluster_name
  region                        = var.region
  network                       = var.network
  subnetwork                    = var.subnetwork
  ip_range_pods                 = var.ip_range_pods
  ip_range_services             = var.ip_range_services
  http_load_balancing           = false
  horizontal_pod_autoscaling    = true
  network_policy                = false
  create_service_account        = true

  node_pools = [
    {
      name                      = "test-node-pool"
      machine_type              = "e2-small" #e2-medium is gogole's default
      min_count                 = 1
      max_count                 = 100
      local_ssd_count           = 0
      disk_size_gb              = 100
      disk_type                 = "pd-standard"
      image_type                = "COS"
      auto_repair               = true
      auto_upgrade              = true
      preemptible               = false
      initial_node_count        = 3
    },
  ]

  node_pools_oauth_scopes = {
    all = []

    default-node-pool = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  node_pools_labels = {
    all = {}

    default-node-pool = {
      default-node-pool = true
    }
  }

  node_pools_metadata = {
    all = {}

    default-node-pool = {
      node-pool-metadata-custom-value = "my-node-pool"
    }
  }

  node_pools_taints = {
    all = []

    default-node-pool = [
      {
        key    = "test-node-pool"
        value  = true
        effect = "PREFER_NO_SCHEDULE"
      },
    ]
  }

  node_pools_tags = {
    all = []

    default-node-pool = [
      "test-node-pool",
    ]
  }
}


# Resrouces for deploying a sample nginx server

resource "kubernetes_pod" "test-pod"{
  metadata {
    name = "nginx-pod-example"

    labels = {
      maintained_by = "terraform"
      app           = "nginx-example"
    }
  }

  spec {
    container{
      image = "nginx:1.7.9"
      name = "nginx-example"
    }
  }

  depends_on = [module.gke]
}

resource "kubernetes_service" "test-service"{
  metadata {
    name = "nginx-service-example"
  }

  spec {
    selector = {
      app = kubernetes_pod.test-pod.metadata.0.labels.app
    }

    session_affinity = "ClientIP"

    port {
      port        = 8080
      target_port = 80
    } 

    type = "LoadBalancer"

  }

  depends_on = [module.gke]

}