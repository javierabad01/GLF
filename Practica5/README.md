## Practica 5

Escribir, utilizando lex y yacc, un intérprete que evalúe expresiones lógicas.
Parte 1. Parte obligatoria (6 puntos)
Cree un intérprete teniendo en cuenta lo siguiente:
1.	El programa deberá interpretar y evaluar una serie de sentencias.  Cada sentencia finaliza con el fin de linea ('\n').
2.	Las sentencias que de deben interpretar son: (1) evaluación de expresiones lógicas; (2) asignación de valores lógicos a variables; (3) imprimir (mostrar en pantalla) valores de variables y de expresiones lógicas; y (4) salir del intérprete.
3.	Para la evaluación de expresiones lógicas se deberán implementar los operadores AND, OR, XOR y NOT y contemplar el uso de los paréntesis para cambiar la precedencia de la expresión que encierran.  Por su parte, los operandos podrán ser las variables y/o los valores lógicos constantes true/false o t/f.
4.	La asignación (=) permitirá almacenar un valor (procedente de una expresión, variable o constante) en una variable.  Para simplifica, las variables se representarán mediante la letra 'v' seguida de un dígito, es decir, se podrán manejar 10 posibles variables (v0, v1,..., v9). De manera interna, represéntalas en C mediante un vector de 10 caracteres. Por otro lado, se permitirá la asignación en cascada siempre y cuando se realice en el inicio de la sentencia, es decir, la sentencia v0 = v1 = v2 AND v3 es correcta, mientras que la sentencia v0 = v2 AND v3 = v1 no lo es.
5.	Para mostrar datos en pantalla se usará la palabra reservada PRINT seguida de la expresión lógica o variable de la que se desea mostrar su valor correspondiente (TRUE/FALSE).
6.	Para salir del intérprete se usará la palabra reservada EXIT.  Para finalizar el análisis sintáctico correctamente use la directiva YYACCEPT.
7.	Todas las sentencias deberán ser case insensitive, es decir, se reconocerán las palabras reservadas y operadores con independencia que estén escritos en mayúsculas, minúsculas o una combinación de ambas.
8.	Elimine los conflictos estableciendo pertinentemente las reglas de asociatividad y precedencia.
Un ejemplo de sentencias correctas podría ser el siguiente:
v0 = false OR ( true XOR (true AND NOT false) )
PRINT v0
PRINT v0 XOR true
EXIT

Parte 2. Opcional (4 puntos)
Amplíe el intérprete anterior con las sentencias condicionales simple (IF cond THEN acción) y doble (IF cond THEN accion1 ELSE accion2).  Estas sentencias tendrán el siguiente comportamiento:
1.	La condición cond podrá ser una expresión lógica, variable o constante, pero no una asignación.
2.	Las acciones podrán ser: (1) una expresión lógica, variable o constante, pero no una asignación; o (2) una cadena de caracteres que, para simplificar, supondremos que será una secuencia de letras mayúsculas, minúsculas y dígitos, y  no se encerrará entre comillas.  En el caso de la condicional doble, las dos acciones deberán ser del mismo tipo.
3.	Las sentencias condicionales devolverán un valor de tipo lógico si la/s acción/es son de tipo lógico, o de tipo cadena de caracteres si la/s acción/es son de tipo cadena de caracteres.  Estos valores dependerán del resultado de la evaluación de la condición.  En el caso de la condicional simple, si el resultado de la evaluación es false, la condicional devolverá false o "" (cadena vacía) dependiendo del tipo de la acción. 
4.	Si el valor devuelto por las condicionales es un valor lógico, la condicional se podrá asignar a una variable (parte derecha de la asignación).
5.	Las sentencias condicionales se podrán usar junto con la sentencia PRINT para mostrar el valor que obtienen por pantalla, valor lógico o cadena, dependiendo de su tipo.
6.	Las sentencias condicionales se podrán anidar.
7.	Elimine los conflictos estableciendo pertinentemente las reglas de asociatividad y precedencia
Un ejemplo de sentencias correctas podría ser el siguiente:
v0 = false OR ( true XOR (true AND NOT false) )
PRINT IF v0 THEN Correcto ELSE Incorrecto 
v1 = IF v0 XOR true THEN IF v0 THEN false ELSE true
EXIT

