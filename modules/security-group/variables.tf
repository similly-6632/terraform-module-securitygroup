variable "ingress_rules" {
  description = "Security Group ingress rules"
}
variable "egress_rules" {
  description = "Security Group egress rules"
}
variable "sg_name" {
  description = "Name for the Security Group"
}
variable "sg_description" {
  description = "Description for the Security Group"
}
variable "vpc_id" {
  description = "VPC ID for where the Security Group will be created"
}
variable "environment" {
  description = "Environment tag assigned to the Security Group"
}