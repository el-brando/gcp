# Outputs from gke google template module

output "cluster_id" {
  value = module.gke.cluster_id
}

output "name" {
  value = module.gke.name
}

output "endpoint" {
  value = module.gke.endpoint
}

output "location" {
  value = module.gke.region
}

output "horizontal_pod_autoscaling_enabled" {
  value = module.gke.horizontal_pod_autoscaling
}

output "http_load_balancing_enabled" {
  value = module.gke.http_load_balancing
}

output "network_policy_enabled" {
  value = module.gke.network_policy
}

output "node_pool_names" {
  value = module.gke.node_pools.name
}