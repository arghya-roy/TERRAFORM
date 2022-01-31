count = var.istest == true ? 3 : 0 
condition means if the value of istest variable in terraform.tfvars is true then 3 resourses will be created, if false then 0 resourses created
count = var.istest == false ? 3 : 0
condition means if the value of istest variable in terraform.tfvars is false then 3 resourses will be created, if false then 0 resourses created

### conditional.tf

```sh

provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

variable "istest" {}

resource "aws_instance" "dev" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
   count = var.istest == true ? 3 : 0   // if var.istest == true then 3 ec2 in dev will be created
}

resource "aws_instance" "prod" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.large"
   count = var.istest == false ? 1 : 0  // if var.istest == false then 3 ec2 in production will be created
}
```

### terraform.tfvars

```sh
istest = false
```
here we take a example with istest == false, but we can use any other value
