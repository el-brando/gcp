# Resources for GKE Cluster with a separate node pool

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

resource "google_container_node_pool" "primary_pool" {
    name        = var.node_pool_name
    cluster     = google_container_cluster.primary.id
    node_count  = var.node_count

    node_config {
        machine_type = var.machine_type

        service_account = google_service_account.service_account.email
        oauth_scopes = [
            "https://www.googleapis.com/auth/cloud-platform"
        ]
    }
}