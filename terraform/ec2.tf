resource "aws_instance" "web01" {
  ami = "ami-0f9ae750e8274075b"
  instance_type = "t2.micro"
  key_name = "rails_puma"
  vpc_security_group_ids = [
    "${aws_security_group.allow-ssh-security-group_terraform.id}",
    "${aws_security_group.allow-http-security-group_terraform.id}"
  ]
  subnet_id = "${aws_subnet.public-subnet-1a_terraform.id}"
  associate_public_ip_address = "true"
  tags {
      Name = "web01"
  }
}
