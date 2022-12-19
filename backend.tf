terraform {
    backend "s3" {
        bucket = "srmlab-terraform-state"
        key = "/terraform-module-securitygroup/terraform.state"
        region = "us-east-1"
        dynamodb_table = "srmlab-terraform-state-locks"
        encrypt = true
    }
}