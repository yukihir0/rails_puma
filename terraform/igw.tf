resource "aws_internet_gateway" "igw_terraform" {
  vpc_id = "${aws_vpc.vpc_terraform.id}"
  tags {
    Name = "igw_terraform"
  }
}
