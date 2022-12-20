provider "aws" {
  region = var.region
}

module "security_group" {
  source = "./modules/security-group"

  sg_name        = "http only"
  sg_description = "http ingress"
  vpc_id         = var.vpc_id

  ingress_rules = [
    {
      description = "http"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    },
        {
      description = "https"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    }
  ]

  egress_rules = [
    {
      description = "All Egress"
      from_port   = 0
      to_port     = 0
      protocol    = -1
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]

  environment = "test"
}