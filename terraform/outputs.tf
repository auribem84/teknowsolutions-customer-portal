output "db_internal_connection_string" {
  description = "Internal connection string (use this from other Render services in the same region)."
  value       = render_postgres.db.internal_connection_string
  sensitive   = true
}

output "db_external_connection_string" {
  description = "External connection string (use this from outside Render, e.g. local dev)."
  value       = render_postgres.db.connection_string
  sensitive   = true
}

output "db_psql_command" {
  description = "Ready-to-use psql command to connect to the database."
  value       = render_postgres.db.psql_command
  sensitive   = true
}
