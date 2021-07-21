# Module for GKE cluster with separate node pool

module "gke_cluster_test"{
    source = "../../modules/gke"

    account_id      = "gketest01"
    display_name    = "GKE Test Account"

    name            = "test-cluster"
    location        = "us-west1"
    
    node_pool_name  = "my-test-node-pool"
    machine_type    = "e2-small"
}