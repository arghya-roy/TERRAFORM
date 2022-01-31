This is not tested, but may be this is correct
```
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

variable "ami_names" {
  type = list
  default = ["ami1", "ami2","ami3"]
}
resource "aws_instance" "instance-1" {
   ami = "var.ami_names[count.index]"
   instance_type = "t2.micro"
   count = 3
}
```
