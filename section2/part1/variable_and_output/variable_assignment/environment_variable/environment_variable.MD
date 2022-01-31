### Default File used in Demo

```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro
}
```
### variables.tf
```sh
variable "instancetype" {
  default = "t2.micro"
}
```
### Environment Variables:

### when terraform installed in Windows :
```sh
setx TF_VAR_instancetype t2.large
``` 
### when terraform installed in Linux / MAC :
```sh
export TF_VAR_instancetype="t2.nano"
echo $TF_VAR
```
