cluster_name       = "iris-ocp4-for-npavan"
aws_account_id     = "241533118255"
aws_region         = "us-east-1"

role_arn              = "arn:aws:iam::241533118255:role/ManagedOpenShift-Installer-Role"
support_role_arn      = "arn:aws:iam::241533118255:role/ManagedOpenShift-Support-Role"
controlplane_role_arn = "arn:aws:iam::241533118255:role/ManagedOpenShift-ControlPlane-Role"
worker_role_arn       = "arn:aws:iam::241533118255:role/ManagedOpenShift-Worker-Role"

openshift_version  = "openshift-v4.19.11"
compute_nodes      = 2
compute_machine_type = "m5.xlarge"

machine_cidr       = "10.0.0.0/16"
service_cidr       = "172.30.0.0/16"
pod_cidr           = "10.128.0.0/14"
host_prefix        = 23
