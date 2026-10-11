variable "sql_provision_scripts" {
  description = <<EOT
Map of sql_provision_scripts, attributes below
Required:
    - instance
    - script
Optional:
    - database
    - deletion_policy
    - description
    - password_secret_version
    - project
    - user
EOT

  type = map(object({
    instance                = string
    script                  = string
    database                = optional(string)
    deletion_policy         = optional(string)
    description             = optional(string)
    password_secret_version = optional(string)
    project                 = optional(string)
    user                    = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.sql_provision_scripts : (
        v.deletion_policy == null || (contains(["ABANDON"], v.deletion_policy))
      )
    ])
    error_message = "must be one of: \"ABANDON\""
  }
}

