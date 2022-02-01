### Terraform Final Modified Configuration File
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = lookup(var.instance_type,terraform.workspace) // look down
}

variable "instance_type" {
  type = "map"

  default = {
    default = "t2.nano"
    dev     = "t2.micro"
    prd     = "t2.large"
  }
}
```
#### lookup(var.instance_type,terraform.workspace)
#### lookup(map, key, default)
terraform.workspace takes the current workspace name, so now value of workspace is key. accoring to 
the key it matches the value from var.instance_type
