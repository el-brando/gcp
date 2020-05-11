module "worker_instances" {
  source = "../base/compute/google_compute_instance"
  
  mcount = "${var.worker_count}"
  base_instance_name = "worker"
  tags = ["${var.project_tag}","worker"]
  subnetwork = "${module.subnet.name}"
  //the count will be added as the last digit by the base module.
  base_network_ip = "10.240.0.2"
}

module "controller_instances" {
  source = "../base/compute/google_compute_instance"
  
  mcount = "${var.controller_count}"
  base_instance_name = "controller"
  tags = ["${var.project_tag}","controller"]
  subnetwork = "${module.subnet.name}"
  //the count will be added as the last digit by the base module.
  base_network_ip = "10.240.0.1"
}