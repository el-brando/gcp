# Module for GKE cluster with separate node pool

module "gke_autopilot_test"{
    source = "./modules/gke_autopilot"
    
    # Inputs for google service account
    account_id                  = "gketest01"
    display_name                = "GKE Test Account"

    # Inputs for google container cluster
    cluster_name                = "test-cluster"
    location                    = "us-west1"
    enable_autopilot            = true
}