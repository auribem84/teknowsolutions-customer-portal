output "db_internal_connection_string" {
  description = "Internal connection string (use from other Render services in the same region)."
  value       = render_postgres.db.internal_connection_string
  sensitive   = true
}

output "db_password" {
  description = "Password for the database user."
  value       = render_postgres.db.password
  sensitive   = true
}

output "db_psql_command" {
  description = "Ready-to-use psql command to connect to the database."
  value       = render_postgres.db.psql_command
  sensitive   = true
}
