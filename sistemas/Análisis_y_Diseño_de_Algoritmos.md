# Análisis y Diseño de Algoritmos: Competencias para la Ingeniería de Sistemas Computacionales

## Introducción

El análisis y diseño de algoritmos constituye uno de los pilares fundamentales de la formación en sistemas computacionales, especialmente en el contexto de la prueba EGEL (Examen General para el Egreso de la Licenciatura). No se trata únicamente de memorizar procedimientos o técnicas de programación, sino de desarrollar la capacidad de **resolver problemas complejos mediante el pensamiento lógico y riguroso**. Este documento está diseñado para guiar a estudiantes y profesionales hacia el dominio de competencias que les permitan integrarse exitosamente al mercado internacional de las tecnologías de la información[1].

La relevancia de esta área radica en que los egresados de licenciaturas en ingeniería computacional deben ser capaces de analizar problemas reales, descomponer su complejidad, diseñar soluciones algorítmicas eficientes y evaluar el desempeño de estas soluciones. El presente documento se estructura conforme a los niveles cognitivos establecidos por la taxonomía de Bloom revisada (2001), garantizando que el estudiante no solo **comprenda** los conceptos básicos, sino que progrese hacia la **aplicación**, **análisis**, **evaluación** e incluso la **creación** de nuevas soluciones algorítmicas[2].

## 1. Fundamentos Conceptuales
## 🎯 **Objetivo general**

Que el estudiante comprenda los principios del análisis y diseño de algoritmos, sea capaz de aplicarlos en problemas computacionales reales, analice su eficiencia y evalúe diferentes alternativas para seleccionar la más adecuada.

---

# **1. Introducción al Análisis y Diseño de Algoritmos (Comprender)**

##  **Resumen**

Un **algoritmo** es un conjunto ordenado y finito de pasos para resolver un problema.
El **análisis de algoritmos** estudia el rendimiento (tiempo, espacio) de una solución, mientras que el **diseño de algoritmos** se ocupa de crear algoritmos correctos, eficientes y óptimos.

### Principales razones para analizar algoritmos:

* Determinar qué tan eficiente será una solución antes de implementarla.
* Comparar alternativas para un mismo problema.
* Estimar recursos computacionales necesarios.

### Conceptos clave:

* **Corrección:** el algoritmo resuelve el problema.
* **Eficiencia temporal:** tiempo de ejecución.
* **Eficiencia espacial:** memoria utilizada.
* **Notación Big-O:** modela el crecimiento del tiempo según el tamaño del input.

---

#  **2. Complejidad Algorítmica (Comprender / Analizar)**

##  **Resumen**

La notación Big-O describe el peor caso del costo de un algoritmo. Algunas complejidades comunes:

| Complejidad | Nombre      | Ejemplo típico                |
| ----------- | ----------- | ----------------------------- |
| O(1)        | Constante   | Acceso a arreglo              |
| O(log n)    | Logarítmica | Búsqueda binaria              |
| O(n)        | Lineal      | Recorrido secuencial          |
| O(n log n)  | Cuasilineal | Mergesort                     |
| O(n²)       | Cuadrática  | Burbujas                      |
| O(2ⁿ)       | Exponencial | Fuerza bruta con subconjuntos |
| O(n!)       | Factorial   | Permutaciones                 |

---

#  **3. Técnicas de Diseño de Algoritmos (Comprender / Aplicar)**

##  **Principales técnicas:**

###  **1. Divide y vencerás**

Divide el problema en subproblemas más pequeños.
*Ejemplo:* Mergesort, Quicksort.

###  **2. Programación dinámica**

Resuelve subproblemas y guarda los resultados para evitar recalcularlos.
*Ejemplo:* Fibonacci optimizado, mochila 0/1.

###  **3. Algoritmos voraces**

Toma decisiones locales óptimas esperando un óptimo global.
*Ejemplo:* Kruskal, Huffman.

###  **4. Retroceso (Backtracking)**

Explora soluciones posibles deshaciendo decisiones erróneas.
*Ejemplo:* Laberintos, N-reinas.

###  **5. Fuerza bruta**

Explora todas las combinaciones posibles.
Útil cuando el espacio de soluciones es pequeño.

---

#  **4. Proceso para Diseñar un Algoritmo (Aplicar / Analizar)**

