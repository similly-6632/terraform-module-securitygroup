variable "ingress_rules" {
  description = "Security group ingress rules"
}
variable "egress_rules" {
  description = "Security group egress rules"
  default = [
    {
      description = "Default egress"
      from_port   = 0
      to_port     = 0
      protocol    = -1
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
variable "sg_name" {

}
variable "sg_description" {

}
variable "vpc_id" {

}
variable "environment" {

}