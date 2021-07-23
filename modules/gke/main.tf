# Module for GKE Cluster

resource "google_service_account" "service_account"{
    account_id      = var.account_id
    display_name    = var.display_name
}

module "create_gke_cluster"{
    source = "../base/gke/gke_cluster"

    account_id                  = var.account_id
    display_name                = var.display_name

    cluster_name                = var.cluster_name
    location                    = var.location

    remove_default_node_pool    = var.remove_default_node_pool
    initial_node_count          = var.initial_node_count

}

module "create_node_pool"{
    source = "../base/gke/gke_node_pool"

    node_pool_name              = var.node_pool_name
    cluster                     = module.create_gke_cluster.name
    location                    = var.location
    node_count                  = var.node_count
    machine_type                = var.machine_type
    service_account             = "${google_service_account.service_account.id}"
}