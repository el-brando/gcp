# Module for GKE Google Template (Managed by Google)

module "gke_google_template"{

    source                  = "./modules/gke_google_template"

    project_id              = "brandonsgcp"
    cluster_name            = "test-cluster"
    region                  = "us-west1"
    network                 = "kubenetwork"
    subnetwork              = "kubesubnet"
    ip_range_pods           = "kubepods"
    ip_range_services       = "kubeservices"
}