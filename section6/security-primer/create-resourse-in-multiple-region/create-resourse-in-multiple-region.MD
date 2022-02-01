### here if we want to add two eip in two different region, then we should use multiple provider with alias.
### (in this example regions are different but account is same)
### alias - just a name which refers to the particular provider
### providers.tf
```sh
provider "aws" {
  region     =  "us-west-1"  // when no privider is decleared in resourse then this provider is default. 
}

provider "aws" {
  alias      =  "aws02"
  region     =  "ap-south-1"
}
```
### eip.tf
```sh
resource "aws_eip" "myeip" {    // this eip will create on default provider
  vpc = "true"
}

resource "aws_eip" "myeip01" {   //// this eip will create on alias = aws02 provider
  vpc = "true"
  provider = "aws.aws02"
}
```

#### 1st EIP -- default region 
#### 2nd EIP -- second region




