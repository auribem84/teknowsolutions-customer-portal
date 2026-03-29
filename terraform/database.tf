resource "render_postgres" "teknowsolutions_db" {
  name          = "teknowsolutions-db"
  plan          = "free"
  region        = "oregon"
  version       = "16"
  database_name = "teknowsolutions"
  database_user = "teknowsolutions_admin"
}