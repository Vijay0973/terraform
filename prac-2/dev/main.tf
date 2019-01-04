 
provider "aws" {
	region = "us-west-2"
}

module "my_vpc" {
	source = "../modules/vpc"
	vpc_cidr = "192.168.0.0/16"
	tenancy = "default"
	vpc_id = "${module.my_vpc.vpc_id}"
	subnet_cidr = "192.168.1.0/24"
}

module "my_ec2" {
	source = "../modules/ec2"
	ec2_count =2
	ami_id ="ami-076e276d85f524150"
	instance_type ="t2.micro"
	subnet_id = "${module.my_vpc.subnet_id}"
}
