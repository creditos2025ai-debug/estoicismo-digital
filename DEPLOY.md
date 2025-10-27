# 🚀 Guía de Despliegue en Netlify

Esta guía te ayudará a publicar tu aplicación de Estoicismo Digital en Netlify.

## Opción 1: Despliegue Manual (Más Rápido)

### Paso a Paso

1. **Prepara los archivos**
   - Asegúrate de que todos los archivos estén en una carpeta
   - Verifica que `index.html` esté en la raíz

2. **Ve a Netlify**
   - Abre tu navegador y ve a: https://app.netlify.com/drop
   - Si no tienes cuenta, créala gratis (puedes usar GitHub, GitLab o email)

3. **Arrastra y Suelta**
   - Arrastra toda la carpeta `Estoicismo digital` directamente a la página
   - O usa el botón "Browse to upload"

4. **¡Listo!**
   - Netlify procesará los archivos (toma 10-30 segundos)
   - Recibirás una URL como: `https://random-name-123.netlify.app`
   - Puedes cambiar el nombre del sitio en: Site settings → Change site name

## Opción 2: Despliegue desde Git (Recomendado para Actualizaciones)

### Requisitos Previos
- Cuenta de GitHub, GitLab o Bitbucket
- Git instalado en tu computadora

### Paso a Paso

1. **Crea un repositorio en GitHub**
   ```bash
   # En tu terminal, dentro de la carpeta del proyecto
   git init
   git add .
   git commit -m "Initial commit - Estoicismo Digital"
   ```

2. **Sube a GitHub**
   - Crea un nuevo repositorio en GitHub.com
   - Sigue las instrucciones para conectar tu repositorio local:
   ```bash
   git remote add origin https://github.com/TU_USUARIO/estoicismo-digital.git
   git branch -M main
   git push -u origin main
   ```

3. **Conecta con Netlify**
   - Ve a: https://app.netlify.com/
   - Click en "Add new site" → "Import an existing project"
   - Selecciona "GitHub" y autoriza la conexión
   - Selecciona tu repositorio `estoicismo-digital`

4. **Configura el despliegue**
   - Netlify detectará automáticamente la configuración del `netlify.toml`
   - Build command: (dejar vacío)
   - Publish directory: `.` (punto)
   - Click en "Deploy site"

5. **¡Automático!**
   - Cada vez que hagas `git push`, Netlify actualizará automáticamente

## Configuración del Dominio Personalizado

Si tienes un dominio propio:

1. Ve a: Site settings → Domain management
2. Click en "Add custom domain"
3. Ingresa tu dominio (ej: `miapp-estoica.com`)
4. Sigue las instrucciones para configurar los DNS
5. Netlify agregará SSL (HTTPS) automáticamente

## Configuración de Variables de Entorno (Futuro)

Si en el futuro necesitas variables de entorno:

1. Ve a: Site settings → Environment variables
2. Click en "Add a variable"
3. Agrega KEY y VALUE
4. Click en "Save"

## Optimizaciones Post-Despliegue

### 1. Habilitar HTTPS
- Ya viene habilitado por defecto en Netlify
- Fuerza HTTPS: Settings → Domain management → HTTPS → Force HTTPS

### 2. Configurar Headers de Seguridad
- Ya están configurados en `netlify.toml`

### 3. Formularios (si agregas contacto)
```html
<form name="contact" method="POST" data-netlify="true">
  <!-- tus campos -->
</form>
```

### 4. Funciones Serverless (si las necesitas)
- Crea carpeta: `netlify/functions/`
- Netlify las detectará automáticamente

## Comandos Git Útiles

```bash
# Ver estado de archivos
git status

# Agregar cambios
git add .

# Hacer commit
git commit -m "Descripción de cambios"

# Subir cambios (dispara despliegue automático)
git push

# Ver historial
git log --oneline
```

## Monitoreo y Analytics

### Netlify Analytics (Pago)
- Ve a: Site settings → Analytics
- Costo: ~$9/mes

### Google Analytics (Gratis)
Agrega antes de `</head>`:
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=TU_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'TU_ID');
</script>
```

## Solución de Problemas

### Error 404 en rutas
- Ya está solucionado con `_redirects`
- Verifica que el archivo exista en la raíz

### Archivos no se actualizan
- Limpia caché: Deploy settings → Clear cache and retry deploy
- O usa Ctrl+Shift+R en el navegador

### CSS/JS no cargan
- Verifica rutas en el código
- Asegúrate de que las rutas sean relativas o absolutas correctas

## URLs Importantes

- **Tu sitio**: `https://tu-sitio.netlify.app`
- **Panel de control**: https://app.netlify.com/
- **Documentación**: https://docs.netlify.com/
- **Estado de Netlify**: https://www.netlifystatus.com/

## Comandos Netlify CLI (Opcional)

Si quieres usar la línea de comandos:

```bash
# Instalar Netlify CLI
npm install -g netlify-cli

# Login
netlify login

# Desplegar desde terminal
netlify deploy

# Desplegar a producción
netlify deploy --prod

# Ver sitio local
netlify dev
```

## Costos

- **Plan Free**: Perfecto para este proyecto
  - 100GB de ancho de banda
  - 300 minutos de build
  - Dominio .netlify.app incluido
  - SSL gratis
  - Despliegues ilimitados

---

¿Necesitas ayuda? Consulta la [documentación oficial de Netlify](https://docs.netlify.com/) o su [foro comunitario](https://answers.netlify.com/).

