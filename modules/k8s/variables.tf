variable "network_name" {
  description = "name of the vpc network to create"
}

variable "subnet_cidr_range" {
  description = "CIDR block for the subnet"
}

variable "subnet_name" {
  description = "name of the subnet being created"
}

variable "internal_firewall_name" {
    description = "name for the internal firewall rule set"
}

variable "external_firewall_name" {
  description = "name for the external firewall rule set"
}

variable "internal_source_ranges" {
    description = "CIDR range for internal firewall rule set"
    type = list(string)
}

variable "external_source_ranges" {
  description = "CIDR range for the external firewall rule set"
  type = list(string)
}

variable "worker_count" {
  description = "number of worker nodes to create"
  default = "3"
}

variable "controller_count" {
  description = "number of worker nodes to create"
  default = "3"
}

variable "project_tag" {
  description = "tag for the project"
}





