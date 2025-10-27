# Estoicismo Digital 📖

Una aplicación web moderna para practicar y aprender estoicismo en tu vida diaria.

## 🌟 Características

### 📝 Diario Personal
- Múltiples tipos de entradas: libre, matutina, nocturna y de gratitud
- Búsqueda de entradas
- Almacenamiento local (tus datos quedan en tu dispositivo)
- Editor con preguntas guía

### 🧘 Práctica
- **Dicotomía del Control**: Ejercicio interactivo para distinguir lo que está bajo tu control
- Sistema de arrastrar y soltar elementos
- Planes de acción personalizados
- Guardado automático de reflexiones

### 📈 Progreso
- Calendario visual de actividad
- Seguimiento de rachas diarias
- Estadísticas de ejercicios y entradas
- Historial de actividad

### 📚 Aprender
- Principios fundamentales del estoicismo
- Biografías de filósofos estoicos
- Citas diarias inspiradoras
- Prácticas recomendadas

## 🎨 Diseño

- **Tema dual**: Modo claro y oscuro
- **Paleta estoica**: Verde olivo y tonos tierra
- **Tipografía elegante**: Newsreader para títulos, Inter para texto
- **Responsive**: Optimizado para móviles y escritorio

## 🚀 Despliegue en Netlify

### Opción 1: Despliegue desde GitHub

1. Sube el proyecto a un repositorio de GitHub
2. Ve a [Netlify](https://app.netlify.com/)
3. Click en "Add new site" → "Import an existing project"
4. Conecta tu repositorio de GitHub
5. Netlify detectará automáticamente la configuración
6. Click en "Deploy site"

### Opción 2: Despliegue manual

1. Ve a [Netlify Drop](https://app.netlify.com/drop)
2. Arrastra y suelta la carpeta del proyecto
3. ¡Listo! Tu sitio estará en línea en segundos

## 📁 Estructura del Proyecto

```
estoicismo-digital/
├── index.html          # Página principal
├── journal.html        # Diario personal
├── practice.html       # Ejercicios prácticos
├── progress.html       # Seguimiento de progreso
├── learn.html          # Contenido educativo
├── js/
│   └── app.js         # JavaScript compartido
├── netlify.toml       # Configuración de Netlify
├── _redirects         # Reglas de redirección
└── README.md          # Este archivo
```

## 💾 Almacenamiento

La aplicación utiliza `localStorage` del navegador para guardar:
- Entradas de diario
- Ejercicios de control
- Preferencias de tema
- Citas diarias

**Nota**: Los datos permanecen en tu dispositivo y no se envían a ningún servidor.

## 🛠️ Tecnologías

- **HTML5**: Estructura semántica
- **Tailwind CSS**: Estilos y diseño responsive
- **JavaScript Vanilla**: Sin frameworks, máximo rendimiento
- **Material Icons**: Iconografía
- **Google Fonts**: Newsreader + Inter

## 🔄 Actualizaciones Futuras

- [ ] Exportar/importar datos
- [ ] Más ejercicios estoicos
- [ ] Notificaciones de recordatorio
- [ ] PWA (Progressive Web App)
- [ ] Modo sin conexión
- [ ] Más idiomas

## 📖 Filósofos Estoicos Destacados

- **Marco Aurelio** (121-180 d.C.) - Emperador y autor de "Meditaciones"
- **Epicteto** (50-135 d.C.) - Maestro de filosofía
- **Séneca** (4 a.C.-65 d.C.) - Filósofo y dramaturgo

## 📜 Licencia

Este proyecto está bajo la Licencia MIT. Siéntete libre de usarlo, modificarlo y compartirlo.

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Si tienes ideas para mejorar la aplicación, abre un issue o envía un pull request.

---

Hecho con 💚 para fomentar la práctica del estoicismo en la era digital.

