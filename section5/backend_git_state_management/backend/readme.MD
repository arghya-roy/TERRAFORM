backend means we save the tfstate file to remote area ( not SCM ). from where all team member can access that.
we can use many service as backend, but here we take a example os s3 with dynamoDB.
### s3 is used to store the file.
### dynamodb is used to lock the file.
# lockfile -
### lock file means only one user modify tfstate file at a time. as a example if one user need to destroy a ec2 and another tries to modify the same ec2. them it will damage the file to avoid this we need to use lock file.
