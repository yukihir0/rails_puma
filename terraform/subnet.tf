resource "aws_subnet" "public-subnet-1a_terraform" {
  vpc_id = "${aws_vpc.vpc_terraform.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-1a"
  tags {
    Name = "public-subnet-1a_terraform"
  }
}
 
