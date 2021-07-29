# variables for gke module template provided by Google

variable "project_id" {
    description = "What project is this cluster associated with"
}

variable "cluster_name"{
    description = "Name for your cluster"
}

variable "region"{
    description = "What region is your cluster located in"
}

variable "network" {
    description = "The VPC network to host the cluster"
}

variable "subnetwork"{
    description = "The subnetwork to host the cluster in"
}

variable "ip_range_pods" {
    description = "The name of the secondary subnet range to use for pods"
}

variable "ip_range_services" {
    description = "The name of the secondary subnet range to use for services"
}



