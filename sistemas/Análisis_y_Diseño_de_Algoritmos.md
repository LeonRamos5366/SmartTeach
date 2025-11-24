# Análisis y Diseño de Algoritmos  
***

## 1. ¿Qué es un Algoritmo?

Un **algoritmo** es un conjunto de pasos definidos, ordenados y finitos para resolver un problema específico. Es la base de la programación y el pilar de toda solución automatizada en sistemas computacionales.

### Características principales:
- **Preciso:** Cada paso debe estar claramente definido.
- **Definido:** Siempre produce el mismo resultado con la misma entrada.
- **Finito:** Debe terminar después de un número limitado de pasos.

***

## 2. Proceso General: Resolución de Problemas con Algoritmos

Las etapas fundamentales para abordar problemas usando algoritmos son:

1. **Análisis del problema:** Definir entradas, procesos y salidas.
2. **Diseño del algoritmo:** Especificar los pasos usando pseudocódigo o diagramas de flujo.
3. **Codificación:** Traducir el algoritmo a un lenguaje de programación.
4. **Prueba y depuración:** Verificar correcto funcionamiento y corregir errores.
5. **Documentación:** Registrar el proceso y solución para referencia futura.

***

## 3. Estructuras Clave de un Algoritmo

Todo algoritmo puede descomponerse en tres estructuras básicas:

- **Secuencia:** Pasos seguidos uno tras otro.
- **Selección:** Toma de decisiones (`if`, `switch`).
- **Repetición:** Ejecución repetida de pasos (`for`, `while`).

**Ejemplo:** Preparar té — hervir agua (secuencia), si el agua está caliente (selección), revolver hasta disolver el azúcar (repetición).

***

## 4. Estrategias de Diseño

Las técnicas comunes incluyen:
- **Divide y vencerás:** Subdivide el problema y resuelve partes más pequeñas.
- **Programación dinámica:** Almacena soluciones parciales para problemas superpuestos.
- **Algoritmos voraces:** Elige la mejor opción local en cada paso.
- **Fuerza bruta:** Prueba todas las posibilidades hasta dar con la solución.

***

## 5. **Complejidad Algorítmica y Notación Big O**

La **notación Big O** es el estándar para expresar la eficiencia de un algoritmo, enfocándose en el crecimiento del consumo de tiempo (o memoria) respecto al tamaño de entrada `n`.

### Ejemplos comunes:

| Notación      | Nombre           | Ejemplo                           |
|---------------|------------------|-----------------------------------|
| $$O(1)$$      | Constante        | Acceso directo a un arreglo       |
| $$O(\log n)$$ | Logarítmica      | Búsqueda binaria                  |
| $$O(n)$$      | Lineal           | Recorrido de un arreglo           |
| $$O(n \log n)$$ | Lineal-log      | Merge Sort, Quick Sort            |
| $$O(n^2)$$    | Cuadrática       | Bubble Sort, Selection Sort       |
| $$O(2^n)$$    | Exponencial      | Soluciones de fuerza bruta        |
| $$O(n!)$$     | Factorial        | Permutaciones completas           |

**Reglas para simplificar Big O:**
- Eliminar términos menos significativos.
- Ignorar constantes multiplicativas.

***

## 6. Algoritmos de Ordenamiento

### Clasificación por Eficiencia

1. **Simples (O(n²)):**
   - **Bubble Sort:** Intercambia pares adyacentes. _Estable_.
   - **Selection Sort:** Selecciona el mínimo y lo coloca al inicio. _No estable_.
   - **Insertion Sort:** Inserta ordenadamente cada nuevo elemento. _Estable_.

2. **Intermedios:**
   - **Shell Sort:** Mejora el sorteo por inserción usando saltos variables.

3. **Avanzados (O(n log n)):**
   - **Quick Sort:** Divide y ordena con pivote. _No estable_ salvo versión especial.
   - **Merge Sort:** Divide-reconquista, siempre estable.
   - **Heap Sort:** Usa estructura de heap, no estable.
   - **Counting Sort:** Conteo de ocurrencias, eficiente si el rango de valores es limitado.

### Comparación resumida:

| Algoritmo     | Mejor caso | Promedio | Peor caso | Espacio | Estable |
|---------------|------------|----------|-----------|---------|---------|
| Bubble Sort   | O(n)       | O(n²)    | O(n²)     | O(1)    | Sí      |
| Selection Sort| O(n²)      | O(n²)    | O(n²)     | O(1)    | No      |
| Insertion Sort| O(n)       | O(n²)    | O(n²)     | O(1)    | Sí      |
| Quick Sort    | O(n log n) | O(n log n)| O(n²)   | O(log n)| No      |
| Merge Sort    | O(n log n) | O(n log n)| O(n log n)| O(n)   | Sí      |
| Heap Sort     | O(n log n) | O(n log n)| O(n log n)| O(1)   | No      |
| Counting Sort | O(n+k)     | O(n+k)   | O(n+k)   | O(k)    | Sí      |

***

## 7. Algoritmos de Búsqueda

- **Búsqueda Lineal:** Recorre uno a uno. O(n). Simple, pero poco eficiente en grandes volúmenes.  
- **Búsqueda Binaria:** Divide a la mitad en cada paso. O(log n). Solo en datos ordenados.  
- **Búsqueda por Interpolación:** También en datos ordenados, pero ajusta la posición de búsqueda estimando el valor. Más eficiente que binaria solo en datos uniformemente distribuidos.

***

## 8. Criterios para Elegir Algoritmo

Al decidir qué algoritmo utilizar, considera:
- Tamaño y estado (ordenado/desordenado) de los datos.
- Importancia de la velocidad en el peor caso vs promedio.
- Necesidad de estabilidad (mantener posición relativa de equivalentes).
- Restricciones de espacio/memoria.
- Facilidad de implementación y requerimiento de paralelización.

***

## 9. Consejos de Estudio y Repaso

- **Aprende a reconocer la estructura de los algoritmos:** ¿Es secuencial, de selección, repetición?
- **Practica diagramas de flujo y pseudocódigo:** La abstracción previa hace más sencillo el código real.
- **Analiza el costo de cada algoritmo:** ¿Cómo se comporta ante más datos? ¿Cuál es la notación Big O?
- **Compara eficiencia y facilidad de implementación.**
- **Resuelve problemas prácticos:** Aplica varias técnicas y mide el desempeño.

***

> ## 10. Nota:

1. Entiende bien el problema.
2. Diseña una solución clara (diagramas, pseudocódigo).
3. Evalúa varias alternativas y su complejidad.
4. Implementa la mejor opción considerando eficiencia y recursos.
5. Prueba y mejora tu código.
