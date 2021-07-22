# Resoruce for a google container cluster

resource "google_container_cluster" "primary"{
    name                        = var.name
    location                    = var.location
    
    remove_default_node_pool    = var.remove_default_node_pool
    initial_node_count          = var.initial_node_count
}
