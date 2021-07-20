# Outputs for the GKE Cluster with default node pool

output "name"{
    value = google_container_cluster.primary.*.name
}

output "location"{
    value = google_container_cluster.primary.*.location
}

output "node_pool_name"{
    value = google_container_node_pool.primary_pool.*.name
}

output "node_count"{
    value = google_container_node_pool.primary_pool.*.node_count
}