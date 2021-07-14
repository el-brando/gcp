output "name" {
  value = google_compute_instance.instance.*.name
}

output "instance_id" {
  value = google_compute_instance.instance.*.instance_id
}

