
resource "aws_vpc" "main" {
	cidr_block = "${var.vpc_cidr}"
	instance_tenancy = "${var.tenancy}"
	
	tags {
	 name = "vpc_main"
}

	}


resource "aws_subnet" "main" {
	count = "${length(data.aws_availability_zones.ds.names)}"
	availability_zone = "${element(data.aws_availability_zones.ds.names,count.index)}"
	
	vpc_id = "${var.vpc_id}"
	cidr_block = "${element(var.subnet_cidr,count.index)}"

	tags {
	   name = "subnet_main"
	}
}
 output "vpc_id" {
	value = "${aws_vpc.main.*.id}"
}
 output "subnet_id" {
	value = "${aws_subnet.main.*.id}"
}
