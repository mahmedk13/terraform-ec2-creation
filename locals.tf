locals {

        az_a            =   format("%sa", var.region)
        az_b            =   format("%sb", var.region)
        az_c            =   format("%sc", var.region)
        from_port       =   22
        to_port         =   22
        anywhere        =   "0.0.0.0/22"
        protocol        =   "tcp"
        key_name        =   "mykey"
        ami_id          =   "ami-0f5ee92e2d63afc18"
        instance_type   =   "t2.micro"

}