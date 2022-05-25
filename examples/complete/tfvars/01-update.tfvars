# resource vpc
name = "update-tf-testacc-drds-ecs"

#resource alicloud_slb_load_balancer
slb_spec      = "slb.s2.medium"
slb_tags_info = "update for intarnet"

# resource alicloud_instance
system_disk_name           = "update_system_disk"
system_disk_description    = "update_system_disk_description"
internet_max_bandwidth_out = 20

#alicloud_db_instance
instance_storage  = "40"
monitoring_period = "300"
description       = "udpate-tf-vpc-slb-ecs-rds-drds-description"
