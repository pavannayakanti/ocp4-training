variable "ocm_token" {
  description = "Offline token from https://console.redhat.com/openshift/token/rosa"
  type        = string
  sensitive   = true
}

variable "cluster_name" {
  description = "ROSA Cluster Name"
  type        = string
}

variable "aws_account_id" {
  description = "AWS Account ID for billing"
  type        = string
}

variable "aws_region" {
  description = "AWS region for cluster deployment"
  type        = string
  default     = "us-east-1"
}

variable "role_arn" {
  description = "Installer IAM role ARN"
  type        = string
}

variable "support_role_arn" {
  description = "Support IAM role ARN"
  type        = string
}

variable "controlplane_role_arn" {
  description = "Control Plane IAM role ARN"
  type        = string
}

variable "worker_role_arn" {
  description = "Worker IAM role ARN"
  type        = string
}

variable "openshift_version" {
  description = "OpenShift version to deploy"
  type        = string
}

variable "compute_nodes" {
  description = "Number of worker nodes"
  type        = number
  default     = 2
}

variable "compute_machine_type" {
  description = "EC2 instance type for worker nodes"
  type        = string
  default     = "m5.xlarge"
}

variable "machine_cidr" {
  description = "Machine network CIDR"
  type        = string
}

variable "service_cidr" {
  description = "Service network CIDR"
  type        = string
}

variable "pod_cidr" {
  description = "Pod network CIDR"
  type        = string
}

variable "host_prefix" {
  description = "Host prefix for pod CIDR"
  type        = number
}
