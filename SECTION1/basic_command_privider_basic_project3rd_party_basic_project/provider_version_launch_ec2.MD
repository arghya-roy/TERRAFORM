Provider version- 
               when we declerare any provider in tf file and run terraform init 
then the latest version of plugin for that particular provider will be installed.
but if we need to use a particular version then we declerare that. 
declerare version is a good practice beacause a node which is running on a version 
that may not run on a different version.

```
provider "aws" {
  region     = "us-west-2"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
  version    = ">=2.10,<=2.30"
}

resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```
we can use version in following ways
```
version    = "2.7" // install 2.7
version    = ">= 2.8" // install 2.8 or more than that
version    = "<= 2.8" // install 2.8 or less than that
version    = ">=2.10,<=2.30" // more than 2.10 and less than 2.30
version    = "~2.0" // any version in 2.X range
```
