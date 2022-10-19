sed -n  '/Valladolid/{
        s/;[a-zA-Z][a-zA-Z]*;/-/
        s/;[0-9]*;[0-9]*$//
        w ../data/ej3-vaextrae.csv
        }' <../data/poblacion_municipios_ine_2019.csv

sed -i "1i\CodigoProvincia-CodigoMunicipio;NombreMunicipio;Poblacion" ../data/ej3-vaextrae.csv
