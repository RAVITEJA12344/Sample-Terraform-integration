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


### ✅ Steps to Add AWS Credentials in Jenkins (Using Secret Text)

1. **Go to Jenkins Dashboard** → `Manage Jenkins`
2. Click on `Credentials` → Select `(global)` → Click `Add Credentials`
3. Choose **Kind**: `Secret text`

---

### 🔐 Credential 1: AWS Access Key ID

* **Kind**: Secret text
* **ID**: `aws-access-key-id`
* **Secret**: Your actual AWS Access Key ID
* **Description (optional)**: "AWS Access Key for Terraform"

---

### 🔐 Credential 2: AWS Secret Access Key

* **Kind**: Secret text
* **ID**: `aws-secret-access-key`
* **Secret**: Your actual AWS Secret Access Key
* **Description (optional)**: "AWS Secret Key for Terraform"

---

### ✅ Alternative (Optional): Use “Username with Password”

You can also use:

* **Kind**: `Username with password`
* **Username**: Your AWS Access Key ID
* **Password**: Your AWS Secret Access Key
* **ID**: `aws-credentials`

Then in your `Jenkinsfile`:

```groovy
environment {
  AWS_CREDS = credentials('aws-credentials')
}
```

And use:

```sh
export AWS_ACCESS_KEY_ID=$AWS_CREDS_USR
export AWS_SECRET_ACCESS_KEY=$AWS_CREDS_PSW
```

---

### ✅ In Jenkinsfile (If Using Secret Texts Separately):

```groovy
environment {
  AWS_ACCESS_KEY_ID     = credentials('aws-access-key-id')
  AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
}
```

Now Terraform and AWS CLI tools will pick these up from the environment during the pipeline run.

---

Would you like help validating if credentials are set correctly inside the Jenkins job?


