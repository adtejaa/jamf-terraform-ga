terraform {
  required_providers {
    jamfpro = {
      source  = "deploymenttheory/jamfpro"
      version = "~> 0.31.0"
    }

    vault = {
      source  = "hashicorp/vault"
      version = "5.6.0"
    }
  }
}


terraform {
  backend "s3" {
    bucket         = "aws-ga-jamf-tf-state"
    key            = "jamf/ga/march2026/statefile/terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "jamf_lock_table"
    use_lockfile = true
    encrypt        = true
  }
}




provider "jamfpro" {
  jamfpro_instance_fqdn = var.jamfpro_instance_fqdn
  auth_method           = "basic"
  basic_auth_username   = var.jamfpro_basic_auth_username
  basic_auth_password   = var.jamfpro_basic_auth_password
}

