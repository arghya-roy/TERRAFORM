at first we need to add a access key and secret key of different account in `C:\Users\USERNAME\.aws\credentials`
```
[default]
aws_access_key_id = paste here
aws_secret_access_key = paste here
[account02]
aws_access_key_id = paste here
aws_secret_access_key = paste here
```
### providers.tf
```sh
provider "aws" {
  region     =  "us-west-1"
}

provider "aws" {
  alias      =  "aws02"
  region     =  "ap-south-1"
  profile    =  "account02"
}
```
### eip.tf
```sh
resource "aws_eip" "myeip" {
  vpc = "true"
}

resource "aws_eip" "myeip01" {
  vpc = "true"
  provider = "aws.aws02"
}
```

#### 1st EIP -- default account 
#### 2nd EIP -- account02
