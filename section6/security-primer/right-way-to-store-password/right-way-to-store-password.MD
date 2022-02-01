we need to add a text file with password outside the folder where git init used. because we dont want to add the password in repo.
although this password will be shown in terraform state file. so because of this we dont commit statefile and we add statefile in s3 / other backend.
### RDS Configuration File
```sh
provider "aws" {
  region  = "us-east-1"
  access_key = "YOUR-KEY"
  secret_key = "YOUR-KEY"


resource "aws_db_instance" "default" {
  allocated_storage    = 5
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "foo"
  password             = file("../rds_pass.txt") // here we have to give the path of text file where pw saved.
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot = "true"
}
```
### rds_pass.txt

Please store this file outside of the folder of rds.tf 
```sh
mysecretpassword505
```
