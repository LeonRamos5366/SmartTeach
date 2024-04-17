# Bubble Sort
c  Copy codevoid bubbleSort(int arr[], int n) {
    int i, j, temp;
    for (i = 0; i < n-1; i++) {
        for (j = 0; j < n-i-1; j++) {
            if (arr[j] > arr[j+1]) {
                // Intercambia arr[j] con arr[j+1]
                temp = arr[j];
                arr[j] = arr[j+1];
                arr[j+1] = temp;
            }
        }
    }
}


Este es el algoritmo de ordenamiento de burbuja en C. El bucle externo recorre los elementos del array, mientras que el bucle interno compara cada par de elementos adyacentes y los intercambia si están en el orden incorrecto.

# Selection Sort
c  Copy codevoid selectionSort(int arr[], int n) {
    int i, j, min_idx, temp;
    for (i = 0; i < n-1; i++) {
        min_idx = i;
        for (j = i+1; j < n; j++) {
            if (arr[j] < arr[min_idx]) {
                min_idx = j;
            }
        }
        // Intercambia arr[i] con el elemento más pequeño encontrado
        temp = arr[min_idx];
        arr[min_idx] = arr[i];
        arr[i] = temp;
    }
}


Este es el algoritmo de ordenamiento por selección en C. Encuentra el elemento más pequeño en la lista y lo intercambia con el primer elemento, y así sucesivamente.

# Insertion Sort
c  Copy codevoid insertionSort(int arr[], int n) {
    int i, key, j;
    for (i = 1; i < n; i++) {
        key = arr[i];
        j = i - 1;
        while (j >= 0 && arr[j] > key) {
            arr[j+1] = arr[j];
            j = j - 1;
        }
        arr[j+1] = key;
    }
}


Este es el algoritmo de ordenamiento por inserción en C. Toma un elemento de la lista y lo inserta en su lugar correcto en una sublista ordenada.

# Merge Sort
c  Copy codevoid merge(int arr[], int l, int m, int r) {
    // Código para combinar dos arreglos ordenados
}

void mergeSort(int arr[], int l, int r) {
    if (l < r) {
        int m = l+(r-l)/2;
        mergeSort(arr, l, m);
        mergeSort(arr, m+1, r);
        merge(arr, l, m, r);
    }
}


Este es el algoritmo de ordenamiento por fusión en C. Divide la lista en mitades, ordena cada mitad de manera recursiva y luego combina las mitades ordenadas para obtener la lista ordenada completa.

# Quick Sort
c  Copy codevoid swap(int* a, int* b) {
    int t = *a;
    *a = *b;
    *b = t;
}

int partition(int arr[], int low, int high) {
    // Código para seleccionar el pivote y dividir el arreglo
}

void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}


Este es el algoritmo de ordenamiento rápido en C. Selecciona un elemento como pivote y divide la lista en dos partes, una con elementos menores que el pivote y otra con elementos mayores. Luego, ordena recursivamente ambas partes.
