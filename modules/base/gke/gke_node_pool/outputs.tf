# Outputs for Container Node Pool Resource 

output "node_pool_name"{
    value = google_container_node_pool.primary_pool.*.name
}

output "node_count"{
    value = google_container_node_pool.primary_pool.*.node_count
}