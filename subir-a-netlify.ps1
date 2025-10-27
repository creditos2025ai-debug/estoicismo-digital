# Script para subir a Netlify - Método Simple
# Uso: .\subir-a-netlify.ps1

Write-Host ""
Write-Host "╔════════════════════════════════════════════════════════════╗" -ForegroundColor Cyan
Write-Host "║       🚀 SUBIR ESTOICISMO DIGITAL A NETLIFY 🚀           ║" -ForegroundColor Cyan
Write-Host "╚════════════════════════════════════════════════════════════╝" -ForegroundColor Cyan
Write-Host ""

Write-Host "Tienes 2 opciones para subir los cambios:" -ForegroundColor Yellow
Write-Host ""

Write-Host "┌────────────────────────────────────────────────────────────┐" -ForegroundColor Green
Write-Host "│  OPCIÓN 1: Netlify Drop (Más Rápido - 30 segundos)       │" -ForegroundColor Green
Write-Host "└────────────────────────────────────────────────────────────┘" -ForegroundColor Green
Write-Host ""
Write-Host "✅ Pasos:" -ForegroundColor White
Write-Host "  1. Abriremos Netlify en tu navegador" -ForegroundColor Gray
Write-Host "  2. Arrastra esta carpeta a la página" -ForegroundColor Gray
Write-Host "  3. ¡Listo! Tu sitio se actualiza automáticamente" -ForegroundColor Gray
Write-Host ""
Write-Host "📝 Nota: Esta opción NO permite despliegue automático desde Git" -ForegroundColor Yellow
Write-Host ""

Write-Host "┌────────────────────────────────────────────────────────────┐" -ForegroundColor Cyan
Write-Host "│  OPCIÓN 2: GitHub + Netlify (Despliegue Automático)      │" -ForegroundColor Cyan
Write-Host "└────────────────────────────────────────────────────────────┘" -ForegroundColor Cyan
Write-Host ""
Write-Host "✅ Pasos:" -ForegroundColor White
Write-Host "  1. Crearemos repositorio en GitHub" -ForegroundColor Gray
Write-Host "  2. Subiremos el código" -ForegroundColor Gray
Write-Host "  3. Conectaremos Netlify con GitHub" -ForegroundColor Gray
Write-Host "  4. ¡Cada 'git push' desplegará automáticamente!" -ForegroundColor Gray
Write-Host ""
Write-Host "📝 Nota: Configuración inicial toma 5 minutos, luego es automático" -ForegroundColor Yellow
Write-Host ""

$opcion = Read-Host "¿Qué opción prefieres? (1 o 2)"

