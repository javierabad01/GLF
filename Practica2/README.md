## PRÁCTICA 2

Construya programas/scripts en sed que realicen las siguientes funciones (un programa para cada una, cuyo nombre se indica entre paréntesis):

1. (nohead) Elimina la primera línea del fichero 'situacion-epidemiologica-coronavirus-en-castilla-y-leon.csv'.
2. (pdata) Escribe los datos de casos_confirmados, nuevos_positivos, altas, fallecimientos de cada una de las nueve provincias en un fichero que lleva el nombre de la provincia en minúscula y la extensión '.dat'. Usará el fichero de salida de la orden del punto 1.
3. (vaextrae) Utilizando el fichero de datos de población por municipios del INE ('población_municipìos_ine_2019.csv'), genera un listado de los municipios de la provincia de Valladolid con el siguiente formato (CSV, tres columnas): CodigoProvincia-CodigoMunicipio,  NombreMunicipio,  Poblacion

Todos estos programas sed se almacenaran en una carpeta llamada sed. Los datos se pondran en la carpeta data (tanto los que se aportan en los ficheros adjuntos como los que resultan de ejecutar los programas en sed). Se incluirá una carpeta doc con la documentacion explicativa de la solución. Todo ello (sed, data, doc) se comprimirá en un archivo MiApellido_MiNombre.zip, usando su primer apellido y su nombre (si alguno de los dos es compuesto use el primero de los términos, si comienza por 'de' o 'de la', elimine estas palabras). Será este fichero .zip el que se entregue.