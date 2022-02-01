### from my current location > folder modules > folder ec2 > main.tf
```
resource "aws_instance" "myec2" {
   ami = "ami-03fa4afc89e4a8a09"
   instance_type = var.instance_type
}
variable "instance_type" {
  default = "t2.micro"
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
