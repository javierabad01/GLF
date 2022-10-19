sed -n -e '/Ávila/{
        s/.*Ávila;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Ávila.dat
        }' -e '/Burgos/{
        s/.*Burgos;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Burgos.dat
        }' -e '/León/{
        s/.*León;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/León.dat
        }' -e '/Palencia/{
        s/.*Palencia;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Palencia.dat
        }' -e '/Salamanca/{
        s/.*Salamanca;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Salamanca.dat
        }' -e '/Segovia/{
        s/.*Segovia;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Segovia.dat
        }' -e '/Soria/{
        s/.*Soria;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Soria.dat
        }' -e '/Valladolid/{
        s/.*Valladolid;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Valladolid.dat
        }' -e '/Zamora/{
        s/.*Zamora;//g
        s/;[0-9]*;[0-9]*\.[0-9]*\,.*$//
        w ../data/Zamora.dat
        }' ../data/ej1-nohead.csv

sed -i "1iCasosConfirmados;NuevosPositivos;Altas;Fallecimientos" ../data/*.dat
