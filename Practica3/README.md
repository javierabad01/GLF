## Practica 3

Escribir con lex un programa que, dado un texto de entrada:

1. Elimine los comentarios tipo C // (de // hasta el final de línea)

2. Sustituya los números enteros por la palabra INT y los de tipo coma flotante por FLOAT (ej. 3.14, 3e-2, 3.1E5) 

3. Sustituya las palabras reservadas if y else por su equivalente en mayúsculas

4. Sustituya cada identificador de la forma cadena de letras y dígitos que comience por una letra (inglesas), por la palabra ID, seguida por el identificador y su longitud entre paréntesis

5. Elimine los comentarios multilínea tipo /* … */

6. El resto lo deje como está.

El fichero de lex se comprimirá en un archivo con nombre MiApellido_MiNombre.zip, usando su primer apellido y su nombre (si alguno de los dos es compuesto use el primero de los términos, si comienza por 'de' o 'de la', elimine estas palabras). Será este fichero .zip el que se entregue.