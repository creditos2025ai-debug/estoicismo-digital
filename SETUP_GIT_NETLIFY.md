# 🚀 Configuración de Despliegue Automático a Netlify

Tu sitio actual: https://fancy-dragon-323516.netlify.app/

## 📋 Pasos para Configurar Despliegue Automático

### 1️⃣ Inicializar Git en tu Proyecto

Abre PowerShell en la carpeta del proyecto y ejecuta:

```powershell
# Navegar a la carpeta del proyecto
cd "C:\Users\Usuario\.cursor\Estoicismo digital"

# Inicializar repositorio Git
git init

# Configurar tu información (cámbiala por la tuya)
git config user.name "Tu Nombre"
git config user.email "tuemail@ejemplo.com"

# Agregar todos los archivos
git add .

# Hacer el primer commit
git commit -m "Initial commit - Estoicismo Digital"
```

### 2️⃣ Crear Repositorio en GitHub

1. Ve a: https://github.com/new
2. Nombre del repositorio: `estoicismo-digital`
3. Déjalo en **Público** o **Privado** (como prefieras)
4. **NO marques** "Initialize with README" (ya tienes archivos)
5. Click en **"Create repository"**

### 3️⃣ Conectar tu Proyecto Local con GitHub

GitHub te mostrará comandos. Copia y pega en PowerShell:

```powershell
# Agregar el repositorio remoto (CAMBIA TU_USUARIO por tu usuario de GitHub)
git remote add origin https://github.com/TU_USUARIO/estoicismo-digital.git

# Renombrar rama a main
git branch -M main

# Subir código
git push -u origin main
```

**Nota**: La primera vez te pedirá autenticación de GitHub.

### 4️⃣ Conectar Netlify con GitHub

#### Opción A: Desde Netlify Dashboard

1. Ve a: https://app.netlify.com/
2. Busca tu sitio: `fancy-dragon-323516`
3. Click en **Site settings**
4. En el menú lateral: **Build & deploy** → **Continuous deployment**
5. Click en **Link repository**
6. Selecciona **GitHub**
7. Busca y selecciona: `estoicismo-digital`
8. Configuración:
   - **Branch to deploy**: `main`
   - **Build command**: (dejar vacío)
   - **Publish directory**: `.` (punto)
9. Click en **Deploy site**

#### Opción B: Crear Sitio Nuevo Conectado a Git

Si prefieres empezar de cero con la conexión:

1. Ve a: https://app.netlify.com/
2. Click en **Add new site** → **Import an existing project**
3. Selecciona **GitHub**
4. Autoriza Netlify para acceder a tus repositorios
5. Busca y selecciona: `estoicismo-digital`
6. Configuración:
   - **Branch**: `main`
   - **Build command**: (vacío)
   - **Publish directory**: `.`
7. Click en **Deploy**

### 5️⃣ ¡Configurado! Ahora Cualquier Cambio se Desplegará Automáticamente

De ahora en adelante, cada vez que hagas cambios:

```powershell
# 1. Verifica qué archivos cambiaron
git status

# 2. Agrega los cambios
git add .

# 3. Haz commit con un mensaje descriptivo
git commit -m "Descripción de tus cambios"

# 4. Sube a GitHub (esto desplegará automáticamente en Netlify)
git push
```

**¡Eso es todo!** Netlify detectará el push y desplegará automáticamente en 10-30 segundos.

---

## 🔧 Configuración Adicional en Netlify

### Cambiar Nombre del Sitio

1. Ve a: **Site settings** → **Site details** → **Change site name**
2. Cambia `fancy-dragon-323516` por algo como: `estoicismo-digital`
3. Tu nueva URL será: `https://estoicismo-digital.netlify.app`

### Configurar Notificaciones de Despliegue

1. **Site settings** → **Build & deploy** → **Deploy notifications**
2. Puedes agregar:
   - Notificaciones por email
   - Webhooks a Slack/Discord
   - Notificaciones de GitHub

### Ver el Estado de Despliegues

