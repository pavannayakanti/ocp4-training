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

rosa_token = "{"auths":{"cloud.openshift.com":{"auth":"b3BlbnNoaWZ0LXJlbGVhc2UtZGV2K29jbV9hY2Nlc3NfMGIzYmM4YWNhNGZiNDI0MjliYTBkM2NlMmNkMTRiODA6QVoyVVlaNlU5TjJRT09WMkUwTDkzSEQ0RDQ2ODZIM0FEOVVPWUhaMkM3NU9DTFYxVldXNllUWUtERDJJVDZMMg==","email":"pavan130980@gmail.com"},"quay.io":{"auth":"b3BlbnNoaWZ0LXJlbGVhc2UtZGV2K29jbV9hY2Nlc3NfMGIzYmM4YWNhNGZiNDI0MjliYTBkM2NlMmNkMTRiODA6QVoyVVlaNlU5TjJRT09WMkUwTDkzSEQ0RDQ2ODZIM0FEOVVPWUhaMkM3NU9DTFYxVldXNllUWUtERDJJVDZMMg==","email":"pavan130980@gmail.com"},"registry.connect.redhat.com":{"auth":"fHVoYy1wb29sLTg1YzZjOWVmLWNhMTItNGMzZi1iM2I0LTZjZDExYzNjNzZjNjpleUpoYkdjaU9pSlNVelV4TWlKOS5leUp6ZFdJaU9pSmlaVFUxTURKa01tUTBPVEUwWkdFek9HVTROams1T1RBeVlXRmlNVFU0WkNKOS53aUo1NVJkNE1DMlNOSGtNVHcwWnRrbG5fNm0xZk5qMk1ucXk0akN2TXRtZkNkS3JTUGw4YVZYWlNtQ2h2SjlhenhqaGpyU1htcXVUeGxGZjlTS1JnXzJvLW5yeEU4VHFCbklhdTJrejIzcVdzSWZ4Nlk5OS1rRDJRMjFDMS03dXRvbm00S1dxOFR6S2VMZ3pnTTY4UEFJUTZIQllDR0g5VW5FTk51Rl9tYk5NVXdtZ0w3X3locDRDd0VGaS15cFpyMWxEN1luRUlWSHQ5cDEzdWpMVHNjckgzeE5hV2x4SkFxdDFSdU95YndhX3hxaGtWRHRGZGZQTTE2OWxCRFVtRXB5SGF0aWtlc05JWlJVV3JlRVJWdnUyaEdkbU5lRk5yX3d2N1I2Q3R3ODNGcFZzSkVfdmhfMkxySk5VMlZhRDdTWi0xX3RXOWNQUkVpSUhxUE1PcUphcTFmcXAzSFZ3VW51V0RpX0ozT1RyQVc2M2N1T3FBellzRnFJZWVPZ3VoWkZJS2NzVjZwUTJ4MS1RRVJYek41LVl1YWNOemk5MFI0OVlBc2x0aDBzQnhTX3FYaGI0dE1OOVdPSjR2WEVkaE01cTJGeksyMFF3LUdmUlVmRVh2eUVyTDRIZjBqd1F3ckRkRlYzOEJYc2NTc1pSY3NQM0xnVzhkaFhvVnZhYzNObTlPWGl0TXpYRmxTUHVPd3VfQ3JVQmlpWWtZV3l6ZjNodDBwNzlhT2pKTWl1S1dZX1ZTWm9hU1MzVjdnS1p3SXVUTFhpNlJteVQwMEg2Q0p4MWhBMUJzOWV5QlI1MmlFYnRGV3BYTmtYX0NpcW1NYUhXTWFvd2p0aFZFNDhWRG9jbTJ0eHhqUVlBbzc4aEVDV28xbkdRVU12eVZzbDVTUVhleGZYTUQ1QQ==","email":"pavan130980@gmail.com"},"registry.redhat.io":{"auth":"fHVoYy1wb29sLTg1YzZjOWVmLWNhMTItNGMzZi1iM2I0LTZjZDExYzNjNzZjNjpleUpoYkdjaU9pSlNVelV4TWlKOS5leUp6ZFdJaU9pSmlaVFUxTURKa01tUTBPVEUwWkdFek9HVTROams1T1RBeVlXRmlNVFU0WkNKOS53aUo1NVJkNE1DMlNOSGtNVHcwWnRrbG5fNm0xZk5qMk1ucXk0akN2TXRtZkNkS3JTUGw4YVZYWlNtQ2h2SjlhenhqaGpyU1htcXVUeGxGZjlTS1JnXzJvLW5yeEU4VHFCbklhdTJrejIzcVdzSWZ4Nlk5OS1rRDJRMjFDMS03dXRvbm00S1dxOFR6S2VMZ3pnTTY4UEFJUTZIQllDR0g5VW5FTk51Rl9tYk5NVXdtZ0w3X3locDRDd0VGaS15cFpyMWxEN1luRUlWSHQ5cDEzdWpMVHNjckgzeE5hV2x4SkFxdDFSdU95YndhX3hxaGtWRHRGZGZQTTE2OWxCRFVtRXB5SGF0aWtlc05JWlJVV3JlRVJWdnUyaEdkbU5lRk5yX3d2N1I2Q3R3ODNGcFZzSkVfdmhfMkxySk5VMlZhRDdTWi0xX3RXOWNQUkVpSUhxUE1PcUphcTFmcXAzSFZ3VW51V0RpX0ozT1RyQVc2M2N1T3FBellzRnFJZWVPZ3VoWkZJS2NzVjZwUTJ4MS1RRVJYek41LVl1YWNOemk5MFI0OVlBc2x0aDBzQnhTX3FYaGI0dE1OOVdPSjR2WEVkaE01cTJGeksyMFF3LUdmUlVmRVh2eUVyTDRIZjBqd1F3ckRkRlYzOEJYc2NTc1pSY3NQM0xnVzhkaFhvVnZhYzNObTlPWGl0TXpYRmxTUHVPd3VfQ3JVQmlpWWtZV3l6ZjNodDBwNzlhT2pKTWl1S1dZX1ZTWm9hU1MzVjdnS1p3SXVUTFhpNlJteVQwMEg2Q0p4MWhBMUJzOWV5QlI1MmlFYnRGV3BYTmtYX0NpcW1NYUhXTWFvd2p0aFZFNDhWRG9jbTJ0eHhqUVlBbzc4aEVDV28xbkdRVU12eVZzbDVTUVhleGZYTUQ1QQ==","email":"pavan130980@gmail.com"}}}"
