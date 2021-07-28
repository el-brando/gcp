# Variables for GKE Cluster with default node pool

variable "cluster_name"{
    description = "Name for your cluster"
    type = string
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

variable "cluster_autoscaling_enabled" {
    description = "Automatically adjust the size of the cluster + automatically create/delete node pools"
    default = false
}

variable "minimum_cpu_vcores" {
    description = "minimum number of virtual cpus in your cluster"
    default = 2
}

variable "maximum_cpu_vcores" {
    description = "maximum number of virtual cpus in your cluster"
    default = 10
}

variable "maximum_memory" {
    description = "maximum virtual memory provisioned for your cluster"
    default = 64
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

variable "account_id" {
    description = "service account identifier"
}

variable "display_name" {
    description = "service account display name"
}