

variable "project"{
  default = "roboshop"

}
variable "ami_id" {
  default = "ami-09c813fb71547fc4f"

}
variable "zone_id" {
  default = "Z02608513S6JB1R040UCJ"

}
variable "domain_name" {
  default = "saikdevops.fun"

}
variable "environment" {
  type = string
  

}
variable "instance_type" {
  type = string
  
}

variable "cidr_blocks" {
  type = list
  default = ["0.0.0.0/0"]
  
}
variable "ingress_from_port" {
  type = number
  default = 0

}
variable "ingress_to_port" {
  type = number
  default = 0

}
variable "ingress_protocol" {
  type = string
  default = "-1"

}
variable "egress_from_port" {
  type = number
  default = 0

}
variable "egress_to_port" {
  type = number
  default = 0

}
variable "egress_protocol" {
  type = string
  default = "-1"

}