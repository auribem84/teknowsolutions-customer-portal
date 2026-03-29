#!/bin/bash

# Nombre del proyecto
PROJECT_NAME="it-onboarding-service"

echo "🚀 Iniciando creación del proyecto: $PROJECT_NAME"

# 1. Crear Estructura de Carpetas
mkdir -p {backend/app/{api/v1,core,models,schemas,services,db},frontend,terraform/{modules,environments/dev}}

#cd $PROJECT_NAME
cd ../..

# 2. Inicializar Backend (FastAPI)
echo "📂 Configurando Backend..."
touch backend/app/__init__.py
touch backend/app/main.py
touch backend/app/api/__init__.py
touch backend/app/api/v1/__init__.py
touch backend/app/api/v1/onboarding.py
touch backend/app/core/config.py
touch backend/app/models/client.py
touch backend/app/schemas/client.py
touch backend/app/services/docusign.py
touch backend/app/db/session.py
touch backend/.env
touch backend/requirements.txt

# Crear un requirements.txt básico
cat <<EOT >> backend/requirements.txt
fastapi
uvicorn[standard]
pydantic[email]
python-dotenv
sqlalchemy
psycopg2-binary
docusign-esign
EOT

# 3. Configurar Python con pyenv (usando 3.11.5 como ejemplo)
echo "🐍 Configurando Python con pyenv..."
cd backend
pyenv local 3.11.5
python -m venv venv
source venv/bin/activate
pip install --upgrade pip
echo "Nota: Las dependencias se instalarán cuando ejecutes 'pip install -r requirements.txt'"
cd ..

# 4. Inicializar Terraform
echo "☁️ Configurando carpetas de Terraform..."
touch terraform/main.tf
touch terraform/variables.tf
touch terraform/outputs.tf
touch terraform/environments/dev/main.tf
touch terraform/environments/dev/terraform.tfvars

# 5. Inicializar Frontend (Placeholder)
echo "💻 Configurando Frontend..."
touch frontend/.gitkeep
echo "# Frontend Project" >> frontend/README.md

# 6. Archivos Globales
touch .gitignore
cat <<EOT >> .gitignore
# Python
__pycache__/
*.py[cod]
venv/
.env

# Terraform
.terraform/
*.tfstate
*.tfstate.backup
*.tfvars
!example.tfvars

# Mac
.DS_Store
EOT

touch README.md
echo "# $PROJECT_NAME" >> README.md

echo "✅ Estructura creada con éxito."
echo "Pro-tip: Entra a 'backend' y activa el entorno con 'source venv/bin/activate'"