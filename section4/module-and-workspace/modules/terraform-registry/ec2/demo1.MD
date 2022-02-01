### from my current location > folder modules > folder ec2 > main.tf
https://registry.terraform.io/modules/terraform-aws-modules/ec2-instance/aws/latest
```
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  # version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-03fa4afc89e4a8a09"
  instance_type          = "t2.micro"
  # key_name               = "user1"
  # monitoring             = true
  # vpc_security_group_ids = ["sg-12345678"]
  # subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
```

in my current path
### main.tf
```
module "ec2module" {
  source = "./modules/ec2"
}
```
it creates a ec2.
