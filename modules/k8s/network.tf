data "google_client_config" "current" {}

module "vpc" {
  source = "../base/network/google_compute_network"

  network_name = "${var.network_name}"
}

module "subnet" {
  source = "../base/network/google_compute_subnetwork"

  subnet_name       = "${var.subnet_name}"
  subnet_cidr_range = "${var.subnet_cidr_range}"
  network_name      = "${module.vpc.name}"
  region            = "${data.google_client_config.current.region}"
}

module "kube_external_ip" {
  source = "../base/network/google_compute_address"

  address_name = "${var.network_name}"
}