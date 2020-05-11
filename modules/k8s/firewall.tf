module "firewall_internal_icmp" {
    source = "../base/network/google_compute_firewall"

    firewall_name = "${var.internal_firewall_name}"
    network_name = "${module.vpc.name}"
    protocol = "icmp"
    source_ranges = "${var.internal_source_ranges}"
}

module "firewall_internal_tcp" {
    source = "../base/network/google_compute_firewall"

    firewall_name = "${var.internal_firewall_name}"
    network_name = "${module.vpc.name}"
    protocol = "tcp"
    ports = ["0-65535"]
    source_ranges = "${var.internal_source_ranges}"
}

module "firewall_internal_udp" {
    source = "../base/network/google_compute_firewall"

    firewall_name = "${var.internal_firewall_name}"
    network_name = "${module.vpc.name}"
    protocol = "udp"
    ports = ["0-65535"]
    source_ranges = "${var.internal_source_ranges}"
}

module "firewall_external_icmp" {
    source = "../base/network/google_compute_firewall"

    firewall_name = "kubernetes-the-hard-way-allow-external"
    network_name = "${module.vpc.name}"
    protocol = "icmp"
    source_ranges = "${var.external_source_ranges}"
}

module "firewall_external_tcp" {
    source = "../base/network/google_compute_firewall"

    firewall_name = "kubernetes-the-hard-way-allow-external"
    network_name = "${module.vpc.name}"
    protocol = "tcp"
    ports = ["22","6443"]
    source_ranges = "${var.external_source_ranges}"
}