### 1. **Definir el problema** (inputs, outputs, restricciones).

### 2. **Elegir una técnica de solución** (divide y vencerás, voraz, etc.).

### 3. **Modelar el algoritmo**:

* Diagrama de flujo
* Pseudocódigo
* Análisis paso a paso

### 4. **Analizar eficiencia temporal y espacial**.

### 5. **Validar casos de prueba**.

### 6. **Optimizar si es necesario**.

---

#  **5. Preguntas clave por nivel cognitivo**

##  **Comprender**

* ¿Qué es un algoritmo y por qué es importante analizarlo?
* ¿Qué representa la notación Big-O?
* ¿Cuál es la diferencia entre mejor caso, peor caso y caso promedio?

##  **Aplicar**

* Determina la complejidad temporal de un algoritmo dado.
* Escribe un algoritmo que calcule el máximo en un arreglo usando pseudocódigo.
* Aplica divide y vencerás para resolver un problema simple.

##  **Analizar**

* Compara dos algoritmos que solucionan el mismo problema e identifica cuál es más eficiente.
* Dado un pseudocódigo, identifica qué partes impactan en la complejidad.
* ¿Qué pasaría si cambiamos la estructura de datos?

##  **Evaluar**

* ¿Es mejor usar un algoritmo voraz o programación dinámica en un caso específico?
* Evalúa si vale la pena optimizar un algoritmo que ya es O(n log n).
* Selecciona la mejor técnica para un problema de búsqueda en grafos.

---

#  **6. Ejercicios prácticos**

##  **Nivel: Comprender**

1. Explica en tus propias palabras qué es la complejidad temporal.
2. Clasifica estos algoritmos en su complejidad:

   * Búsqueda secuencial
   * Búsqueda binaria
   * Doble ciclo anidado

---

## **Nivel: Aplicar**

3. Escribe el pseudocódigo de un algoritmo que cuente cuántos números pares hay en una lista.
4. Calcula la complejidad del siguiente pseudocódigo:

```
for i = 1 to n:
    print(i)
for j = 1 to n:
    for k = 1 to n:
        print(j, k)
```

---

##  **Nivel: Analizar**

5. Compara la complejidad de Mergesort y Quicksort en el peor caso.
6. Analiza qué pasaría si usaras fuerza bruta para encontrar un valor en un arreglo ordenado.

---

##  **Nivel: Evaluar**

7. Evalúa si conviene usar backtracking o un algoritmo voraz para el problema de encontrar una ruta óptima en un laberinto.
8. Determina si un algoritmo O(n²) es adecuado cuando n = 1,000,000. Justifica.

---

#  **7. Mini proyecto integrador**

Desarrolla un algoritmo para resolver el siguiente problema:

###  **Problema:**

Dado un arreglo desordenado de números enteros, encontrar los **k elementos más grandes**.

###  Requisitos:

* Diseña dos soluciones (por ejemplo, ordenamiento + selección, o heap).
* Calcula su complejidad.
* Programa ambas (en pseudocódigo o lenguaje de tu elección).
* Evalúa cuál es mejor según diferentes valores de *n* y *k*.

*Niveles cognitivos alcanzados: Aplicar, Analizar, Evaluar.*

## Ejemplos 
Perfecto — aquí tienes **los ejercicios resueltos** (con explicaciones paso a paso, complejidad y código de ejemplo en Python donde aplica). Los ejercicios están organizados por nivel cognitivo tal como en la guía anterior.

---

# 🟦 Nivel: Comprender — Resueltos

**1.** Explica en tus propias palabras qué es la complejidad temporal.
**Respuesta:** La complejidad temporal es una forma de medir cómo crece el tiempo de ejecución de un algoritmo cuando aumenta el tamaño de la entrada (n). Se expresa con notaciones asintóticas (por ejemplo (O(n)), (O(n^2))) que describen la tasa de crecimiento dominante, ignorando constantes y términos de menor orden.

**2.** Clasifica estos algoritmos en su complejidad:

* Búsqueda secuencial → **O(n)** (recorre elementos hasta encontrar el objetivo).
* Búsqueda binaria → **O(log n)** (requiere arreglo ordenado y divide el espacio por 2 cada paso).
* Doble ciclo anidado → **O(n²)** (dos bucles que dependen de n generan n × n operaciones).

