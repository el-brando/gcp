# Outputs for Google Container Cluster Resource

output "name"{
    value = google_container_cluster.primary.*.name
}

output "location"{
    value = google_container_cluster.primary.*.location
}