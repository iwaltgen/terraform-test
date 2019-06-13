
resource "aws_instance" "web" {
  ami = "ami-08ab3f7e72215fe91"
  instance_type = "t2.micro"
  key_name = "${aws_key_pair.webadmin.key_name}"
  vpc_security_group_ids = [
    "${aws_security_group.ssh.id}",
    "${data.aws_security_group.default.id}"
  ]
}

resource "aws_db_instance" "web_db" {
  allocated_storage = 8
  engine = "mysql"
  engine_version = "8.0.15"
  instance_class = "db.t2.micro"
  username = "admin"
  password = "adminsecret"
  skip_final_snapshot = true
}
