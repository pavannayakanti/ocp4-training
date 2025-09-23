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

rosa_token = "eyJhbGciOiJIUzUxMiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICI0NzQzYTkzMC03YmJiLTRkZGQtOTgzMS00ODcxNGRlZDc0YjUifQ.eyJpYXQiOjE3NTg2Mjc5ODIsImp0aSI6ImZkZTM3NDVlLTI3OGEtNGI5OC05MDdhLTk2MzY1ZWFiNDdkMiIsImlzcyI6Imh0dHBzOi8vc3NvLnJlZGhhdC5jb20vYXV0aC9yZWFsbXMvcmVkaGF0LWV4dGVybmFsIiwiYXVkIjoiaHR0cHM6Ly9zc28ucmVkaGF0LmNvbS9hdXRoL3JlYWxtcy9yZWRoYXQtZXh0ZXJuYWwiLCJzdWIiOiJmOjUyOGQ3NmZmLWY3MDgtNDNlZC04Y2Q1LWZlMTZmNGZlMGNlNjpwYXZhbjEzMDk4MEBnbWFpbC5jb20iLCJ0eXAiOiJPZmZsaW5lIiwiYXpwIjoiY2xvdWQtc2VydmljZXMiLCJub25jZSI6IjFiZjFjY2IxLWZkYmUtNGVlOC05OTFhLWI1ZWUxYjI3M2VlMSIsInNpZCI6IjVmNjU2ZjdjLTFkMjEtNDY5My04MWRkLTM0N2IyZWM1OTZkYyIsInNjb3BlIjoib3BlbmlkIGJhc2ljIGFwaS5pYW0uc2VydmljZV9hY2NvdW50cyByb2xlcyB3ZWItb3JpZ2lucyBjbGllbnRfdHlwZS5wcmVfa2MyNSBvZmZsaW5lX2FjY2VzcyJ9.Elzs2gBN9WcLY5CB10SkLr1VovTOgBGpTXCnhW6lVLVLuaqNPh924yMXeFJ4hit9dRV14ctYgH1t5tLlEX5FJg"
