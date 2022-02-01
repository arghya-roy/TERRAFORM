### writing access key and secret key in provider.tf is not a good practice. we should use aws cli and input our key there and in the provider.tf we will use only regions.
### as a example- 
```
### eip.tf
```sh
resource "aws_eip" "myeip" {
  vpc = "true"
}
```
### providers.tf

```sh
provider "aws" {
  region     =  "us-west-1"
}
```
```
