# 🚀 Terraform on Azure: Provision a Linux VM

This isn’t just a Terraform lab — it’s the power of **Infrastructure as Code (IaC)** in action.  
With a few lines of HCL and one `terraform apply`, I can bring an entire Azure environment to life:

- Resource Group  
- Virtual Network + Subnet  
- Network Security Group with secure rules  
- Public IP + NIC  
- Storage Account for boot diagnostics  
- Ubuntu Linux Virtual Machine with SSH access  

💡 **Why it matters**:  
I learned how to transform manual, repetitive clicks on Azure Portal into reproducible, automated, and auditable code. This means faster deployments, fewer errors, and infrastructure that grows as projects scale.  

## Prerequisites
- Azure subscription
- Terraform installed
- Azure CLI (`az login`)
- macOS/Linux/WSL

## Quick Start
```bash
az login
az account set --subscription "<YOUR_SUBSCRIPTION_ID>"

terraform init
terraform fmt
terraform validate
terraform plan
terraform apply --auto-approve

---
🌐 [LinkedIn Post](www.linkedin.com/in/shouq-bin-daws) 
