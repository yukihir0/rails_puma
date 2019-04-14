resource "aws_security_group" "allow-ssh-security-group_terraform" {
  name = "allow-ssh-security-group_terraform"
  description = "allow ssh inbound traffic"
  vpc_id = "${aws_vpc.vpc_terraform.id}"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "allow-ssh-security-group_terraform"
  }
}

resource "aws_security_group" "allow-http-security-group_terraform" {
  name = "allow-http-security-group_terraform"
  description = "allow http inbound traffic"
  vpc_id = "${aws_vpc.vpc_terraform.id}"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags {
    Name = "allow-http-security-group_terraform"
  }
}
