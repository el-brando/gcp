variable "network_name" {
  description = "name of the firewall"
}

variable "protocol" {
  description = "protocol for the firewall rule"
}

variable "firewall_name" {
  description = "name of the firewall being created"
}

variable "ports" {
  description = "port pr port range for the firewall rule"
  type = list(string)
  default = [""]
}

variable "source_ranges" {
  description = "source IP ranges for firewall rule"
  type = list(string)
  
}

