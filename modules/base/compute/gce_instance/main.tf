resource "google_compute_instance" "instance" {
  count                     = var.mcount
  name                      = "${var.base_instance_name}-${count.index}"
  machine_type              = var.machine_type
  zone                      = var.zone
  can_ip_forward            = "true"
  allow_stopping_for_update = "true"

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.image_size
    }
  }

  network_interface {
    subnetwork = var.subnetwork
    network_ip = "${var.base_network_ip}${count.index}"
  }
  
  metadata = {
    pod_cidr = var.base_instance_name == "worker" ? "10.200.${count.index}.0/24" : ""
  }

  service_account {
    scopes = var.scopes
  }
}