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
  zone    = "us-west1-a"
}
