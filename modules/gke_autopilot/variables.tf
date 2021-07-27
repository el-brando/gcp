# Variables for GKE Autopilot Cluster with default node pool

variable "cluster_name"{
    description = "Name for your cluster"
    type = string
}

variable "location"{
    description = "What region/zone is your cluster located in"
}

variable "enable_autopilot" {
    description = "Use Autopilot mode clusters"
    default = true
}

variable "remove_default_node_pool"{
    description = "Are you using a separate node pool"
    default = false
}

variable "account_id" {
    description = "service account identifier"
}

variable "display_name" {
    description = "service account display name"
}