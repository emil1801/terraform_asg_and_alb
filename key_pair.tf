resource "aws_key_pair" "asg_key_pair" {
  key_name   = "asg_key_pair"
  public_key = file("~/.ssh/id_rsa.pub")
}

