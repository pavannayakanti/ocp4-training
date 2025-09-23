resource "null_resource" "rosa_cluster" {
  # Triggers (used for destroy-time provisioners)
  triggers = {
    cluster_name = var.cluster_name
    role_prefix  = var.role_prefix
  }

  # Create cluster + operator roles + OIDC
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

  # Destroy cluster + IAM
  provisioner "local-exec" {
    when    = destroy
    command = <<EOT
      echo ">>> Deleting ROSA cluster"
      rosa delete cluster --cluster ${self.triggers.cluster_name} --yes --watch

      echo ">>> Deleting Operator Roles"
      rosa delete operator-roles --prefix ${self.triggers.role_prefix} --mode auto --yes

      echo ">>> Deleting OIDC Provider"
      rosa delete oidc-provider --cluster ${self.triggers.cluster_name} --mode auto --yes
    EOT
  }
}

# Fetch cluster info safely
data "external" "cluster_info" {
  program = [
    "bash", "-c", <<EOT
      rosa describe cluster --cluster ${var.cluster_name} -o json 2>/dev/null \
      | jq -r '{
          api_url: (.api.url // ""),
          console_url: (.console.url // "")
        }'
    EOT
  ]
}

# Fetch admin credentials safely
data "external" "cluster_creds" {
  program = [
    "bash", "-c", <<EOT
      rosa describe admin --cluster ${var.cluster_name} -o json 2>/dev/null \
      | jq -r '{
          username: (.username // ""),
          password: (.password // "")
        }'
    EOT
  ]
}

# Outputs
output "rosa_cluster_api_url" {
  value       = data.external.cluster_info.result.api_url
  description = "The API URL of the ROSA cluster"
}

output "rosa_cluster_console_url" {
  value       = data.external.cluster_info.result.console_url
  description = "The Web Console URL of the ROSA cluster"
}

output "rosa_cluster_admin_username" {
  value       = data.external.cluster_creds.result.username
  description = "The cluster-admin username"
}

output "rosa_cluster_admin_password" {
  value       = data.external.cluster_creds.result.password
  description = "The cluster-admin password"
  sensitive   = true
}
