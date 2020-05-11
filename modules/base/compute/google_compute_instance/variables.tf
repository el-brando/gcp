variable "mcount" {
  description = "number of instances to create"
}

variable "base_instance_name" {
  description = "name of the instance created"
}

variable "machine_type" {
  description = "type of instance to create"
  default = "n1-standard-1"
}

variable "zone" {
  description = "zone to build the instance in"
  default = "us-west1-c"
}

variable "tags" {
  description = "tags for the instance"
  type = "list"
}

variable "image" {
  description = "name of the boot image"
  default = "ubuntu-os-cloud/ubuntu-1804-lts"
}

variable "image_size" {
  description = "size of the boot disk"
  default = "200"
}

variable "subnetwork" {
  description = "subnet where the instance will be placed"
}

variable "base_network_ip" {
  description = "IP address to assign to the worker instance"
}

variable "pod_cidr" {
  description = "value for the metadata_key, ex: 10.240.0.0/16"
  default = ""
}

variable "scopes" {
  description = "API scopes to add to the instance"
  type = "list"
  default = ["compute-rw", "storage-ro", "service-management", "service-control", "logging-write", "monitoring"]
}

