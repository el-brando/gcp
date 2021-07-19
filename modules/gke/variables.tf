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