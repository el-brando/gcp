# Module for GKE Cluster

module "create_gke_cluster"{
    source = "../base/gke/gke_cluster"

    account_id                  = var.account_id
    display_name                = var.display_name

    name                        = var.name
    location                    = var.location

    remove_default_node_pool    = var.remove_default_node_pool
    initial_node_count          = var.initial_node_count
}
