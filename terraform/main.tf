resource "render_web_service" "backend_api" {
  name          = "sre-backend-service"
  plan          = "starter"
  region        = "oregon"
  start_command = "uvicorn main:app --host 0.0.0.0 --port $PORT"

  runtime_source = {
    native_runtime = {
      repo_url      = var.repo_url
      branch        = "main"
      runtime       = "python"
      build_command = "pip install -r requirements.txt"
      auto_deploy   = true
    }
  }

  env_vars = {
    PYTHON_ENV = {
      value = "production"
    }
  }
}