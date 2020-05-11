resource "google_compute_firewall" "firewall" {
  name    = "${var.firewall_name}"
  network = "${var.network_name}"
  allow {
    protocol = "${var.protocol}"
    ports = "${var.ports}"
  }

  source_ranges = "${var.source_ranges}"
}