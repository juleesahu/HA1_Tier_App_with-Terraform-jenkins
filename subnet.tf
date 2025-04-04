resource "aws_subnet" "public_subnet_1" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "us-east-1a"
    tags = {
      Name = "PublicSubnet1"
    }
}

resource "aws_subnet" "public_subnet_2" {
    vpc_id = aws_vpc.main_vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "us-east-1b"
    tags = {
      Name = "PublicSubnet2"
    }
}