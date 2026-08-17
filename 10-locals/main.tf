resource "aws_instance" "terraform_demo" {
    ami = data.aws_ami.joindevops.id
    instance_type = local.instance_type
    vpc_security_group_ids = [aws_security_group.allow_terraform.id] #list
# labels,metadata,info etc
 tags = {
  Name = local.name
 }
}

#It creates default vpc in case if we dont mention any
resource "aws_security_group" "allow_terraform" {
  name        = "${local.name}-common-1"
  description = "Allow TLS inbound traffic and all outbound traffic"

# outbound traffic
 egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1" #all traffic
    cidr_blocks      = ["0.0.0.0/0"]
  }
}