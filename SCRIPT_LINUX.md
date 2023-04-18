# EJEMPLOS SCRIPT LINUX

- Ejemplo 0022: Mostrar el directorio actual y el usuario que se ha logueado en el sistema. El simbolo # al inicio de una línea es para mostrar comentarios de una línea dentro del script, el comando echo es para mostrar mensajes en la pantalla, el comando pwd muestra el directorio actual y el comando whoami es para mostrar el usuario que se ha logueado en el sistema.

<pre>
<code>
#!/usr/bin/bash
# Nuestro comentario de una linea

echo "El directorio actual es: "
pwd
echo "El usuario logueado es: "
whoami

RESULTADO:

El directorio actual es:
/f/CURSO DE PROGRAMACION DE LENGUAJES ESTRUCTURADOS DE APLICACIONES DE GESTION/Modulo 1/Practica/Ejercicios_Git/SCRIPTLINUX
El usuario logueado es:
Curso Tarde
</code>
</pre>


- Ejemplo 0010:	Para mostrar mensajes en la patalla se usa el comando echo

<pre>
<code>
#!/usr/bin/env bash

echo Hoy como estas
edad=20
echo Creo que tienes $edad años
echo -e "Esta \nfrase \nse \nmostrará \npalabra \npor \npalabra \nen \nuna \nlinea \ndistinta \ncada \npalabra"
echo -e "Suprimir lo que viene a continuacion \cel salto de linea"
echo Imprimir todos los ficheros y parpetas a modo de comando ls
echo *
echo Imprimir todos los ficheros de un formato en concreto
echo *.sh
echo "Esta frase se direcciona a un archivo donde queda grabado" >> salvar.txt
echo "Esto que sigue se añade el archivo" >> salvar.txt
echo -n "Omitimos el salto de linea"

RESULTADO:

Hoy como estas
Creo que tienes 20 años
Esta
frase
se
mostrará
palabra
por
palabra
en
una
linea
distinta
cada
palabra
Suprimir lo que viene a continuacion Imprimir todos los ficheros y parpetas a modo de comando ls
SCRIPT.DOC SCRIPT_LINUX.md ejemplo0010.sh ejemplo0022.sh inicio.sh
Imprimir todos los ficheros de un formato en concreto
ejemplo0010.sh ejemplo0022.sh inicio.sh
Omitimos el salto de linea
</code>
</pre>


- Ejemplo 0011: Representar caracteres unicode 

<pre>
<code>
#!/usr/bin/env bash

echo -e "\u2622"
echo -e "\U1f41e"

RESULTADO:

☢
🐞
</code>
</pre>

- Ejemplo 0006: Crear una variable que llamaremos edad y le asignaremos un valor de 15, luego imprimeremos el contenido de la variable en pantalla.

<pre>
<code>
#!/usr/bin/env bash

edad=15
echo $edad

# MEJORA

edad=15
echo "Su edad es " $edad

RESULTADO:
15

Su edad es  15
</code>
</pre>


- Ejemplo 0007: Podemos asignarle diferentes valores a una misma variable

<pre>
<code>
#!/usr/bin/env bash

mensaje="Hola mundo"
echo $mensaje
mensaje=5.5
echo $mensaje
mensaje=8
echo $mensaje

RESULTADO:

Hola mundo
5.5
8
</code>
</pre>


- Ejemplo 0008: El shell tiene una forma de evitar que se pueda modificar el valor de una variable, es decir ponerlo como sólo lectura. En el ejemplo siguiente da un error si intentamos moficar el contenido de la variable.

<pre>
<code>
#!/usr/bin/env bash

mensaje='Hola mundo'
echo $mensaje
readonly mensaje
mensaje='Cambio de texto'
echo $mensaje

RESULTADO:

Hola mundo
ejemplo0008.sh: line 6: mensaje: readonly variable
</code>
</pre>


- Ejemplo 0009: Variables especiales

<pre>
<code>
#!/usr/bin/env bash

echo "Nombre del script: $0"
echo "Parametro1: $1"
echo "Parametro2: $2"
echo "Valores de los parametros: $@"
echo "Valores de los parametros: $*"
echo "Total parametros: $#"
echo $?

RESULTADO:

Nombre del script: ./ejemplo0009.sh
Parametro1: hola
Parametro2: mundo
Valores de los parametros: hola mundo
Valores de los parametros: hola mundo
Total parametros: 2
0
</code>
</pre>


- Ejemplo 0023: Hacer un script que muestre el mensaje “El usuario NombreUsuario esta trabajando”. Con > nul anulamos la salida del comando para que no se muestre en pantalla.

<pre>
<code>
#!/usr/bin/env bash

echo FORMA 1
if whoami > nul; then
	echo "El usuario $USER esta trabajando"
fi

echo FORMA 2 
if whoami; then	
	echo "El usuario $USER esta trabajando"
fi

RESULTADO:

