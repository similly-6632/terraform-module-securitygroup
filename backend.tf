terraform {
    backend {
        bucket = "srmlab-terraform-state"
        key = "/terraform-module-securitygroup/terraform.state"
        region = "us-east-1"
        dynammodb_table = "srmlab-terraform-state-locks"
        encrypt = true
    }
}