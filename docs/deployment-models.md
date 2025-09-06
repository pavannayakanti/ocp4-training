# OpenShift Deployment Models – Comparison

This document compares different OpenShift deployment models: Local (CRC), Dedicated, and Cloud Managed (ROSA/ARO).

---

## 🔹 Comparison Table

| Feature / Responsibility | **OpenShift Local (CRC)** | **OpenShift Dedicated (OSD)** | **ROSA / ARO (Cloud Managed OpenShift)** |
|--------------------------|---------------------------|--------------------------------|------------------------------------------|
| **Where it runs** | On your laptop (single VM, single node) | Red Hat managed on cloud (AWS/GCP) | Jointly managed: AWS+Red Hat (ROSA), Azure+Red Hat (ARO) |
| **Use case** | Learning, development, demos | Production workloads without customer infra overhead | Enterprise production with deep **cloud integration** |
| **Infrastructure (VMs, VPC, IAM, ELB)** | Provided by your laptop only | Provided by cloud (AWS/GCP), abstracted by Red Hat | Provided by cloud (AWS/Azure), integrated tightly with OpenShift |
| **Who manages infra** | You (your laptop resources) | Red Hat (full management) | Shared: Cloud provider manages infra (EC2, VPC, IAM, ELB); Red Hat manages OpenShift |
| **Scaling** | No scaling (single-node) | Multi-node clusters | Multi-node, auto-scaling supported |
| **Storage** | Local disk only | Cloud storage via CSI drivers | Cloud-native storage (EBS, Azure Disks, etc.) |
| **Networking** | Simulated on your laptop | Cloud networking (subnets, LBs) | Full VPC/VNet integration, LB (ELB/Azure LB), Security Groups |
| **IAM / Identity** | Local kubeadmin user | Red Hat SSO + cloud IAM limited | Full integration: AWS IAM → IRSA, Azure AD → RBAC |
| **High Availability** | ❌ No | ✅ Yes | ✅ Yes |
| **Cost** | Free (requires Red Hat Developer Subscription) | Paid (subscription to Red Hat) | Paid (cloud billing + Red Hat subscription) |
| **Best for** | Training, self-learning, offline labs | Production workloads when you want Red Hat to manage infra | Production workloads needing **enterprise-scale cloud-native integration** |

---

## ✅ Simplified Takeaway
- **CRC (Local)** → Great for **learning**, day 1–2 training, offline practice.  
- **OSD (Dedicated)** → Good for **production** when you don’t want to deal with infra.  
- **ROSA/ARO (Cloud-Managed)** → Best for **enterprise production** → integrates with **EC2, VPC, IAM, ELB** (AWS) or **VMs, VNet, AD, LB** (Azure).  
