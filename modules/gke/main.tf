# Resources for GKE Cluster with a separate node pool

resource "google_container_cluster" "primary"{
    name                        = var.name
    location                    = var.location
    
    remove_default_node_pool    = var.remove_default_node_pool
    initial_node_count          = var.initial_node_count
}

resource "google_container_node_pool" "primary_pool" {
    name        = var.node_pool_name
    cluster     = google_container_cluster.primary.name
    node_count  = var.node_count

    node_config {
        machine_type = var.machine_type
    }
}