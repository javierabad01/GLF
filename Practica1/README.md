## Entrega 1

Use el fichero de datos grepdata.txt para hacer la pruebas. Prepare un shellscript que contenga 9 instrucciones grep/egrep para realizar las siguientes tareas (en las tareas 6 a 9 se debe emplear una única sentencia u orden grep/egrep usando, además, opciones de grep/egrep adecuadas).

1. Muestre las líneas que contienen un número de teléfono con extensión (identificada por la letra x o X seguida de cuatro dígitos).
2. Muestre las líneas que comienzan por tres dígitos seguidos de un blanco. Deberá emplear una especificación basada en los operadores de repetición \{ y \}.
3. Muestre las líneas que contienen una fecha. No se exige que funcione para fechas anteriores al año 2000.
4. Muestre las líneas que contengan una vocal seguida de un único símbolo, seguido de la misma vocal de nuevo (ada sirve pero ade no).
5. Muestre todas las líneas que no comienzan por S (ese mayúscula).
6. Muestre las líneas que contienen 'CA' en mayúsculas o en minúsculas.
7. Muestre las líneas que contienen una dirección de email, precediendo cada una de ellas del número de línea en el fichero de entrada.
8. Muestre las líneas que no contienen la palabra 'Sep.' (incluyendo el punto).
9. Muestre las líneas que contienen la palabra 'de' como palabra completa.
La salida de cada orden grep/egrep se separará de la siguiente por una línea que contenga 40 caracteres '-' (puede hacerlo con un echo dentro del script).

Una vez haya elaborado y probado el fichero, renombre a MiApellido_MiNombre.sh, usando su primer apellido y su nombre (si alguno de los dos es compuesto use el primero de los términos, si comienza por 'de' o 'de la', elimine estas palabras). Será este fichero .sh el que deba entregar. El script deberá funcionar sobre cualquier fichero de entrada similar a grepdata.txt pero no necesariamente igual al que se ofrece para practicar. En resumen: no puede proporcionar soluciones 'ad hoc' dependientes del fichero concreto de entrada.