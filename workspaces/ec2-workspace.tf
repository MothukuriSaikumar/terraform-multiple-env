resource "aws_instance" "terraform1" {
  ami                    = var.ami_id
  instance_type          = lookup(var.instance_type, terraform.workspace)
  vpc_security_group_ids = [aws_security_group.allow_all.id]

tags = merge(
    local.common_tags,
    {
      Name = "${local.common_name}-workspace"
    }
  )
}
 


resource "aws_security_group" "allow_all" {
  # ... other configuration ...

  name = "${local.common_name}-workspace"

  egress {
    from_port        = 0 # from and to port 0 means all ports
    to_port          = 0
    protocol         = "-1" # means all protocols 
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = merge (
    local.common_tags,{
       
       Name = "${local.common_name}-workspace",
       }
  )

  }

