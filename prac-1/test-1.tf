provider "aws" {
	region = "us-west-2"
}

resource "aws_instance" "app" {
	ami = "ami-076e276d85f524150"
	instance_type = "t2.micro"
#	security_group ="[Terraform]"
    tags {
	name = "Main"
	location = "Bangalore"
         }
}
