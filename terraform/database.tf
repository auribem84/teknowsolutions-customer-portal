resource "render_postgres" "db" {
  name          = var.db_name
  plan          = var.db_plan
  region        = var.region
  version       = var.postgres_version
  database_name = var.db_database_name
  database_user = var.db_user
}