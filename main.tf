resource "aws_subnet" "this" {
  vpc_id                   = var.vpc_id
  cidr_block               = var.cidr_block
  availability_zone        = var.availability_zone
  map_public_ip_on_launch  = var.map_public_ip_on_launch
  tags = {
    Name = var.name
  }
}
variable "vpc_id" {
  description = "The VPC ID to associate this subnet with."
  type        = string
}
variable "cidr_block" {
  description = "The CIDR block for the subnet."
  type        = string
}
variable "availability_zone" {
  description = "The availability zone where the subnet will be created."
  type        = string
}
variable "map_public_ip_on_launch" {
  description = "Whether to map public IP addresses on instances launched in this subnet."
  type        = bool
  default     = false
}
variable "name" {
  description = "The name of the subnet."
  type        = string
}
output "subnet_id" {
  value = aws_subnet.this.id
}