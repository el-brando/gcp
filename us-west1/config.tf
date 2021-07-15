terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "el-brando"

    workspaces {
      name = "gcp-us-west1-josse-test"
    }
  }
}
