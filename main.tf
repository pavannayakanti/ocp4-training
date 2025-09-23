terraform {
  required_providers {
    ocm = {
      source  = "openshift-online/ocm"
      version = "0.1.3"
    }
  }
}

provider "ocm" {
  token = var.ocm_token   # Offline token from Red Hat console
}

resource "ocm_cluster" "iris_ocp4" {
  name           = var.cluster_name
  cloud_provider = "aws"
  cloud_region   = var.aws_region
  multi_az       = false

  # STS IAM roles
  sts_role_arn              = var.role_arn
  sts_support_role_arn      = var.support_role_arn
  sts_controlplane_role_arn = var.controlplane_role_arn
  sts_worker_role_arn       = var.worker_role_arn

  # OpenShift version (must use correct ID, e.g., openshift-v4.19.11)
  openshift_version = var.openshift_version

  # Compute pool
  compute_nodes        = var.compute_nodes
  compute_machine_type = var.compute_machine_type

  # AWS account
  aws_account_id = var.aws_account_id

  # Networking
  machine_cidr = var.machine_cidr
  service_cidr = var.service_cidr
  pod_cidr     = var.pod_cidr
  host_prefix  = var.host_prefix

  properties = {
    "training" = "ocp4"
  }
}
