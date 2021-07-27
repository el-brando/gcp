# Module for GKE Autopilot Cluster

resource "google_service_account" "service_account"{
    account_id      = var.account_id
    display_name    = var.display_name
}

resource "google_container_cluster" "autopilot"{
    name                        = var.cluster_name
    location                    = var.location
    enable_autopilot            = var.enable_autopilot  
}

module "create_autopilot_cluster"{
    source                      = "./"
    
    account_id                  = var.account_id
    display_name                = var.display_name

    cluster_name                = var.cluster_name
    location                    = var.location
    enable_autopilot            = var.enable_autopilot 
}

# GKE provisions and managaes node pools, 
# User cannot configure node pool settings in autopilot mode