---

# 🟩 Nivel: Aplicar — Resueltos

**3.** Pseudocódigo + Python: algoritmo que cuenta cuántos números pares hay en una lista.

Pseudocódigo:

```
func contar_pares(lista):
    contador = 0
    para cada x en lista:
        si x % 2 == 0:
            contador = contador + 1
    retornar contador
```

Código Python:

```python
def contar_pares(lista):
    contador = 0
    for x in lista:
        if x % 2 == 0:
            contador += 1
    return contador

# Ejemplo
arr = [3,4,7,8,10]
print(contar_pares(arr))  # salida: 3
```

**Complejidad temporal:** (O(n)). **Espacio:** (O(1)) adicional.

---

**4.** Calcula la complejidad del pseudocódigo:

```
for i = 1 to n:
    print(i)
for j = 1 to n:
    for k = 1 to n:
        print(j, k)
```

Análisis: primer bucle → (O(n)). Segundo → doble anidado (O(n^2)). Total dominado por (O(n^2)).
**Respuesta:** (O(n^2)).

---

# 🟧 Nivel: Analizar — Resueltos

**5.** Compara la complejidad de Mergesort y Quicksort en el peor caso.

* **Mergesort:** siempre (O(n \log n)) en mejor, promedio y peor caso. Necesita espacio adicional (O(n)) (si se implementa no in-place).
* **Quicksort:** promedio (O(n \log n)), peor caso (O(n^2)) (cuando el pivote es siempre el peor, p. ej. lista ya ordenada y pivote mal elegido).
  **Conclusión:** en el peor caso Mergesort es mejor ((O(n\log n)) vs (O(n^2))). Por eso, en entornos donde el peor caso es crítico, Mergesort es preferido; Quicksort suele preferirse por rendimiento práctico (constantes más pequeñas) y uso de memoria cuando se elige buen pivote (randomizado o mediana).

---

**6.** ¿Qué pasaría si usaras fuerza bruta para encontrar un valor en un arreglo ordenado?

* Fuerza bruta (recorrido secuencial) cuesta (O(n)).
* Si el arreglo está ordenado, usar **búsqueda binaria** cuesta (O(\log n)) — mucho más eficiente para grandes (n).
  **Conclusión:** Usar fuerza bruta en arreglo ordenado es subóptimo; conviene aprovechar el orden y usar búsqueda binaria.

---

# 🟥 Nivel: Evaluar — Resueltos

**7.** ¿Backtracking o voraz para encontrar una ruta óptima en un laberinto?

* **Voraz:** tomar la decisión que parece mejor localmente puede no encontrar la ruta global óptima (p. ej. quedarse bloqueado en callejón).
* **Backtracking (DFS con retroceso) o algoritmos de búsqueda (BFS, Dijkstra, A*)**: garantizan encontrar solución (BFS encuentra la ruta más corta por número de pasos en grafos no ponderados; Dijkstra/A* para grafos ponderados/heurísticos).
  **Evaluación:** Para garantizar optimalidad en longitud de camino en un laberinto no ponderado → **BFS** (mejor elección). Si se tienen pesos o heurística → **Dijkstra** o **A***. Backtracking puede encontrar soluciones pero no garantiza óptimo y puede ser costoso; voraz no garantiza solución óptima.

---

**8.** ¿Es adecuado un algoritmo (O(n^2)) cuando (n = 1{,}000{,}000)? Justifica.

* (n^2 = 10^{12}) operaciones — impracticable en casi todos los entornos (tomaría horas o días según la máquina).
* Para (n) grande (millones), se prefieren algoritmos (O(n \log n)) o (O(n)).
  **Conclusión:** No adecuado. Si datos son pequeños (p. ej. n ≤ 10^4) un (O(n^2)) puede ser aceptable; para (n=10^6) es inviable.

Estimación rápida: si CPU hace (10^9) operaciones/s teóricas (ideal), (10^{12}) ops ≈ 1000 segundos = ~17 minutos — pero en realidad overhead/constantes harán más tiempo. En práctica es inaceptable.

---

# 🔷 Mini proyecto integrador — Soluciones propuestas + código de ejemplo

