output "service_url" {
  value       = render_web_service.onboarding_api.url
  description = "URL pública del microservicio de Onboarding"
}

output "db_host" {
  value       = render_postgres.db.connection_info.external_connection_string
  sensitive   = true
  description = "URL para conectarse a la DB desde tu Mac (ej. DBeaver/TablePlus)"
}