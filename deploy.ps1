# Script de Despliegue Automático para Netlify
# Uso: .\deploy.ps1 "Mensaje del commit"

param(
    [string]$mensaje = "Update: cambios generales"
)

Write-Host "🚀 Iniciando despliegue automático..." -ForegroundColor Green
Write-Host ""

# Verificar si Git está inicializado
if (-Not (Test-Path ".git")) {
    Write-Host "❌ Error: No se encontró repositorio Git." -ForegroundColor Red
    Write-Host "Ejecuta primero: git init" -ForegroundColor Yellow
    exit 1
}

# Mostrar archivos modificados
Write-Host "📝 Archivos modificados:" -ForegroundColor Cyan
git status --short

Write-Host ""
Write-Host "📦 Agregando archivos al staging..." -ForegroundColor Cyan
git add .

Write-Host ""
Write-Host "💾 Creando commit: '$mensaje'" -ForegroundColor Cyan
git commit -m "$mensaje"

if ($LASTEXITCODE -ne 0) {
    Write-Host "⚠️  No hay cambios para hacer commit" -ForegroundColor Yellow
    exit 0
}

Write-Host ""
Write-Host "☁️  Subiendo a GitHub..." -ForegroundColor Cyan
git push

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "✅ ¡Despliegue iniciado con éxito!" -ForegroundColor Green
    Write-Host ""
    Write-Host "🌐 Tu sitio se actualizará en 10-30 segundos en:" -ForegroundColor Cyan
    Write-Host "   https://fancy-dragon-323516.netlify.app/" -ForegroundColor White
    Write-Host ""
    Write-Host "📊 Monitorea el despliegue en:" -ForegroundColor Cyan
    Write-Host "   https://app.netlify.com/sites/fancy-dragon-323516/deploys" -ForegroundColor White
} else {
    Write-Host ""
    Write-Host "❌ Error al subir a GitHub" -ForegroundColor Red
    Write-Host "Revisa tu configuración de Git y conexión a Internet" -ForegroundColor Yellow
}

