# OpenShift 5 Training Plan – Local vs Cloud Usage

This document maps where **Local Sandbox (CRC/OpenShift Local)** and **Cloud Integration (ROSA/ARO)** fit into the 5-day training.

---

## 📅 5-Day Training Plan

### **Day 1 – Getting Started (Local Sandbox)**
- **Setup**: Red Hat account + CRC installation.  
- **Hands-on**:  
  - Login to OpenShift Console  
  - Explore projects, users  
  - Deploy a sample app (nginx)  
- ✅ **Why local?**  
  - Every student can install on their laptop.  
  - No dependency on internet/cloud resources.  
  - Good for individual experimentation.

---

### **Day 2 – Core Concepts (Local Sandbox)**
- **Topics**:  
  - Builds, BuildConfigs, ImageStreams  
  - Services, Routes, and Networking basics  
  - ConfigMaps, Secrets, RBAC fundamentals  
- **Hands-on**: Deploy multi-service app in CRC.  
- ✅ **Why local?**  
  - Reinforces fundamentals in a safe, lightweight environment.  
  - Easy to reset and re-run labs.  

---

### **Day 3 – Advanced Features (Transition to Cloud)**
- **Topics**:  
  - Storage & Persistent Volumes  
  - Security (RBAC, Policies, SCCs)  
  - Resource limits & quotas  
- **Hands-on**:  
  - Storage on CRC (limited demo)  
  - Compare with **cloud storage integration** (EBS in AWS, Managed Disks in Azure).  
- ✅ **Why mix local + cloud?**  
  - CRC shows the basics, but cloud shows *real storage integration*.  
  - Start highlighting why enterprises go cloud.

---

### **Day 4 – Cloud-Native OpenShift (ROSA/ARO)**
- **Topics**:  
  - Multi-node scheduling, HA  
  - Networking between worker nodes  
  - Cloud-native integration (AWS IAM → IRSA, Azure AD)  
- **Hands-on** (Cloud cluster):  
  - Deploy an app and scale replicas across nodes  
  - Use Load Balancer service → access app externally  
  - Map IAM/AD integration for secure access  
- ✅ **Why cloud?**  
  - CRC can’t do multi-node or HA.  
  - Learners see how OpenShift behaves in *real-world infra*.  

---

### **Day 5 – Production & Security (ROSA/ARO)**
- **Topics**:  
  - Observability (CloudWatch, Azure Monitor, Logging)  
  - CI/CD with OpenShift Pipelines (Tekton)  
  - Production security best practices (RBAC, API server visibility, network policies)  
- **Hands-on** (Cloud cluster):  
  - Create a pipeline to deploy a sample app.  
  - Apply a NetworkPolicy across namespaces.  
  - Discuss enterprise-grade deployment patterns.  
- ✅ **Why cloud?**  
  - Production-grade features (pipelines, policies, logging) make sense only in multi-node HA clusters.  

---

## 🎯 Summary
- **Local (CRC / Sandbox)** = Days 1–2 → *Fundamentals, safe learning, individual labs*.  
- **Hybrid (Local + Cloud)** = Day 3 → *Show where cloud differs (storage, scalability)*.  
- **Cloud (ROSA/ARO)** = Days 4–5 → *Production-grade features, enterprise scenarios*.  
