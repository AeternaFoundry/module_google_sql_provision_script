output "sql_provision_scripts_id" {
  description = "Map of id values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no id are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_provision_scripts_database" {
  description = "Map of database values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no database are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.database if v.database != null && length(v.database) > 0 }
}
output "sql_provision_scripts_deletion_policy" {
  description = "Map of deletion_policy values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no deletion_policy are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "sql_provision_scripts_description" {
  description = "Map of description values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no description are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "sql_provision_scripts_instance" {
  description = "Map of instance values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no instance are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "sql_provision_scripts_password_secret_version" {
  description = "Map of password_secret_version values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no password_secret_version are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.password_secret_version if v.password_secret_version != null && length(v.password_secret_version) > 0 }
}
output "sql_provision_scripts_project" {
  description = "Map of project values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no project are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.project if v.project != null && length(v.project) > 0 }
}
output "sql_provision_scripts_script" {
  description = "Map of script values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no script are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.script if v.script != null && length(v.script) > 0 }
}
output "sql_provision_scripts_user" {
  description = "Map of user values across all sql_provision_scripts, keyed the same as var.sql_provision_scripts except keys with no user are omitted"
  value       = { for k, v in google_sql_provision_script.sql_provision_scripts : k => v.user if v.user != null && length(v.user) > 0 }
}

