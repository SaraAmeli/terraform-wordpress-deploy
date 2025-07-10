# 🚀 Terraform WordPress Deployment (Level 1 Project)

This project automates the deployment of a WordPress site on AWS using Terraform, as part of the Level-1 Infrastructure-as-Code project.

---

## 📦 Project Features

- ✅ Single Availability Zone (Single AZ) deployment
- ✅ Custom VPC with public subnet
- ✅ EC2 instance with Amazon Linux 2
- ✅ User data script installs WordPress, PHP 8, and MariaDB locally
- ✅ SSH access secured via optional Bastion Host
- ✅ Infrastructure defined and deployed using Terraform (v1.5+)

---

## 📁 Project Structure

| File | Description |
|------|-------------|
| `main.tf` | Provider and version setup |
| `variables.tf` | Declares all input variables |
| `terraform.tfvars` | Contains actual values for variables |
| `vpc.tf` | Defines VPC, subnet, route table, and gateway |
| `security.tf` | Security groups for WordPress and Bastion Host |
| `ec2.tf` | EC2 instance for WordPress |
| `bastion.tf` | (Optional) Bastion Host for secure SSH access |
| `user_data.sh` | Shell script to install WordPress & MariaDB |
| `outputs.tf` | Displays public and private IPs after deploy |
| `.gitignore` | Ensures `.pem` and state files aren’t committed |

---

## 🔐 Security

- WordPress EC2 allows:
  - HTTP (port 80) from anywhere
  - SSH only from Bastion Host (if enabled)
- Bastion Host allows:
  - SSH (port 22) from your IP
- `.pem` file is **never committed**

---

## ⚙️ Prerequisites

- Terraform `>= 1.5.0`
- AWS CLI with valid credentials
- An SSH key pair (e.g., `labsuser.pem`)
- AWS IAM permissions for EC2, VPC, etc.

---

## 🚀 Usage

1. **Initialize Terraform**

   ```bash
   terraform init

