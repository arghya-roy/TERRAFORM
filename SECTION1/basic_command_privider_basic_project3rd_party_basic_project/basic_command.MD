```
terraform init   // it install provider plugin
terraform plan
terraform apply
terraform destroy
terraform destroy -target aws_instance.myec2
terraform fmt  // it make a good format for code
terraform refresh // it update the statefile according to current state but when we use terraform plan then terraform fmt automatically run
```
