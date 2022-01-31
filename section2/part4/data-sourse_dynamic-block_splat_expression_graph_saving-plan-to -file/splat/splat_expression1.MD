splat expressioon means a * . we can compare this with a for loop. in this example it gives all 3 user's arn.
```
provider "aws" {
  region     = "us-west-2"
  access_key = "YOUR-ACCESS-KEY"
  secret_key = "YOUR-SECRET-KEY"
}
resource "aws_iam_user" "lb" {
  name = "iamuser.${count.index}"
  count = 3
  path = "/system/"
}

output "arns" {
  value = aws_iam_user.lb[*].arn
}
```
splat expressioon means a * . we can compare this with a for loop. in this example it gives all 3 user's arn.
