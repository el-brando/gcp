# Variables for Container Node Pool Resource

variable "location"{
    description = "What region/zone is your cluster located in"
}

variable "cluster"{
    description = "cluster that this node pool belongs to"
    type = string
}

variable "service_account"{
    description = "google service account for gke cluster"
}

variable "node_pool_name" {
    description = "Name your node pool"
}

variable "machine_type"{
    description = "what machine should be used for the nodes in the pool"
    default = "e2-micro"
}

variable "node_count"{
    description = "how many nodes per instance group in your separate node pool"
    default = 1
}