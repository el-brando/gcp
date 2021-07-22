# Module for creating a separate node pool

module "create_node_pool"{
    source = "../base/gke/gke_node_pool"

    node_pool_name  = var.node_pool_name
    location        = var.location
    node_count      = var.node_count
    machine_type    = var.machine_type
}