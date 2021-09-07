Terraform module which creates High concurrency web service with VPC&SLB&ECS&RDS&DRDS on Alibaba Cloud

terraform-alicloud-vpc-slb-ecs-rds-drds
---

English | [简体中文](README-CN.md)

Terraform module which creates High concurrency web service with VPC&SLB&ECS&RDS&DRDS on Alibaba Cloud.

These types of resources are supported:

* [alicloud_vpc](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/vpc)
* [alicloud_slb_load_balancer](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/slb_load_balancer)
* [alicloud_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/instance)
* [alicloud_db_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/db_instance)
* [alicloud_drds_instance](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs/resources/drds_instance)

## Usage

```hcl
module "example" {
  source               = "terraform-alicloud-modules/vpc-slb-ecs-rds-drds/alicloud"
  name                 = "tf-vpc-slb-ecs-rds-drds"
  instance_type        = "ecs.n4.large"
  rds_instance_type    = "rds.mysql.s2.large"
  slb_address_type     = "intranet"
  drds_instance_series = "drds.sn1.4c8g"
}
```

## Notes

* This module using AccessKey and SecretKey are from `profile` and `shared_credentials_file`. If you have not set them
  yet, please install [aliyun-cli](https://github.com/aliyun/aliyun-cli#installation) and configure it.

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | > = 0.13.0 |
| <a name="requirement_alicloud"></a> [alicloud](#requirement\_alicloud) | > = 1.123.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_alicloud"></a> [alicloud](#provider\_alicloud) | > = 1.123.1 |

## Submit Issues

If you have any problems when using this module, please opening
a [provider issue](https://github.com/aliyun/terraform-provider-alicloud/issues/new) and let us know.

**Note:** There does not recommend to open an issue on this repo.

## Authors

Created and maintained by Will(ppnjy@qq.com)

## License

MIT Licensed. See LICENSE for full details.

## Reference

* [Terraform-Provider-Alicloud Github](https://github.com/aliyun/terraform-provider-alicloud)
* [Terraform-Provider-Alicloud Release](https://releases.hashicorp.com/terraform-provider-alicloud/)
* [Terraform-Provider-Alicloud Docs](https://registry.terraform.io/providers/aliyun/alicloud/latest/docs)
