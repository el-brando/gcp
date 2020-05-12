provider "google" {
  project = "brandonsgcp"
  region  = "us-west1"
  zone    = "us-west1-c"
}

module "k8s" {
  source = "./modules/k8s"

  // inputs for network  
  network_name = "kubernetes-the-hard-way"
  subnet_name = "kubernetes"
  subnet_cidr_range = "10.240.0.0/24"

  // inputs for firewall
  internal_firewall_name = "kubernetes-the-hard-way-allow-internal"
  external_firewall_name = "kubernetes-the-hard-way-allow-external"
  internal_source_ranges = ["10.240.0.0/24","10.200.0.0/16"]
  external_source_ranges = ["0.0.0.0/0"]
  
  // inputs for compute
  project_tag = "kubernetes-the-hard-way"
}

