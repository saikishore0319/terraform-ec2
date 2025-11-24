module "ec2_complete_sg" {
  source = "terraform-aws-modules/security-group/aws"
  name = "tf-security-group"
  vpc_id = module.vpc.vpc_id

  ingress_rules = [ 
    "http-80-tcp",
    "ssh-tcp"
   ]
   ingress_cidr_blocks = ["0.0.0.0/0"]
}