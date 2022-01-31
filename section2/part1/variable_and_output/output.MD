```
provider "aws" {
  region     = "us-west-2"
  access_key = "PUT-YOUR-ACCESS-KEY-HERE"
  secret_key = "PUT-YOUR-SECRET-KEY-HERE"
}

resource "aws_eip" "lb" {   // it will make a elatic ip named lb
  vpc      = true          // it attached that eip in a vpc
}

output "eip" {
  value = aws_eip.lb.public_ip      //it takes the public ip of the eip and show us as eip = <ip>
}

resource "aws_s3_bucket" "mys3" {
  bucket = "kplabs-attribute-demo-001"
}

output "mys3bucket" {
  value = aws_s3_bucket.mys3.bucket_domain_name //it takes the bucket_domain_name of the bucket and show us as mys3bucket = <bucket_domain_name>
}
```
