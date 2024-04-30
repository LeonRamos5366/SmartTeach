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
