after using sensitive = true, the password will not be shown in output. it occurs as db_password = sensitive.
```
locals {
  db_password = {
    admin = "password"
  }
}

output "db_password" {
  value = local.db_password
  sensitive   = true
}
```
