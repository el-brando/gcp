provider "google" {
  project = "brandonsgcp"
  region  = "us-west1"
  zone    = "us-west1-c"
}

module "config" {
  source = "./config"
}
