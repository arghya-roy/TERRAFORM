
# this code is not tested.
### we need to create a s3 bucket and allow versioning. and create a dynamodb table with lockid.
 ### dynamodb - create table - table name - any name & primary key = LockID
### s3 - bucket-name - enable version                           
```
terraform {
  backend "s3" {
    bucket = "bucket_name"
    key    = "name.tfstate"
    region = "us-west-1"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
    dynamodb_table = "table name"
  }
}
provider "aws" {
  region = "us-west-1"
  access_key = "AKIAJATTFOOSWG4Y2YEA"
  secret_key = "drvoKCCmQ+CZ/oIy2maGYV/q3S81F8iIDuyK41n5"
}
resource "aws_eip" "myeip" {
  vpc = "true"
}
```
