// Global app functionality
// Theme Management
function initTheme() {
  const savedTheme = localStorage.getItem('theme') || 'light';
  document.documentElement.classList.toggle('dark', savedTheme === 'dark');
  updateThemeIcon(savedTheme);
}

function toggleDarkMode() {
  const html = document.documentElement;
  const isDark = html.classList.toggle('dark');
  const theme = isDark ? 'dark' : 'light';
  
  localStorage.setItem('theme', theme);
  updateThemeIcon(theme);
}

function updateThemeIcon(theme) {
  const icons = document.querySelectorAll('[id^="theme-icon"]');
  icons.forEach(icon => {
    icon.textContent = theme === 'dark' ? 'light_mode' : 'dark_mode';
  });
}

// Initialize theme on load
document.addEventListener('DOMContentLoaded', () => {
  initTheme();
});

// Utility Functions
function formatDate(dateString) {
  const date = new Date(dateString);
  const options = { day: 'numeric', month: 'short', year: 'numeric' };
  return date.toLocaleDateString('es-ES', options);
}

function formatDateTime(dateString) {
  const date = new Date(dateString);
  const options = { 
    day: 'numeric', 
    month: 'short', 
    year: 'numeric',
    hour: '2-digit',
    minute: '2-digit'
  };
  return date.toLocaleDateString('es-ES', options);
}

// Export for use in other scripts
if (typeof module !== 'undefined' && module.exports) {
  module.exports = {
    toggleDarkMode,
    formatDate,
    formatDateTime
  };
}

