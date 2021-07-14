resource "google_compute_instance" "instance" {
  count                     = var.mcount
  name                      = "${var.base_instance_name}-${count.index}"
  machine_type              = var.machine_type
  zone                      = var.zone

  tags = var.tags

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.image_size
    }
  }

  network_interface {
    network = "default"
  }

}