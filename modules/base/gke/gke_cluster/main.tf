# Resoruce for a google container cluster

resource "google_container_cluster" "primary"{
    name                        = var.cluster_name
    location                    = var.location

    remove_default_node_pool    = var.remove_default_node_pool
    initial_node_count          = var.initial_node_count
    cluster_autoscaling {
        enabled                 = var.cluster_autoscaling_enabled
        resource_limits {
            resource_type       = "cpu"
            minimum             = var.minimum_cpu_vcores
            maximum             = var.maximum_cpu_vcores
        }

        resource_limits {
            resource_type       = "memory"
            maximum             = var.maximum_memory
        }
    }
}
