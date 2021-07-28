# Variables for GKE Autopilot Cluster with default node pool

variable "cluster_name"{
    description = "Name for your cluster"
    type = string
}

variable "location"{
    description = "What region/zone is your cluster located in"
}

variable "account_id" {
    description = "service account identifier"
}

variable "display_name" {
    description = "service account display name"
}