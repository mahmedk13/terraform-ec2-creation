resource "aws_security_group" "ec2_sg" {
    
    name="allowssh"
    vpc_id = module.vpc.vpc_id

    ingress{
        cidr_blocks =   [local.anywhere]
        from_port   =   local.from_port
        to_port     =   local.to_port 
        protocol    =   local.protocol

    }

      tags={
        "Name"="allowssh"
    }
}