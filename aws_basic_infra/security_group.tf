
data "aws_security_group" "default" {
  name = "default"
}

resource "aws_security_group" "ssh" {
  name = "ssh_all"
  description = "Allow SSH port from all"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
