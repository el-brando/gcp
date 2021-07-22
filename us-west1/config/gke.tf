# Module for GKE cluster with separate node pool

module "gke_cluster_test"{
    source = "../../modules/gke"
    
    # Inputs for google service account
    account_id                  = "gketest01"
    display_name                = "GKE Test Account"

    # Inputs for google container cluster
    name                        = "test-cluster"
    location                    = "us-west1"
    remove_default_node_pool    = true
    initial_node_count          = 1
    
    # Inputs for separate node pool
    node_pool_name              = "my-test-node-pool"
    node_count                  = 1 
    machine_type                = "e2-small"
}