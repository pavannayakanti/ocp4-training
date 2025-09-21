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
  region         = var.aws_region
  multi_az       = false

  sts {
    role_arn              = var.role_arn
    support_role_arn      = var.support_role_arn
    controlplane_role_arn = var.controlplane_role_arn
    worker_role_arn       = var.worker_role_arn
  }

  version              = var.openshift_version
  compute_nodes        = var.compute_nodes
  compute_machine_type = var.compute_machine_type
  aws_billing_account_id = var.aws_account_id

  machine_cidr = var.machine_cidr
  service_cidr = var.service_cidr
  pod_cidr     = var.pod_cidr
  host_prefix  = var.host_prefix

  properties = {
    "iris-training" = "ocp4"
  }
}
