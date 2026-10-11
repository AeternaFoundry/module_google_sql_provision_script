resource "google_sql_provision_script" "sql_provision_scripts" {
  for_each = var.sql_provision_scripts

  instance                = each.value.instance
  script                  = each.value.script
  database                = each.value.database
  deletion_policy         = each.value.deletion_policy
  description             = each.value.description
  password_secret_version = each.value.password_secret_version
  project                 = each.value.project
  user                    = each.value.user
}

