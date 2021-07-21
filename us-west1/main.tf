provider "google" {
  project = "brandonsgcp"
  region  = "us-west1"
  zone    = "us-west1-a"
}

module "config" {
  source = "./config"
}