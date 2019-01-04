 
variable "vpc_cidr" {
	default = "10.0.0.0/16"
}

variable "tenancy" {
	default = "dedicated"
}

variable "vpc_id" {}

variable "subnet_cidr" {
	type = "list"
	default = "10.0.1.0/24"
}
#variable "ds" {
#	type = "list"
#	default = ["us-east-1a","us-east-1c","us-east-1e"]
#}
data "aws_availability_zones" "ds" {}
