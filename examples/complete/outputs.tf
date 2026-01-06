output "this_ecs_name" {
  description = "The name of the ECS instance."
  value       = module.complete.this_ecs_name
}

output "this_ecs_id" {
  description = "The ID of the ECS instance."
  value       = module.complete.this_ecs_id
}

output "this_rds_id" {
  description = "The ID of the RDS instance."
  value       = module.complete.this_rds_id
}

output "this_slb_id" {
  description = "The ID of the SLB instance."
  value       = module.complete.this_slb_id
}