if ($opcion -eq "1") {
    Write-Host ""
    Write-Host "🌐 Abriendo Netlify Drop..." -ForegroundColor Green
    Write-Host ""
    Write-Host "📋 INSTRUCCIONES:" -ForegroundColor Yellow
    Write-Host "  1. En la página que se abre, haz clic en 'Add new site'" -ForegroundColor White
    Write-Host "  2. Selecciona 'Drop your site folder here'" -ForegroundColor White
    Write-Host "  3. Arrastra esta carpeta completa:" -ForegroundColor White
    Write-Host "     C:\Users\Usuario\.cursor\Estoicismo digital" -ForegroundColor Cyan
    Write-Host "  4. Espera 10-30 segundos" -ForegroundColor White
    Write-Host "  5. ¡Tu sitio estará en línea!" -ForegroundColor White
    Write-Host ""
    Write-Host "⚠️  IMPORTANTE: Como ya tienes el sitio fancy-dragon-323516," -ForegroundColor Yellow
    Write-Host "   puedes ir directamente a:" -ForegroundColor Yellow
    Write-Host "   https://app.netlify.com/sites/fancy-dragon-323516/deploys" -ForegroundColor Cyan
    Write-Host "   Y hacer clic en 'Upload files' para actualizar" -ForegroundColor Yellow
    Write-Host ""
    
    Start-Process "https://app.netlify.com/sites/fancy-dragon-323516/deploys"
    
    Write-Host ""
    Write-Host "✅ Navegador abierto. Sigue las instrucciones de arriba." -ForegroundColor Green
    Write-Host ""
    
} elseif ($opcion -eq "2") {
    Write-Host ""
    Write-Host "🔧 Configurando GitHub + Netlify..." -ForegroundColor Green
    Write-Host ""
    
    Write-Host "PASO 1: Crear repositorio en GitHub" -ForegroundColor Cyan
    Write-Host "────────────────────────────────────" -ForegroundColor Gray
    Write-Host "  1. Abriremos GitHub para crear el repositorio" -ForegroundColor White
    Write-Host "  2. Nombre sugerido: estoicismo-digital" -ForegroundColor White
    Write-Host "  3. Déjalo PÚBLICO o PRIVADO (como prefieras)" -ForegroundColor White
    Write-Host "  4. NO marques 'Initialize with README'" -ForegroundColor Yellow
    Write-Host "  5. Clic en 'Create repository'" -ForegroundColor White
    Write-Host ""
    
    $continuar = Read-Host "Presiona Enter para abrir GitHub"
    
    Start-Process "https://github.com/new"
    
    Write-Host ""
    Write-Host "Esperando a que crees el repositorio..." -ForegroundColor Yellow
    $usuario = Read-Host "Cuando lo hayas creado, ingresa tu USUARIO de GitHub"
    
    Write-Host ""
    Write-Host "PASO 2: Subir código a GitHub" -ForegroundColor Cyan
    Write-Host "────────────────────────────────────" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Ejecuta estos comandos:" -ForegroundColor White
    Write-Host ""
    Write-Host "git remote add origin https://github.com/$usuario/estoicismo-digital.git" -ForegroundColor Yellow
    Write-Host "git push -u origin main" -ForegroundColor Yellow
    Write-Host ""
    
    $ejecutar = Read-Host "¿Quieres que los ejecute automáticamente? (s/N)"
    
    if ($ejecutar -eq "s" -or $ejecutar -eq "S") {
        Write-Host ""
        Write-Host "Conectando con GitHub..." -ForegroundColor Green
        git remote add origin "https://github.com/$usuario/estoicismo-digital.git"
        
        Write-Host "Subiendo código..." -ForegroundColor Green
        git push -u origin main
        
        if ($LASTEXITCODE -eq 0) {
            Write-Host ""
            Write-Host "✅ ¡Código subido a GitHub!" -ForegroundColor Green
            Write-Host ""
            
            Write-Host "PASO 3: Conectar Netlify con GitHub" -ForegroundColor Cyan
            Write-Host "────────────────────────────────────" -ForegroundColor Gray
            Write-Host ""
            Write-Host "Abriendo configuración de Netlify..." -ForegroundColor Yellow
            
            Start-Process "https://app.netlify.com/sites/fancy-dragon-323516/settings/deploys"
            
            Write-Host ""
            Write-Host "📋 En la página que se abre:" -ForegroundColor Yellow
            Write-Host "  1. Ve a 'Build settings'" -ForegroundColor White
            Write-Host "  2. Clic en 'Link repository'" -ForegroundColor White
            Write-Host "  3. Selecciona 'GitHub'" -ForegroundColor White
            Write-Host "  4. Busca y selecciona: estoicismo-digital" -ForegroundColor White
            Write-Host "  5. Branch: main" -ForegroundColor White
            Write-Host "  6. Build command: (dejar vacío)" -ForegroundColor White
            Write-Host "  7. Publish directory: ." -ForegroundColor White
            Write-Host "  8. Clic en 'Deploy site'" -ForegroundColor White
            Write-Host ""
            Write-Host "✅ ¡Listo! Ahora cada 'git push' desplegará automáticamente" -ForegroundColor Green
            Write-Host ""
            Write-Host "Para futuros despliegues usa:" -ForegroundColor Cyan
            Write-Host "  .\deploy.ps1 'Mensaje del cambio'" -ForegroundColor Yellow
            Write-Host ""
        } else {
            Write-Host ""
            Write-Host "❌ Error al subir a GitHub" -ForegroundColor Red
            Write-Host "Puede que necesites autenticarte primero" -ForegroundColor Yellow
            Write-Host ""
            Write-Host "Intenta:" -ForegroundColor White
            Write-Host "  gh auth login" -ForegroundColor Yellow
            Write-Host "O usa un token de acceso personal" -ForegroundColor White
        }
    } else {
        Write-Host ""
        Write-Host "📋 Copia y ejecuta estos comandos manualmente:" -ForegroundColor Yellow
        Write-Host "git remote add origin https://github.com/$usuario/estoicismo-digital.git" -ForegroundColor Cyan
        Write-Host "git push -u origin main" -ForegroundColor Cyan
        Write-Host ""
        Write-Host "Luego ve a: https://app.netlify.com/sites/fancy-dragon-323516/settings/deploys" -ForegroundColor White
        Write-Host "Y conecta con GitHub" -ForegroundColor White
    }
    
} else {
    Write-Host ""
    Write-Host "❌ Opción no válida. Ejecuta el script nuevamente." -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "════════════════════════════════════════════════════════════" -ForegroundColor Cyan
Write-Host ""
Write-Host "🌐 Tu sitio actual: https://fancy-dragon-323516.netlify.app/" -ForegroundColor Green
Write-Host ""


