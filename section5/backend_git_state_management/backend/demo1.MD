

### we need to create a s3 bucket and allow versioning. and create a dynamodb table with lockid.
 ### dynamodb - create table - table name - any name & primary key = LockID
### s3 - bucket-name - enable version                           
```
terraform {
  backend "s3" {
    bucket = "bucket_name"
    key    = "name.tfstate"
    region = "ap-south-1"
    access_key = "YOUR-ACCESS-KEY"
    secret_key = "YOUR-SECRET-KEY"
    dynamodb_table = "table name"
  }
}
provider "aws" {
  region = "ap-south-1"
}
resource "aws_eip" "myeip" {
  vpc = "true"
}
```
