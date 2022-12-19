provider "aws" {
  region  = var.region
}

module "security_group_http" {
  source = "./modules/security-group"

  sg_name        = "http only"
  sg_description = "http ingress"
  vpc_id         = "vpc-028c7d30ba4332766"

  ingress_rules = [
    {
      description = "http"
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    }
  ]

  # egress allowed by default

  environment = "test"
}

module "security_group_https" {
  source = "./modules/security-group"

  sg_name        = "https only"
  sg_description = "https ingress"
  vpc_id         = "vpc-028c7d30ba4332766"

  ingress_rules = [
    {
      description = "https"
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    }
  ]

  # egress allowed by default

  environment = "test"

}

module "security_group_octopus" {
  source = "./modules/security-group"

  sg_name        = "Octopus Deploy"
  sg_description = "Octopus Deploy"
  vpc_id         = "vpc-028c7d30ba4332766"


  ingress_rules = [
    {
      description = "http"
      from_port   = 10933
      to_port     = 10933
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    }
  ]

  # egress allowed by default

  environment = "test"
}

module "security_group_ssh" {
  source = "./modules/security-group"

  sg_name        = "SSH"
  sg_description = "SSH"
  vpc_id         = "vpc-028c7d30ba4332766"

  ingress_rules = [
    {
      description = "SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = var.cidr_blocks
    }
  ]

  # egress allowed by default

  environment = "test"
}

