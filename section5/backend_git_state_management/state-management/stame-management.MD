```sh
provider "aws" {
  region     = "us-west-2"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
}

resource "aws_instance" "myec2" {
  ami           = "ami-082b5a644766e0e6f"
  instance_type = "t2.micro"
}

resource "aws_iam_user" "lb" {
  name = "loadbalancer"
  path = "/system/"
}

terraform {
  backend "s3" {
    bucket = "kplabs-remote-backends"
    key    = "demo.tfstate"
    region = "us-east-1"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
  }
}
```

### State Management Commands:

#### List the Resource with State File:
```sh
terraform state list   // to show all resourses (only name ) statefile has.
```
#### Rename Resource within Terraform State
1. Change the local name of EC2 resource from webapp to myec2. 
2. Run terraform plan to see the changes. It should destroy and recreate the EC2 instance.
3. to avoid create and destroy Change the local name of EC2 within the terraform state file with following command:

```sh
terraform state mv aws_instance.myec2 aws_instance.webapp
```
#### Pull Current State file
```sh
terraform state pull  // it shows the statefile
```
#### Remove Items from State file
```sh
terraform state rm aws_instance.myec2  // it removes resourse only from statefile ( now we cant control that from tf ) not from aws.
```
#### Show Attributes of Resource from state file
```sh
terraform state show aws_iam_user.lb  // it shows content of a single resources from statefile.
```

