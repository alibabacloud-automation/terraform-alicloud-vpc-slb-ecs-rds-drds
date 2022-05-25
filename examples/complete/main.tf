data "alicloud_instance_types" "default" {

}

data "alicloud_zones" "default" {

}

data "alicloud_images" "default" {
  owners     = "system"
  name_regex = "^centos_6"
}

data "alicloud_db_instance_classes" "default" {
  engine         = "MySQL"
  engine_version = "5.6"
}
module "complete" {
  source = "../../"

  # resource vpc
  name       = var.name
  cidr_block = "172.16.0.0/16"

  # resource alicloud_vswitch
  availability_zone = data.alicloud_zones.default.zones.0.id

  #resource alicloud_slb_load_balancer
  slb_address_type = "intranet"
  slb_spec         = var.slb_spec
  slb_tags_info    = var.slb_tags_info

  # resource alicloud_instance
  instance_type              = data.alicloud_instance_types.default.instance_types.0.id
  system_disk_category       = "cloud_efficiency"
  system_disk_name           = var.system_disk_name
  system_disk_description    = var.system_disk_description
  image_id                   = data.alicloud_images.default.images.0.id
  internet_max_bandwidth_out = var.internet_max_bandwidth_out
  data_disks_name            = "data_disks_name"
  ecs_size                   = 1200
  category                   = "cloud_efficiency"
  data_disks_description     = "tf-vpc-slb-ecs-rds-drds-description"

  # resource alicloud_db_instance
  engine               = "MySQL"
  engine_version       = "5.6"
  rds_instance_type    = data.alicloud_db_instance_classes.default.instance_classes.0.instance_class
  instance_storage     = var.instance_storage
  instance_charge_type = var.instance_charge_type
  monitoring_period    = var.monitoring_period

  # resource alicloud_drds_instance
  description               = var.description
  drds_specification        = "drds.sn1.4c8g.8C16G"
  drds_instance_series      = "drds.sn1.4c8g"
  drds_instance_charge_type = "PostPaid"
}
