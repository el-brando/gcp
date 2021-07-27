# Vairables for Google Container Cluster Resource

variable "cluster_name"{
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
    default = true
}

variable "account_id" {
    description = "service account identifier"
}

variable "display_name" {
    description = "service account display name"
}