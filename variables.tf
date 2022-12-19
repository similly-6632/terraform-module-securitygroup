variable "region" {
    description = "Region"
}
variable "cidr_blocks" {
    description = "APIPA CIDR Blocks"
    type = list(string)
    default = ["10.0.0.0/8", "172.16.0.0/12", "192.168.0.0/24"]
}