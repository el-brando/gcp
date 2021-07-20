# Module for GKE cluster with separate node pool

module "gke_cluster_test"{
    source = "../../modules/gke"

    name            = "test-cluster"
    location        = "us-west1"
    
    node_pool_name  = "my-test-node-pool"
    machine_type    = "e2-small"
}