terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "el-brando"

    workspaces {
      name = "gke_workspace"
    }
  }
}
