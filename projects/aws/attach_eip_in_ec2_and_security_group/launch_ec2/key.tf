#ssh-keygen -f mykeypair
# then copy both public and private key and paste them in launch_ec2 folder.

resource "aws_key_pair" "mykeypair" {
  key_name   = "mykeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}
