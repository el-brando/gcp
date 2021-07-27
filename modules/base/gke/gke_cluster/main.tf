# Resoruce for a google container cluster

resource "google_container_cluster" "primary"{
    name                        = var.cluster_name
    location                    = var.location
    enable_autopilot            = var.enable_autopilot  

    remove_default_node_pool    = var.remove_default_node_pool
    initial_node_count          = var.initial_node_count
}