FORMA 1
El usuario  esta trabajando
FORMA 2
Curso Tarde
El usuario  esta trabajando
</code>
</pre>


- Ejemplo 0024: Hacer un script que verifique si un usuario existe o no existe.

<pre>
<code>
#!/usr/bin/env bash

usuario=vero
if grep $usuario /ect/passwd > nul;
then 
	echo "El usuario $usuario existe"
else
	echo "El usuario $usuario no existe"
fi

RESULTADO:

grep: /ect/passwd: No such file or directory
El usuario vero no existe
</code>
</pre>


- Ejemplo 0012: Comparar el contenido de 2 variables que tienen una cadena almacenada cada variable.

<pre>
<code>
#!/usr/bin/env bash

nombre1="LUIS"
nombre2="luis"

if [[ $nombre1 = $nombre2 ]]
then
	echo Son iguales
else
	echo Son distintos
fi

# MEJORADO

echo -n "ESCRIBA EL PRIMER NOMBRE?: "
read nombre3
echo -n "ESCRIBA EL SEGUNDO NOMBRE?: "
read nombre4

if [[ $nombre3 = $nombre4 ]]
then
	echo Son iguales
else
	echo Son distintos
fi

RESULTADO:

Son distintos
ESCRIBA EL PRIMER NOMBRE?: vero
ESCRIBA EL SEGUNDO NOMBRE?: vero
Son iguales
</code>
</pre>


- Ejemplo 0013: Se pueden comparar las cadenas directamente si no tiene espacios en blanco sin comillas simples o dobles

<pre>
<code>
#!/usr/bin/env bash

if [[ Luis = luis ]]
then
	echo Son iguales
else
	echo Son distintos
fi

RESULTADO:

Son distintos
</code>
</pre>


- Ejemplo 0014: Si la cadena tiene espacios en blanco se tienen que poner entre apostrofes simples

<pre>
<code>
#!/usr/bin/env bash

if [[ 'Luis estas bien' = 'Luis estas bien' ]]
then
	echo Son iguales
else
	echo Son distintos
fi

RESULTADO:

Son iguales
</code>
</pre>


- Ejemplo 0015: Si la cadena va incluir variables emplear apostrofe doble.

<pre>
<code>
#!/usr/bin/env bash

edad=15
if [[ "Tengo $edad años" = 'Tengo 15 años' ]]
then
	echo Son iguales
else
	echo Son distintos
fi

RESULTADO:

Son iguales
</code>
</pre>


- Ejemplo 0028: Verificar si una variable tiene valor o no. Con –n busca un valor mayor que cero

<pre>
<code>
#!/usr/bin/env bash

clear
variable="Hola"
if [[ -n $variable ]]
then
	echo "Tiene una longitud mayor que cero"
else
	echo "Tiene una longitud de cero"
fi

RESULTADO:

Tiene una longitud mayor que cero
</code>
</pre>


- Ejemplo 0001: Determinar si 2 es mayor que 1.  Usar corchete simple.

<pre>
<code>
#!/usr/bin/env bash

if [ 2 -gt 1 ]
then
	echo "2 es mayor que 1"
else
	echo "2 no es mayor que 1"
fi

# MEJORA

echo -n "Escriba un numero?: "
read numero1
echo -n "Escriba otro numero?: "
read numero2

if [ $numero1 -gt $numero2 ]
then
	echo "$numero1 es mayor que $numero2"
else
	echo "$numero1 no es mayor que $numero2"
fi

RESULTADO:

2 es mayor que 1
Escriba un numero?: 4
Escriba otro numero?: 9
4 no es mayor que 9
</code>
</pre>


- Ejemplo 0002: Determinar si 2 es distinto que 3. Usar corchete simple.

<pre>
<code>
#!/usr/bin/env bash

if [ 2 -ne 3 ]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi

# MEJORA

echo -n "Escriba un numero?: "
read numero1
echo -n "Escriba otro numero?: "
read numero2

if [ $numero1 -ne $numero2 ]
then
	echo "$numero1 es distinto a $numero2"
else
	echo "$numero1 es igual a $numero2"
fi

RESULTADO:

2 es distinto a 3
Escriba un numero?: 5
Escriba otro numero?: 5
5 es igual a 5
</code>
</pre>


- Ejemplo 0005:  Determinar si 2 es distinto que 3. Usar corchete doble

<pre>
<code>
#!/usr/bin/env bash

if [[ 2 -ne 3 ]]
then
	echo "2 es distinto a 3"
else
	echo "2 es igual a 3"
fi

# MEJORA

echo -n "Escriba un numero?: "
read numero1
echo -n "Escriba otro numero?: "
read numero2

if [[ $numero1 -ne $numero2 ]]
then
	echo "$numero1 es distinto a $numero2"
else
	echo "$numero1 es igual a $numero2"
fi

RESULTADO:

2 es distinto a 3
Escriba un numero?: 7
Escriba otro numero?: 7
7 es igual a 7
</code>
</pre>


