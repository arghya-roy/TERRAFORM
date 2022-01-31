

### functions.tf

```sh
provider "aws" {
  region     = var.region
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

locals {
  time = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp()) // timestamp is a function which give the time. if we want to format that time according to us then we use formatdate                                                             // functiom
}

variable "region" {
  default = "ap-south-1"
}

variable "tags" {
  type = list
  default = ["firstec2","secondec2"]
}

variable "ami" {
  type = map
  default = {
    "us-east-1" = "ami-0323c3dd2da7fb37d"
    "us-west-2" = "ami-0d6621c01e8c2de2c"
    "ap-south-1" = "ami-0470e33cd681b2476"
  }
}

resource "aws_key_pair" "loginkey" {
  key_name   = "login-key"
  public_key = file("${path.module}/id_rsa.pub")  // it reads the file and put the content in public_key
}

resource "aws_instance" "app-dev" {
   ami = lookup(var.ami,var.region)    // lookup is a function. At first it pickup the region name and then according to the region name it pick up the ami.
   instance_type = "t2.micro"
   key_name = aws_key_pair.loginkey.key_name
   count = 2

   tags = {
     Name = element(var.tags,count.index) // element is also a function. it takes the default values and use them as tag in ec2 one by one( in first ec2 name = firstec2, in                                               // second ec2 name = secondec2 )
   }
}


output "timestamp" {
  value = local.time
}
```
### The id_rsa.pub file that we have used within the video
```sh
https://github.com/zealvora/terraform-beginner-to-advanced-resource/blob/master/section04/id_rsa.pub
```
