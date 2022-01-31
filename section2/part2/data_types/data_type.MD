### ec2_datatype.tf

```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_iam_user" "lb" {
  name = var.usernumber   // in variable file type = number is decleared. so when we type username in terraform.tfvars then it must be a number
  path = "/system/"
}

```
### elb.tf

Documentation:  https://www.terraform.io/docs/providers/aws/r/elb.html

Final Code:

```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_elb" "bar" {
  name               = var.elb_name   // in variable file type = string is decleared. so when we type username in terraform.tfvars then it must be a string.
  availability_zones = var.az     // in variable file type = list is decleared. so when we type username in terraform.tfvars then it must be a list.

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  cross_zone_load_balancing   = true
  idle_timeout                = var.timeout   // in variable file type = number is decleared. so when we type username in terraform.tfvars then it must be a number
  connection_draining         = true
  connection_draining_timeout = var.timeout   // in variable file type = number is decleared. so when we type username in terraform.tfvars then it must be a number

  tags = {
    Name = "foobar-terraform-elb"
  }
}
```
### variables.tf

```sh

variable "usernumber" {
  type = number
}

variable "elb_name" {
  type = string
}

variable "az" {
  type = list
}

variable "timeout" {
  type = number
}
```
### terraform.tfvars
```sh
elb_name="myelb"
timeout="400"
az=["us-west-1a","us-west-1b"]
```