- Ejemplo 0025: Hacer un script que verifique si el usuario logueado puede crear un archivo.

<pre>
<code>
#!/usr/bin/env bash

touch /root/prueba
if [ $? -eq 0 ];
then
	echo "Se ha creado el fichero"
else
	echo "No se ha creado el fichero"
fi

RESULTADO:

touch: cannot touch '/root/prueba': No such file or directory
No se ha creado el fichero
</code>
</pre>


- Ejemplo 0026: Script que verifica si el usuario logueado puede crear un archivo.

<pre>
<code>
#!/usr/bin/env bash

touch prueba
if [ $? -eq 0 ];
then
	echo "Se ha creado el fichero"
else
	echo "No se ha creado el fichero"
fi

RESULTADO:

Se ha creado el fichero
</code>
</pre>


- Ejemplo 0003: Determinar si 4 estra entre 3 y 5. Usar corchete doble

<pre>
<code>
#!/usr/bin/env bash

if [[ 4 -gt 3 && 4 -lt 5 ]];
then
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi

# MEJORA
echo -n "Dame un numero entre 1 y el 10: "
read numero

if [[ $numero -gt 1 && $numero -lt 10 ]];
then
	echo "$numero esta entre 1 y 10"
else
	echo "$numero no esta entre 1 y 10"
fi

RESULTADO:

4 esta entre 3 y 5
Dame un numero entre 1 y el 10: 12
12 no esta entre 1 y 10
</code>
</pre>


- Ejemplo 0004: Determinar si 4 esta entre 3 y 5. Usar corchete simple.

<pre>
<code>
#!/usr/bin/env bash

if [ 4 -gt 3 -a 4 -lt 5 ];
then
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi

# MEJORA
echo -n "Dame un numero entre 1 y el 10: "
read numero

if [ $numero -gt 1 -a $numero -lt 10 ];
then
	echo "$numero esta entre 1 y 10"
else
	echo "$numero no esta entre 1 y 10"
fi

RESULTADO:

4 esta entre 3 y 5
Dame un numero entre 1 y el 10: 16
16 no esta entre 1 y 10
</code>
</pre>


- Ejemplo 0016: Hacer un bucle form para iterar sobre valores simples, siendo estos valores cadenas simples.

<pre>
<code>
#!/usr/bin/env bash

for var in Primero Segundo Tercero Cuarto Quinto; do
	echo El $var item
done

RESULTADO:

El Primero item
El Segundo item
El Tercero item
El Cuarto item
El Quinto item
</code>
</pre>


- Ejemplo 0017: Hacer un bucle for para iterar sobre valores simples, siendo estos valores numeros.

<pre>
<code>
#!/usr/bin/env bash

for var in 1 2 3 4 5; do
	echo Numero $var
done

RESULTADO:

Numero 1
Numero 2
Numero 3
Numero 4
Numero 5
</code>
</pre>


- Ejemplo 0018: Hacer un bucle for para iterar sobre valores complejos, siendo estos valores palabras o frases.

<pre>
<code>
#!/usr/bin/env bash

for var in Primero "El Segundo" "El Tercero" "El Quinto soy yo"; do
	echo Esto es: $var
done

RESULTADO:

Esto es: Primero
Esto es: El Segundo
Esto es: El Tercero
Esto es: El Quinto soy yo
</code>
</pre>


- Ejemplo 0019: Hacer un blucle for para mostrar el contenido de un archivo.

<pre>
<code>
#!/usr/bin/env bash

miarchivo="vero.txt"
for var in $(cat $miarchivo); do
	echo " $var"
done

RESULTADO:

 Hola
 esto
 esta
 en
 un
 archivo
</code>
</pre>


- Ejemplo 0020: Hacer un blucle for para leer un archivo, pero que considere el carácter de nueva línea como un separador en lugar de espacios.

<pre>
<code>
#!/usr/bin/env bash

miarchivo="/etc/passwd"
IFS=$'\n'
for var in $(cat $miarchivo); do
	echo " $var"
done

RESULTADO:

cat: /etc/passwd: No such file or directory
</code>
</pre>


-Ejemplo 0021: Hacer un bucle for para leer un archivo pero que considere el carácter punto y coma como separador.

<pre>
<code>
#!/usr/bin/env bash

miarchivo="vero2.txt"
IFS=$';'
for var in $(cat $miarchivo); do
	echo " $var"
done

RESULTADO:

 Luis
 Ruiz
 Roncal
 24
 1.74
</code>
</pre>


- Ejemplo 0027: Comprobar si puedo ingresar a mi carpeta personal de trabajo.

<pre>
<code>
#!/usr/bin/env bash

micarpeta=/home/veronica
if [ -d $micarpeta ];
then
	echo "Carpeta $micarpeta existe"
	cd $micarpeta
	ls
else
	echo "No hay archivo o directorio $micarpeta"
fi

RESULTADO:

No hay archivo o directorio /home/veronica
</code>
</pre>
