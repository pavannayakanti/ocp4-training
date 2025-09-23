cluster_name            = "iris-ocp4"
cluster_admin_password  = "@@Jan@01@2025@"

role_arn                = "arn:aws:iam::241533118255:role/ManagedOpenShift-Installer-Role"
support_role_arn        = "arn:aws:iam::241533118255:role/ManagedOpenShift-Support-Role"
controlplane_role_arn   = "arn:aws:iam::241533118255:role/ManagedOpenShift-ControlPlane-Role"
worker_role_arn         = "arn:aws:iam::241533118255:role/ManagedOpenShift-Worker-Role"

role_prefix             = "iris-training-ocp4-v9g3"
cluster_tags            = "iris-training:ocp4"
aws_region              = "us-east-1"
openshift_version       = "4.19.11"
compute_nodes           = 2
compute_machine_type     = "m5.xlarge"

machine_cidr            = "10.0.0.0/16"
service_cidr            = "172.30.0.0/16"
pod_cidr                = "10.128.0.0/14"
host_prefix             = 23
