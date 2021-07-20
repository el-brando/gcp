# Variables for GKE Cluster with default node pool

variable "name"{
    description = "Name for your cluster"
}

variable "location"{
    description = "What region/zone is your cluster located in"
}

variable "initial_node_count"{
    description = "number of nodes in the default node pool"
    default = 1
}

variable "remove_default_node_pool"{
    description = "Are you using a separate node pool"
    default = false
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