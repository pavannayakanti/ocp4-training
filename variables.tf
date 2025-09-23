variable "cluster_name" { type = string }
variable "cluster_admin_password" { type = string; sensitive = true }
variable "role_arn" { type = string }
variable "support_role_arn" { type = string }
variable "controlplane_role_arn" { type = string }
variable "worker_role_arn" { type = string }
variable "role_prefix" { type = string }
variable "cluster_tags" { type = string }
variable "aws_region" { type = string }
variable "openshift_version" { type = string }
variable "compute_nodes" { type = number }
variable "compute_machine_type" { type = string }
variable "machine_cidr" { type = string }
variable "service_cidr" { type = string }
variable "pod_cidr" { type = string }
variable "host_prefix" { type = number }
