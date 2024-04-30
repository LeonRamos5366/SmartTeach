# Modelo de Von Neumann: Ejemplo y Explicación

El modelo de Von Neumann es un concepto fundamental en la arquitectura de computadoras modernas. Este modelo describe la estructura básica de una computadora digital y cómo procesa y almacena datos. Aquí tienes un ejemplo que ilustra el modelo de Von Neumann:

** Supongamos que tienes una computadora básica que sigue el modelo de Von Neumann. Esta computadora tiene los siguientes componentes: **

- CPU (Unidad Central de Procesamiento): Es el cerebro de la computadora y se encarga de ejecutar instrucciones y realizar operaciones aritméticas y lógicas.
- Memoria: Almacena tanto programas como datos que la CPU necesita para realizar sus operaciones.
- Unidad de Control: Coordina las operaciones de la CPU, decodifica las instrucciones y controla el flujo de datos entre la CPU y la memoria.
- Unidad de Entrada/Salida (E/S): Permite a la computadora comunicarse con dispositivos externos, como teclados, ratones, impresoras y unidades de almacenamiento.

** Ahora, considera el siguiente ejemplo de cómo funciona esta computadora siguiendo el modelo de Von Neumann: **

- Instrucciones y Datos en la Memoria:
La computadora inicia con un programa almacenado en la memoria. Este programa contiene una serie de instrucciones que la CPU ejecutará secuencialmente.
Junto con el programa, la memoria también contiene datos que serán procesados por la CPU durante la ejecución del programa.
- Ejecución de Instrucciones por la CPU:
La CPU comienza ejecutando la primera instrucción del programa almacenado en la memoria.
La Unidad de Control decodifica la instrucción y envía las señales apropiadas a otras partes de la CPU para realizar la operación especificada.
- Acceso a Datos en la Memoria:
Durante la ejecución del programa, la CPU puede necesitar acceder a datos almacenados en la memoria para realizar cálculos o manipulaciones.
La Unidad de Control coordina el acceso a la memoria, indicando la dirección de memoria donde se encuentran los datos y moviendo los datos entre la memoria y la CPU según sea necesario.
- Entrada/Salida:
En ciertos puntos del programa, la CPU puede necesitar interactuar con dispositivos de entrada/salida, como pedir al usuario que ingrese datos desde el teclado o enviar resultados a una impresora.
La CPU coordina estas operaciones de E/S mediante la comunicación con la Unidad de E/S, que a su vez controla la transferencia de datos entre la computadora y los dispositivos externos.


# Implementación del Modelo de Von Neumann en Python

El siguiente es un ejemplo de implementación en Python del modelo de Von Neumann, que describe la estructura básica de una computadora digital y cómo procesa y almacena datos.

```python
class CPU:
    def __init__(self):
        self.registers = [0] * 4  # Registros de propósito general (por ejemplo, R0, R1, R2, R3)
        self.program_counter = 0  # Contador de programa, apunta a la próxima instrucción a ejecutar

    def execute_instruction(self, instruction):
        opcode, operand = instruction.split(' ')
        if opcode == 'LOAD':
            # Cargar el valor en la memoria en el registro especificado
            register_index, memory_address = operand.split(',')
            self.registers[int(register_index)] = MEMORY[int(memory_address)]
        elif opcode == 'STORE':
            # Almacenar el valor del registro en la memoria en la dirección especificada
            register_index, memory_address = operand.split(',')
            MEMORY[int(memory_address)] = self.registers[int(register_index)]
        elif opcode == 'ADD':
            # Sumar el valor en el primer registro con el valor en el segundo registro y almacenar el resultado en el tercer registro
            dest_register, src_register1, src_register2 = operand.split(',')
            self.registers[int(dest_register)] = self.registers[int(src_register1)] + self.registers[int(src_register2)]
        elif opcode == 'SUB':
            # Restar el valor en el segundo registro del valor en el primer registro y almacenar el resultado en el tercer registro
            dest_register, src_register1, src_register2 = operand.split(',')
            self.registers[int(dest_register)] = self.registers[int(src_register1)] - self.registers[int(src_register2)]
        elif opcode == 'JUMP':
            # Saltar a la dirección de memoria especificada
            self.program_counter = int(operand) - 1  # Restar 1 para compensar el incremento después de ejecutar la instrucción

class Computer:
    def __init__(self):
        self.cpu = CPU()
        self.memory = [0] * 100  # Memoria de la computadora

    def load_program(self, program):
        # Cargar el programa en la memoria de la computadora
        for address, instruction in enumerate(program):
            self.memory[address] = instruction

    def run(self):
        while True:
            # Obtener la instrucción actual desde la memoria
            instruction = self.memory[self.cpu.program_counter]

            # Ejecutar la instrucción y actualizar el contador de programa
            self.cpu.execute_instruction(instruction)
            self.cpu.program_counter += 1

            # Salir del ciclo si se alcanza el final del programa
            if instruction == 'HALT':
                break

# Programa de prueba
program = [
    'LOAD 1,10',   # Cargar el valor en la dirección de memoria 10 en el registro 1
    'LOAD 2,11',   # Cargar el valor en la dirección de memoria 11 en el registro 2
    'ADD 3,1,2',   # Sumar los valores en los registros 1 y 2 y almacenar el resultado en el registro 3
    'STORE 3,12',  # Almacenar el valor del registro 3 en la dirección de memoria 12
    'HALT'         # Detener la ejecución del programa
]

# Crear una instancia de la computadora, cargar el programa y ejecutarlo
computer = Computer()
computer.load_program(program)
computer.run()

# Imprimir el contenido de la memoria después de ejecutar el programa
print(computer.memory)
