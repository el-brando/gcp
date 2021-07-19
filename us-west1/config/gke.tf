module "gke_cluster_test"{
    source = "../../modules/gke"

    name = "test-cluster"
    location = "us-west1"
    initial_node_count = 3
}