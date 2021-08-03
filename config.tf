terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "el-brando"

    workspaces {
      name = "gke_workspace"
    }
  }
}

provider "google" {
  project = "brandonsgcp"
  region  = "us-west1"
  #zone    = "us-west1-a"
}

data "google_client_config" "default" {}

provider "kubernetes" {
  host                   = "https://${module.gke.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke.ca_certificate)
}