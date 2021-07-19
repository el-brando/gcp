# Outputs for the GKE Cluster with default node pool

output "name"{
    value = google_container_cluster.primary.*.name
}

output "location"{
    value = google_container_cluster.primary.*.location
}