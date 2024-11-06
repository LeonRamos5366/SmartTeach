# Crear el contenido del archivo Markdown
content = "# Gestión de Proyectos Informáticos\n\n## Índice\n\n"

# Lista de secciones principales
sections = [
    "Fundamentos de la gestión de proyectos informáticos",
    "Iniciación y planificación de proyectos",
    "Gestión de riesgos en proyectos informáticos",
    "Gestión de la calidad en proyectos de software",
    "Control de versiones y gestión de la configuración",
    "Ejecución y control de proyectos",
    "Tecnologías emergentes y su impacto en los proyectos",
    "Monitoreo y evaluación del desempeño",
    "Cierre de proyectos informáticos",
    "Habilidades blandas para la gestión de proyectos"
]

# Crear el índice con enlaces
for i, section in enumerate(sections, 1):
    content += f"{i}. [{section}](#{section.lower().replace(' ', '-')})\n"

content += "\n"

# Agregar las secciones con sus subsecciones
for i, section in enumerate(sections, 1):
    content += f"## {i}. {section}\n\n"
    
    # Agregar subsecciones (asumiendo que están en el mismo orden que en la información proporcionada)
    subsections = [
        "Conceptos básicos de gestión de proyectos",
        "Ciclo de vida de un proyecto informático",
        "Roles y responsabilidades en un proyecto de TI"
    ]
    
    for subsection in subsections:
        content += f"* {subsection}\n"
    
    content += "\n"

# Escribir el contenido en un archivo Markdown
with open("gestion_proyectos_informaticos.md", "w", encoding="utf-8") as f:
    f.write(content)

print("Archivo Markdown creado: gestion_proyectos_informaticos.md")
