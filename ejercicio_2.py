''' Crear una lista en Python denominada “Dueno2” y recorrerla con un bucle mostrando sus elementos por
pantalla con excepción del DNI y el apellido. Los elementos de la lista son:
23546987, “Maria”, “Perez”, 4789689, “Pueyrredon 811” que representan los datos del dueño de un perro (DNI, nombre, apellido, teléfono y dirección) '''

''' creo lista llamada "Dueno2" '''
Dueno2 = [23546987, "Maria", "Perez", 4789689, "Pueyrredon 811"]

''' Recorro la lista con un ciclo for, usando un condicional para evitar mostrar el apellido y el DNI '''
for i in Dueno2:
    if i != 23546987 and i != "Perez":
        print(i)  
