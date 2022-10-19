## Practica 4

Escribir utilizando lex y yacc un programa que detecte si una cadena tiene "comentarios equilibrados", es decir:

/*/*/**/*//**/*//**/  seria correcta

*//* seria incorrecta

/*/**/ seria incorrecta

Siendo "a" un componente léxico que corresponde con el lexema "/*'" (apertura de comentario) y "b" un componente léxico que corresponde con el lexema "*/" (cierre de comentario) la gramática sería esta:

S ->  a S b S

S -> 'epsilon'



Cree una carpeta y copie los archivos de lex y yacc en ella, a continuación comprima dicha carpeta y cambie el nombre a MiApellido_MiNombre.zip, usando su primer apellido y su nombre (si alguno de los dos es compuesto use el primero de los términos, si comienza por 'de' o 'de la', elimine estas palabras). Será este fichero .zip el que se entregue.