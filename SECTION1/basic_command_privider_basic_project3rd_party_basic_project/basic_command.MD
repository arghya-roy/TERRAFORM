```
terraform init   // it install provider plugin
terraform plan
terraform apply
terraform destroy
terraform destroy -target aws_instance.myec2
terraform fmt  // it make a good format for code
terraform refresh // it update the statefile according to current state but when we use terraform plan then terraform fmt automatically run
terraform validate // it will show that where is the error
terraform taint aws_instance.myec2 // it change the state of resourses in state files from running to tainted (not in aws )
                                   // after that when we will use terraform apply then it destroy that resourse and recreate it.
```
debugging - (linux) 
```
export TF_LOG=TRACE
terraform plan // it will show all step by step process in more details
```
   if we want to store that data in a file then-
```
export TF_LOG_PATH=/tmp/crash.log
terraform plan // /tmp/crash.log file will show all step by step process in more details.
```
---
---
suppose we make a tf file where instance type is t2.micro. then we save the plan file in a file called demopath. after that we change the instance type to t2.small and apply it.
so now if you want to apply that tf where instance type is t2.micro, then we just run this command - 
```
terraform apply file/path/with/name
```

### plan-file.tf
```sh
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}


resource "aws_instance" "myec2" {
   ami = "ami-082b5a644766e0e6f"
   instance_type = "t2.micro"
}
```
### Commands Used to save plan as file:
```sh
terraform plan -out=demopath  // this will be a binary file, named demopath. after running this, file will be created automatically.

```
### Commands Used to apply the saved file:
```
terraform apply demopath
```
---
