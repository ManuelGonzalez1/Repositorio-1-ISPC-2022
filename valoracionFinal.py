#Introducción a la programación 
#Alumno: Alicia V.Montenegro  

#1) Crear una lista. Muestre en pantalla el teléfono del dueño si el DNI es mayor a 26000000.
list_duenos=[28957346,'Juan','Perez', 4789689, 'Belgrano 101']

if list_duenos[0]>26000000:
    print(list_duenos[3])


#4) Crear un lista en Python denominado “Perro2”.Recorrer la lista  con un bucle y mostrar sus elementos por pantalla , comenzando desde el último hasta el pri


Perro2=[14,'Fido','12/12/2012' , 'Macho', 23546987]

hasta=len(Perro2)-1

for i in range(len(Perro2)):

    orden=hasta-i

    print(Perro2[orden])