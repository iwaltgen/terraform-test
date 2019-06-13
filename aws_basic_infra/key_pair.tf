
resource "aws_key_pair" "webadmin" {
  key_name = "webadmin"
  public_key = "${file("~/.ssh/webadmin.pub")}"
}
