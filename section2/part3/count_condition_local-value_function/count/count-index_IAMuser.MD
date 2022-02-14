```
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

variable "elb_names" {
  type = list
  default = ["dev-loadbalancer", "stage-loadbalanacer","prod-loadbalancer"]
}

resource "aws_iam_user" "lb" {
  name = var.elb_names[count.index]
  count = length(var.elb_names)
  path = "/system/"
}
```
it makes 3 user name 0f dev-loadbalancer,  stage-loadbalanacer, prod-loadbalancer
