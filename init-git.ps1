# Script de Inicialización de Git para el Proyecto
# Uso: .\init-git.ps1

Write-Host "🔧 Configurando Git para Estoicismo Digital..." -ForegroundColor Green
Write-Host ""

# Verificar si Git está instalado
try {
    $gitVersion = git --version
    Write-Host "✅ Git encontrado: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "❌ Error: Git no está instalado" -ForegroundColor Red
    Write-Host "Descárgalo desde: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# Verificar si ya existe un repositorio
if (Test-Path ".git") {
    Write-Host "⚠️  Ya existe un repositorio Git en esta carpeta" -ForegroundColor Yellow
    $respuesta = Read-Host "¿Quieres reinicializarlo? (s/N)"
    if ($respuesta -ne "s" -and $respuesta -ne "S") {
        Write-Host "Cancelado." -ForegroundColor Yellow
        exit 0
    }
    Remove-Item -Recurse -Force .git
}

# Inicializar Git
Write-Host "📦 Inicializando repositorio Git..." -ForegroundColor Cyan
git init

# Configurar usuario (puedes cambiar estos valores)
Write-Host ""
Write-Host "👤 Configuración de usuario:" -ForegroundColor Cyan
$nombre = Read-Host "Ingresa tu nombre"
$email = Read-Host "Ingresa tu email"

git config user.name "$nombre"
git config user.email "$email"

Write-Host ""
Write-Host "✅ Usuario configurado:" -ForegroundColor Green
Write-Host "   Nombre: $nombre"
Write-Host "   Email: $email"

# Crear rama main
Write-Host ""
Write-Host "🌿 Configurando rama principal..." -ForegroundColor Cyan
git branch -M main

# Agregar archivos
Write-Host ""
Write-Host "📝 Agregando archivos al repositorio..." -ForegroundColor Cyan
git add .

# Primer commit
Write-Host ""
Write-Host "💾 Creando commit inicial..." -ForegroundColor Cyan
git commit -m "Initial commit - Estoicismo Digital App"

Write-Host ""
Write-Host "✅ ¡Git configurado correctamente!" -ForegroundColor Green
Write-Host ""
Write-Host "📋 Próximos pasos:" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Crea un repositorio en GitHub:" -ForegroundColor White
Write-Host "   https://github.com/new" -ForegroundColor Blue
Write-Host ""
Write-Host "2. Conecta tu repositorio local con GitHub:" -ForegroundColor White
Write-Host "   git remote add origin https://github.com/TU_USUARIO/estoicismo-digital.git" -ForegroundColor Yellow
Write-Host ""
Write-Host "3. Sube tu código:" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor Yellow
Write-Host ""
Write-Host "4. Conecta Netlify con tu repositorio de GitHub:" -ForegroundColor White
Write-Host "   https://app.netlify.com/sites/fancy-dragon-323516/settings/deploys" -ForegroundColor Blue
Write-Host ""
Write-Host "📖 Consulta SETUP_GIT_NETLIFY.md para instrucciones detalladas" -ForegroundColor Cyan

