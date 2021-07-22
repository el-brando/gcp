# Resoruce for a google container cluster + account id

resource "google_service_account" "service_account"{
    account_id      = var.account_id
    display_name    = var.display_name
}

resource "google_container_cluster" "primary"{
    name                        = var.name
    location                    = var.location
    
    remove_default_node_pool    = var.remove_default_node_pool
    initial_node_count          = var.initial_node_count
}
