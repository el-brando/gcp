# Calls the template gke module in github

module "gke" {
  source                        = "https://github.com/terraform-google-modules/terraform-google-kubernetes-engine?ref=master"

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
      initial_node_count        = 80
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