1. En tu sitio de Netlify, ve a **Deploys**
2. Verás:
   - ✅ Despliegues exitosos
   - ⏳ Despliegues en progreso
   - ❌ Despliegues fallidos (con logs)

---

## 📝 Comandos Git Comunes

```powershell
# Ver estado de archivos
git status

# Ver historial de commits
git log --oneline

# Ver diferencias antes de commit
git diff

# Deshacer cambios en un archivo (antes de commit)
git checkout -- archivo.html

# Ver ramas
git branch

# Crear nueva rama para experimentar
git checkout -b experimento

# Volver a la rama main
git checkout main

# Combinar rama experimento a main
git merge experimento
```

---

## 🔄 Flujo de Trabajo Recomendado

### Para Cambios Pequeños
```powershell
# Hacer cambios en archivos...
git add .
git commit -m "Fix: corregido problema en practice.html"
git push
```

### Para Funcionalidades Nuevas
```powershell
# Crear rama nueva
git checkout -b nueva-funcionalidad

# Hacer cambios...
git add .
git commit -m "Add: nueva sección de meditaciones"

# Subir rama
git push -u origin nueva-funcionalidad

# Luego en GitHub, crear Pull Request y fusionar a main
# O desde terminal:
git checkout main
git merge nueva-funcionalidad
git push
```

---

## 🚨 Solución de Problemas

### Error: "Authentication failed"
```powershell
# Opción 1: Usar GitHub CLI (recomendado)
# Instalar desde: https://cli.github.com/
gh auth login

# Opción 2: Usar Token de Acceso Personal
# 1. Ve a: https://github.com/settings/tokens
# 2. Genera un nuevo token
# 3. Úsalo como contraseña cuando Git te la pida
```

### Error: "Permission denied"
```powershell
# Verificar configuración remota
git remote -v

# Si está mal, actualizar
git remote set-url origin https://github.com/TU_USUARIO/estoicismo-digital.git
```

### Error: "Your branch is behind"
```powershell
# Traer cambios del servidor
git pull

# Si hay conflictos, Git te dirá qué archivos tienen problemas
# Edita los archivos, luego:
git add .
git commit -m "Resueltos conflictos"
git push
```

### Netlify no despliega después de push
1. Ve a: **Deploys** en Netlify
2. Revisa los logs de error
3. Verifica que el repositorio esté conectado correctamente
4. Fuerza un nuevo despliegue: **Trigger deploy** → **Deploy site**

---

## 📊 Monitorear Despliegues

### En Terminal
```powershell
# Ver últimos commits
git log --oneline -5

# Ver estado del repositorio remoto
git remote show origin
```

### En Netlify
- Dashboard: https://app.netlify.com/
- Tu sitio: https://app.netlify.com/sites/fancy-dragon-323516/

### Badges (Opcional)
Agrega a tu README.md:
```markdown
[![Netlify Status](https://api.netlify.com/api/v1/badges/TU-SITE-ID/deploy-status)](https://app.netlify.com/sites/fancy-dragon-323516/deploys)
```

---

## 🎯 Resumen del Flujo Automático

```
TU CÓDIGO LOCAL
      ↓
   git add .
   git commit -m "mensaje"
   git push
      ↓
   GITHUB
      ↓
   (webhook automático)
      ↓
   NETLIFY BUILD
      ↓
   DESPLIEGUE AUTOMÁTICO
      ↓
https://fancy-dragon-323516.netlify.app/
```

**Tiempo total**: 10-30 segundos desde el `git push` hasta ver los cambios en producción.

---

## ✅ Checklist de Configuración

- [ ] Git instalado
- [ ] Repositorio local inicializado (`git init`)
- [ ] Repositorio en GitHub creado
- [ ] Código subido a GitHub (`git push`)
- [ ] Netlify conectado al repositorio de GitHub
- [ ] Primer despliegue automático exitoso
- [ ] Nombre del sitio personalizado (opcional)

---

¿Necesitas ayuda? Sigue esta guía paso a paso o consulta:
- Documentación de Git: https://git-scm.com/doc
- Documentación de Netlify: https://docs.netlify.com/
- GitHub Guides: https://guides.github.com/

