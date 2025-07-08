# Sample-Terraform-integration
Integrate a sample Terraform template in jenkins.


Install Terraform on Amazon Linux 2
teps:
Copy
Edit
# 1. Update system packages
sudo yum update -y

# 2. Install required packages
sudo yum install -y yum-utils unzip curl

# 3. Add HashiCorp repo
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# 4. Install Terraform
sudo yum install -y terraform

# 5. Verify
terraform -version

✅ Install Git plugin & Pipeline plugin

✅ Add AWS credentials in Jenkins:

Go to: Manage Jenkins → Manage Credentials → Global

Add type: Secret text or Username + Password

ID: aws-access-key and aws-secret-key

✅ Create a Jenkins Job

Choose Pipeline type

Use pipeline script from SCM (or paste Jenkinsfile)
