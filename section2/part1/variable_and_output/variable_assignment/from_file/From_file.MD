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
### override this default value using a different file
we create a ditterent file with fixed name terraform.tfvars and 
write the value there.
### terraform.tfvars
```sh
instancetype="t2.large"
```
now after using terraform apply it takes t2.large.
If we write that value in a file other than terraform.tfvar then use this in command line
```sh
terraform plan -var-file="file_name.tfvars"
```
