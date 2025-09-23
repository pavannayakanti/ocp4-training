resource "null_resource" "rosa_cluster" {
  # Create cluster
  provisioner "local-exec" {
    command = <<EOT
      echo ">>> Creating ROSA cluster: ${var.cluster_name}"
      rosa create cluster \
        --cluster-name ${var.cluster_name} \
        --sts \
        --cluster-admin-password ${var.cluster_admin_password} \
        --role-arn ${var.role_arn} \
        --support-role-arn ${var.support_role_arn} \
        --controlplane-iam-role ${var.controlplane_role_arn} \
        --worker-iam-role ${var.worker_role_arn} \
        --operator-roles-prefix ${var.role_prefix} \
        --tags "${var.cluster_tags}" \
        --region ${var.aws_region} \
        --version ${var.openshift_version} \
        --ec2-metadata-http-tokens optional \
        --replicas ${var.compute_nodes} \
        --compute-machine-type ${var.compute_machine_type} \
        --machine-cidr ${var.machine_cidr} \
        --service-cidr ${var.service_cidr} \
        --pod-cidr ${var.pod_cidr} \
        --host-prefix ${var.host_prefix} \
        --yes

      echo ">>> Creating Operator Roles"
      rosa create operator-roles --cluster ${var.cluster_name} --mode auto --yes

      echo ">>> Creating OIDC Provider"
      rosa create oidc-provider --cluster ${var.cluster_name} --mode auto --yes
    EOT
  }

  # Destroy cluster and IAM (use env vars instead of var.* directly)
  provisioner "local-exec" {
    when    = destroy
    command = <<EOT
      echo ">>> Deleting ROSA cluster"
      rosa delete cluster --cluster $CLUSTER_NAME --yes --watch

      echo ">>> Deleting Operator Roles"
      rosa delete operator-roles --prefix $ROLE_PREFIX --mode auto --yes

      echo ">>> Deleting OIDC Provider"
      rosa delete oidc-provider --cluster $CLUSTER_NAME --mode auto --yes
    EOT

    environment = {
      CLUSTER_NAME = var.cluster_name
      ROLE_PREFIX  = var.role_prefix
    }
  }
}
