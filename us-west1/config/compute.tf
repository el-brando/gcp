module "compute_test" {
  source = "../../modules/base/compute/gce_instance"

  base_instance_name = "test"
  mcount = "1"
  tags = ["test"]
}