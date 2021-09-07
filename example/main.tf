variable "name" {
  default = "terraform_test"
}

data "alicloud_zones" "default" {
  available_resource_creation = "Rds"
  enable_details              = true
}

module "example" {
  source               = "../"
  name                 = var.name
  availability_zone    = data.alicloud_zones.default.zones.0.id
  instance_type        = "ecs.n4.large"
  rds_instance_type    = "rds.mysql.s2.large"
  slb_address_type     = "intranet"
  drds_instance_series = "drds.sn1.4c8g"
}
