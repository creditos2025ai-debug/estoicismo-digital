# ⚡ Inicio Rápido - Despliegue Automático

## 🎯 Configuración en 5 Minutos

### Paso 1: Inicializar Git
```powershell
.\init-git.ps1
```
Este script configura Git automáticamente.

---

### Paso 2: Crear Repositorio en GitHub

1. Abre: https://github.com/new
2. Nombre: `estoicismo-digital`
3. Click: **Create repository**

---

### Paso 3: Conectar con GitHub
```powershell
# Reemplaza TU_USUARIO con tu usuario de GitHub
git remote add origin https://github.com/TU_USUARIO/estoicismo-digital.git
git push -u origin main
```

---

### Paso 4: Conectar Netlify con GitHub

**Opción A - Sitio Existente:**
1. Ve a: https://app.netlify.com/sites/fancy-dragon-323516/settings/deploys
2. **Build settings** → **Link repository**
3. Selecciona: GitHub → `estoicismo-digital`
4. Click: **Save**

**Opción B - Sitio Nuevo:**
1. Ve a: https://app.netlify.com/start
2. **Import from Git** → GitHub
3. Selecciona: `estoicismo-digital`
4. Click: **Deploy**

---

## 🚀 Usar Despliegue Automático

### Con Script (Recomendado)
```powershell
# Desplegar con mensaje personalizado
.\deploy.ps1 "Agregada nueva funcionalidad"

# O simplemente
.\deploy.ps1
```

### Manualmente
```powershell
git add .
git commit -m "Descripción de cambios"
git push
```

**¡Eso es todo!** Netlify detectará el cambio y desplegará automáticamente.

---

## 📊 Monitorear Despliegues

- **Dashboard**: https://app.netlify.com/sites/fancy-dragon-323516/
- **Historial**: https://app.netlify.com/sites/fancy-dragon-323516/deploys
- **Sitio en vivo**: https://fancy-dragon-323516.netlify.app/

---

## 🎨 Cambiar Nombre del Sitio

1. Ve a: https://app.netlify.com/sites/fancy-dragon-323516/settings/general
2. **Site details** → **Change site name**
3. Nuevo nombre: `estoicismo-digital`
4. Nueva URL: https://estoicismo-digital.netlify.app/

---

## ❓ Ayuda Rápida

### Ver estado
```powershell
git status
```

### Ver historial
```powershell
git log --oneline
```

### Deshacer último commit (sin perder cambios)
```powershell
git reset --soft HEAD~1
```

### Forzar despliegue sin cambios
```powershell
git commit --allow-empty -m "Forzar redespliegue"
git push
```

---

## 🆘 Problemas Comunes

### "Authentication failed"
```powershell
# Instalar GitHub CLI
winget install GitHub.cli

# O descargar desde
# https://cli.github.com/

# Luego autenticarse
gh auth login
```

### "fatal: remote origin already exists"
```powershell
git remote remove origin
git remote add origin https://github.com/TU_USUARIO/estoicismo-digital.git
```

### "Your branch is behind"
```powershell
git pull
# Resolver conflictos si hay
git push
```

---

## 📚 Más Información

- **Guía completa**: Ver `SETUP_GIT_NETLIFY.md`
- **Documentación**: Ver `README.md`
- **Proyecto**: Ver `PROYECTO_COMPLETO.md`

---

**Tiempo estimado de despliegue**: 10-30 segundos después de `git push` ⚡

