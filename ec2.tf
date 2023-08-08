module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          =  local.instance_type
  ami                    =  local.ami_id
  key_name               =  local.key_name
  vpc_security_group_ids =  [aws_security_group.ec2_sg.id]
  subnet_id              =  module.vpc.public_subnets[0]
  associate_public_ip_address = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}