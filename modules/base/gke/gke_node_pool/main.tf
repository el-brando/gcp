# Resource for a separate container node pool

resource "google_container_node_pool" "primary_pool" {
    name        = var.node_pool_name
    location    = var.location
    cluster     = google_container_cluster.primary.name
    node_count  = var.node_count

    node_config {
        machine_type = var.machine_type

        service_account = google_service_account.service_account.email
        oauth_scopes = [
            "https://www.googleapis.com/auth/cloud-platform"
        ]
    }
}