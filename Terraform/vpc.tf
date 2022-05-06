#create vpc
resource "aws_vpc" "prod-vpc" {
    cidr_block = "172.31.0.0/16"
    enable_dns_support = "true" #gives you an internal domain name
    enable_dns_hostnames = "true" #gives you an internal host name
    enable_classiclink = "false"
    instance_tenancy = "default"

    tags = {
       Name = "sharan-vpc"
    }
}


#Public Subnet
resource "aws_subnet" "prod-subnet-public-1a" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.31.0.0/20"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-southeast-1a"
    tags = {
        Name = "sharan-subnet-public-1"
    }
}
resource "aws_subnet" "prod-subnet-public-1b" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.31.16.0/20"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-southeast-1b"
    tags = {
        Name = "sharan-subnet-public-2"
    }
}
resource "aws_subnet" "prod-subnet-public-1c" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.31.32.0/20"
    map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-southeast-1c"
    tags = {
        Name = "prod-subnet-public-3"
    }
}

resource "aws_subnet" "prod-subnet-public-1a" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.31.0.0/20"
  #  map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-southeast-1a"
    tags = {
        Name = "sharan-subnet-private-1"
    }
}
resource "aws_subnet" "prod-subnet-public-1b" {
    vpc_id = "${aws_vpc.prod-vpc.id}"
    cidr_block = "172.31.16.0/20"
 #   map_public_ip_on_launch = "true" //it makes this a public subnet
    availability_zone = "ap-southeast-1b"
    tags = {
        Name = "sharan-subnet-private-2"
    }
}