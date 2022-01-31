### main.tf

```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = var.instancetype
}
```
### variables.tf
```sh
variable "instancetype" {
  default = "t2.micro"
}
```
after use terraform apply it take the default vale t2.micro
but we can override that using commandline or from a different file.
### override this default value using command line
```sh
terraform plan -var="instancetype=t2.small"
```