**Problema:** Dado un arreglo desordenado de enteros, encontrar los **k** elementos más grandes.

Te doy **dos soluciones** (ordenamiento + selección y heap), más una mención de Quickselect.

---

## Solución A — Ordenar y seleccionar

* Idea: ordenar el arreglo de mayor a menor y tomar los primeros k.
* **Complejidad:** ordenar (O(n \log n)) + seleccionar (O(k)) → **O(n log n)**.
* **Código Python:**

```python
def k_mayores_orden(arreglo, k):
    arreglo_sorted = sorted(arreglo, reverse=True)
    return arreglo_sorted[:k]

# Ejemplo
arr = [5,1,9,3,7,2,8]
print(k_mayores_orden(arr, 3))  # salida: [9,8,7]
```

* **Ventaja:** simple, estable y fácil.
* **Desventaja:** innecesaria sobrecarga si k << n.

---

## Solución B — Min-heap de tamaño k (eficiente cuando k << n)

* Idea: mantener un heap mínimo con los k mayores vistos hasta ahora.

  * Recorres el arreglo: insertas en heap hasta k elementos; luego para cada nuevo elemento x:

    * si x > heap.min → pop min y push x.
* **Complejidad:** cada push/pop es (O(\log k)). Recorres n elementos → **O(n log k)**.
* **Espacio:** (O(k)).
* **Código Python:**

```python
import heapq

def k_mayores_heap(arreglo, k):
    if k <= 0:
        return []
    heap = []
    for x in arreglo:
        if len(heap) < k:
            heapq.heappush(heap, x)
        else:
            if x > heap[0]:
                heapq.heapreplace(heap, x)  # pop+push más eficiente
    # heap contiene los k mayores en orden no descendente
    return sorted(heap, reverse=True)

# Ejemplo
arr = [5,1,9,3,7,2,8]
print(k_mayores_heap(arr, 3))  # salida: [9,8,7]
```

* **Ventaja:** muy eficiente cuando (k \ll n).
* **Desventaja:** implementa overhead de heap; si k ≈ n, se acerca a O(n log n).

---

## Solución C — Quickselect (promedio O(n))

* **Idea:** algoritmo de selección basado en particiones (como Quicksort). Encuentra la k-ésima mayor en tiempo promedio (O(n)), luego toma todos mayores/iguales.
* **Complejidad promedio:** (O(n)). Peor caso (O(n^2)) (solución: usar selección mediana de medianas para garantizar (O(n)) peor caso).
* **Cuando usar:** cuando quieres el k-ésimo elemento rápidamente sin ordenar todo.

---

## Comparación práctica

* Si (k) pequeño comparado con (n): **Min-heap O(n log k)** es la mejor práctica.
* Si (k) cercano a (n): ordenar y tomar es práctico (**O(n log n)**).
* Si buscas rendimiento promedio óptimo y quieres evitar almacenar muchos elementos: **Quickselect**.

---

# ✅ Ejemplo completo: análisis con n y k

Supongamos (n = 10^7) y (k = 10^3):

* Ordenar: (O(n \log n)) ≈ (10^7 \times \log_2(10^7) ≈ 10^7 \times 23 ≈ 2.3 \times 10^8) comparaciones.
* Heap: (O(n \log k)) ≈ (10^7 \times \log_2(10^3) ≈ 10^7 \times 10 ≈ 10^8) operaciones — aproximadamente 2.3× más eficiente que ordenar en este ejemplo.
* Quickselect: (\approx O(n)) promedio → (~10^7) operaciones de partición (con costos constantes mayores), potencialmente mejor.

---

# 📎 Ejercicios resueltos adicionales (para practicar)

**Ejercicio:** Dado el arreglo `[2,5,1,9,4,8,3,7,6]`, k=4:

* Orden + seleccionar → `[9,8,7,6]`.
* Heap → `[9,8,7,6]`.
* Quickselect → encuentra 4º mayor = 6, luego se recogen ≥ 6 → los 4.

**Ejercicio (complejidad):** Determina la complejidad del siguiente fragmento:

```
for i in range(n):
    for j in range(i, n):
        do_constant_work()
```

Análisis: número total de iteraciones = sum_{i=0}^{n-1} (n-i) = n + (n-1) + ... + 1 = n(n+1)/2 → (O(n^2)).

