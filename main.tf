resource "null_resource" "rosa_cluster" {
  provisioner "local-exec" {
    command = <<EOT
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
    EOT
  }

  # Destroy cluster on terraform destroy
  provisioner "local-exec" {
    when    = destroy
    command = "rosa delete cluster --cluster ${var.cluster_name} --yes --watch"
  }
}
