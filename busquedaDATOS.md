# Búsqueda Secuencial
c  Copy codeint sequentialSearch(int arr[], int n, int x) {
    int i;
    for (i = 0; i < n; i++) {
        if (arr[i] == x) {
            return i;  // Retorna la posición si el elemento es encontrado
        }
    }
    return -1;  // Retorna -1 si el elemento no es encontrado
}


Este es el algoritmo de búsqueda secuencial en C. Comienza desde el primer elemento y recorre la lista uno por uno hasta encontrar el elemento buscado o llegar al final de la lista.

# Búsqueda Binaria
c  Copy codeint binarySearch(int arr[], int l, int r, int x) {
    while (l <= r) {
        int m = l + (r - l) / 2;
        if (arr[m] == x) {
            return m;  // Retorna la posición si el elemento es encontrado
        }
        if (arr[m] < x) {
            l = m + 1;
        } else {
            r = m - 1;
        }
    }
    return -1;  // Retorna -1 si el elemento no es encontrado
}


Este es el algoritmo de búsqueda binaria en C. Funciona en listas ordenadas y divide repetidamente la lista por la mitad, descartando la mitad donde no puede estar el elemento buscado.

# Búsqueda por Interpolación
c  Copy codeint interpolationSearch(int arr[], int n, int x) {
    int lo = 0, hi = (n - 1);
    while (lo <= hi && x >= arr[lo] && x <= arr[hi]) {
        int pos = lo + (((double)(hi-lo) / (arr[hi]-arr[lo])) * (x - arr[lo]));
        if (arr[pos] == x) {
            return pos;  // Retorna la posición si el elemento es encontrado
        }
        if (arr[pos] < x) {
            lo = pos + 1;
        } else {
            hi = pos - 1;
        }
    }
    return -1;  // Retorna -1 si el elemento no es encontrado
}


Este es el algoritmo de búsqueda por interpolación en C. Similar a la búsqueda binaria, pero utiliza una fórmula para estimar la posición del elemento buscado en lugar de dividir la lista en dos partes iguales.

# Búsqueda por Salto
c  Copy codeint jumpSearch(int arr[], int n, int x) {
    int step = sqrt(n);
    int prev = 0;
    while (arr[min(step, n)-1] < x) {
        prev = step;
        step += sqrt(n);
        if (prev >= n) {
            return -1;  // Retorna -1 si el elemento no es encontrado
        }
    }
    while (arr[prev] < x) {
        prev++;
        if (prev == min(step, n)) {
            return -1;  // Retorna -1 si el elemento no es encontrado
        }
    }
    if (arr[prev] == x) {
        return prev;  // Retorna la posición si el elemento es encontrado
    }
    return -1;  // Retorna -1 si el elemento no es encontrado
}


Este es el algoritmo de búsqueda por salto en C. Funciona en listas ordenadas y salta hacia adelante en la lista en pasos fijos, reduciendo la cantidad de comparaciones necesarias en comparación con la búsqueda secuencial.

