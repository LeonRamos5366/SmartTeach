
# Actividad de Aprendizaje: Control de Versiones y Gestión de la Configuración en Proyectos Informáticos

## Objetivo
Aplicar los conceptos y técnicas de control de versiones y gestión de la configuración en un proyecto de desarrollo de software, utilizando Git como sistema de control de versiones.

## Duración estimada
3-4 horas

## Materiales necesarios
- Computadora con acceso a internet
- Git instalado en tu computadora
- Cuenta en GitHub
- Un editor de código (como Visual Studio Code, Sublime Text, o similar)

## Pasos a seguir

### 1. Configuración inicial de Git (15 minutos)
- Abre la terminal o línea de comandos.
- Configura tu nombre de usuario y correo electrónico en Git:

git config --global user.name "Tu Nombre"
git config --global user.email "tu@email.com"
text

### 2. Creación de un nuevo repositorio (20 minutos)
- Crea una nueva carpeta para tu proyecto en tu computadora.
- Inicializa un nuevo repositorio Git en esta carpeta:

git init

- Crea un archivo README.md con una breve descripción del proyecto.
- Realiza tu primer commit:

git add README.md
git commit -m "Primer commit: Añadido README"


### 3. Creación de ramas y desarrollo de características (45 minutos)
- Crea una nueva rama para desarrollar una característica:

git branch feature-login
git checkout feature-login

- Desarrolla la característica (por ejemplo, crea un archivo login.html).
- Realiza commits frecuentes a medida que avanzas:

git add login.html
git commit -m "Añadida página de login"

- Vuelve a la rama principal y crea otra rama para otra característica:

git checkout main
git branch feature-dashboard
git checkout feature-dashboard

- Desarrolla esta nueva característica y realiza commits.

### 4. Fusión de ramas (30 minutos)
- Vuelve a la rama principal:

git checkout main

- Fusiona la rama de la característica de login:

git merge feature-login

- Resuelve cualquier conflicto que pueda surgir.
- Repite el proceso para la otra rama de características.

### 5. Trabajo con un repositorio remoto (30 minutos)
- Crea un nuevo repositorio en GitHub.
- Conecta tu repositorio local con el remoto:

git remote add origin https://github.com/tu-usuario/tu-repositorio.git

- Sube tus cambios al repositorio remoto:

git push -u origin main


### 6. Gestión de la configuración (45 minutos)
- Crea un archivo de configuración (por ejemplo, config.json) con parámetros del proyecto.
- Añade este archivo al .gitignore para evitar subir información sensible:

echo "config.json" >> .gitignore

- Crea un archivo de ejemplo (config.example.json) con la estructura pero sin datos sensibles.
- Realiza un commit con estos cambios.

### 7. Etiquetado de versiones (20 minutos)
- Crea una etiqueta para marcar una versión del proyecto:

git tag -a v1.0 -m "Versión 1.0"

- Sube la etiqueta al repositorio remoto:

git push origin v1.0


### 8. Revisión del historial y diferencias (20 minutos)
- Revisa el historial de commits:

git log

- Examina las diferencias entre commits:

git diff <commit1> <commit2>


### 9. Reflexión final (15 minutos)
Escribe un breve párrafo reflexionando sobre:
- La importancia del control de versiones en proyectos de desarrollo de software.
- Cómo el uso de Git y la gestión de la configuración pueden mejorar la colaboración y la calidad del código.
- Desafíos que encontraste durante este ejercicio y cómo los superaste.

## Conclusión
Esta actividad te proporcionará experiencia práctica en el uso de Git para el control de versiones y la gestión de la configuración en proyectos informáticos. Aprenderás a manejar ramas, fusionar cambios, trabajar con repositorios remotos y gestionar la configuración del proyecto, habilidades esenciales para cualquier desarrollador de software moderno.
