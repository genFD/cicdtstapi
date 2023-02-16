# In fact, a Bastion host also known as a Jump Box is a particular purpose computer on a network that acts as a proxy server and allows the client machines to connect to the remote server. The Bastion hosts are used in cloud environments as a server to provide access to a private network from an external network such as the Internet.

data "aws_ami" "amazon_linux" {
  most_recent = true
  filter {
    name   = "name"
              values = ["amzn2-ami-hvm-2.0.*-x86_64-gp2"]
  }
  owners = ["amazon"]
}

resource    "   aws_instance"      "bastion" {
  ami = data.aws_ami.amazon_linux.id
  instance_type = "t2.micro"

  tags = {
    Name = "    ${local.prefix}-bastion"
  }
}

