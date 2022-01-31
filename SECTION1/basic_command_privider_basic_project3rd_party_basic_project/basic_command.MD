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
<h1>debugging - (linux)</h1>
```
export TF_LOG=TRACE
terraform plan // it will show all step by step process in more details
```
if we want to store that data in a file then-
```
export TF_LOG_PATH=/tmp/crash.log
terraform plan // /tmp/crash.log file will show all step by step process in more details.
```
