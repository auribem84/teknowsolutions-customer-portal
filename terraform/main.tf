# --- BASE DE DATOS POSTGRESQL ---
resource "render_postgres" "db" {
  name          = "teknowsolutions-db"
  plan          = "free"
  region        = "oregon"
  version       = "16"
  database_name = "onboarding_db"
  user          = "onboarding_admin"
  password      = var.db_password # Definida en variables.tf
}

# --- SERVICIO BACKEND (FASTAPI) ---
resource "render_web_service" "teknowsolutions_api" {
  name           = "teknowsolutions-service"
  plan           = "starter"
  region         = "oregon"
  
  # Crucial para monorepos: Render se posiciona en la carpeta del microservicio
  root_directory = "services/teknowsolutions-service" 

  runtime_source = {
    native_runtime = {
      repo_url      = var.repo_url
      branch        = "main"
      runtime       = "python"
      build_command = "pip install -r requirements.txt"
      auto_deploy   = true
    }
  }

  start_command = "uvicorn app.main:app --host 0.0.0.0 --port $PORT"

  env_vars = {
    "PYTHON_ENV" = {
      value = "production"
    },
    "DATABASE_URL" = {
      # Inyecta automáticamente la URL de conexión interna de la DB
      value = render_postgres.db.connection_info.internal_connection_string
    }
  }

  # Asegura que la base de datos se cree antes que el servicio web
  depends_on = [render_postgres.db]
}