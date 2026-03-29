resource "render_postgres" "teknowsolutions_db" {
  name     = "onboarding-db"
  plan     = "free" # O "starter" para persistencia real y backups
  region   = "oregon" # Elige la región más cercana a tus clientes
  database_name = "teknowsolutions_db"
  user     = "teknowsolutions_admin"

  # Ip Allowlist: Es vital para la seguridad
  # Por ahora permitimos acceso desde cualquier lugar (0.0.0.0/0) 
  # pero en prod deberías restringirlo.
  ip_allow_list = [
    {
      cidr_block  = "0.0.0.0/0"
      description = "Allow all"
    }
  ]
}

# Output para usar la URL de conexión en tu FastAPI
output "database_url" {
  value     = render_postgres.teknowsolutions_db.connection_info.external_connection_string
  sensitive = true
}