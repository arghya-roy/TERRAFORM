In Terraform CLI, workspaces are separate instances of state data that can be used from the same working directory. You can use workspaces to manage multiple non-overlapping groups of resources with the same configuration.

Every initialized working directory has at least one workspace. (If you haven't created other workspaces, it is a workspace named default.)
For a given working directory, only one workspace can be selected at a time.
Most Terraform commands (including provisioning and state manipulation commands) only interact with the currently selected workspace.
Use the terraform workspace select command to change the currently selected workspace.
Use the terraform workspace list, terraform workspace new, and terraform workspace delete commands to manage the available workspaces in the current working directory.
