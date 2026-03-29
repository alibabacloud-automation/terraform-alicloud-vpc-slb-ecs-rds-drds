variable "name" {
  description = "The specification of module name."
  type        = string
  default     = ""
}

variable "description" {
  description = "The specification of module description."
  type        = string
  default     = ""
}

variable "cidr_block" {
  description = "The specification of the vpc cidr block."
  type        = string
  default     = ""
}

variable "instance_type" {
  description = "The specification of the instance type."
  type        = string
  default     = ""
}

variable "system_disk_category" {
  description = "The specification of the system disk category."
  type        = string
  default     = "cloud_efficiency"
}

variable "system_disk_name" {
  description = "The specification of the system disk name."
  type        = string
  default     = ""
}

variable "system_disk_description" {
  description = "The specification of the system disk description."
  type        = string
  default     = ""
}

variable "image_id" {
  description = "The specification of the image id."
  type        = string
  default     = ""
}

variable "internet_max_bandwidth_out" {
  description = "The specification of the internet max bandwidth out."
  type        = number
  default     = 10
}

variable "ecs_size" {
  description = "The specification of the ecs size."
  type        = number
  default     = 1200
}

variable "category" {
  description = "The specification of the category."
  type        = string
  default     = "cloud_efficiency"
}

variable "engine" {
  description = "The specification of the engine."
  type        = string
  default     = "MySQL"
}

variable "engine_version" {
  description = "The specification of the engine version."
  type        = string
  default     = "5.6"
}

variable "rds_instance_type" {
  description = "The specification of the rds instance type."
  type        = string
  default     = "rds.mysql.s2.large"
}

variable "instance_storage" {
  description = "The specification of the instance storage."
  type        = string
  default     = "30"
}

variable "instance_charge_type" {
  description = "The specification of the instance charge type."
  type        = string
  default     = "Postpaid"
}

variable "monitoring_period" {
  description = "The specification of the monitoring period."
  type        = string
  default     = "60"
}

variable "slb_address_type" {
  description = "The specification of the slb intranet."
  type        = string
  default     = "intranet"
}

variable "slb_spec" {
  description = "The specification of the slb spec."
  type        = string
  default     = "slb.s2.small"
}

variable "slb_tags_info" {
  description = "The specification of the slb tags info."
  type        = string
  default     = ""
}

variable "availability_zone" {
  description = "The available zone to launch modules."
  type        = string
  default     = ""
}

variable "vswitch_id" {
  description = "VSwitch variables, if vswitch_id is empty, then the net_type = classic."
  type        = string
  default     = ""
}

variable "drds_instance_charge_type" {
  description = "The instance charge type of DRDS."
  type        = string
  default     = "PostPaid"
}

variable "drds_instance_series" {
  description = "The instance series type of DRDS."
  type        = string
  default     = "drds.sn1.4c8g"
}

variable "drds_specification" {
  description = "The instance specification type of DRDS."
  type        = string
  default     = "drds.sn1.4c8g.8C16G"
}

variable "data_disks_name" {
  description = "The specification of data disks name."
  type        = string
  default     = ""
}

variable "data_disks_description" {
  description = "The specification of data disks description."
  type        = string
  default     = ""
}