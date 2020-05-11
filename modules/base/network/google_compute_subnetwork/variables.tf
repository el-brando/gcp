variable "network_name" {
  description = "name of the vpc network to attach the subnet to"
}

variable "subnet_cidr_range" {
  description = "CIDR block for the subnet"
}

variable "subnet_name" {
  description = "name of the subnet being created"
}

variable "region" {
  description = "region where this subnet should be created, ex: us-west1"
}
