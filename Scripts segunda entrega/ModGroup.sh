#!/usr/bin/env bash

#-------------------------- VARIABLES ------------------------------

FECHA=
HORA=
USUARIO=
F=4
NombreGrupo=
NuevoNombre=
CantidadErrores=1

clear
echo -e "==================== MODIFICAR GRUPO =================="
echo ""

while [ "$F" -eq 4 ]
do
        echo -e "Ingrese el nombre del grupo que desea modificar"
        read NombreGrupo
if grep -qwis $NombreGrupo /etc/group
then
	echo -e "Ingrese el nuevo nombre del grupo"
        read NuevoNombre

        sudo groupmod -n $NuevoNombre $NombreGrupo

        clear
        echo -e""
        echo -e "El nombre del grupo fue cambiado exitosamente"
        FECHA=$(date +'%A %d de %B de %Y')
        HORA=$(date +%T)
        USUARIO=$(whoami)
	echo "$USUARIO cambio el nombre de grupo $NombreGruop a $NuevoNombre el $FECHA a las $HORA hs" >> logmodgrupo.txt

	sleep 2
        F=3
else

        echo "El grupo $NombreGrupo no existe"
        CantidadErrores=$((CantidadErrores+1))
        if [ "$CantidadErrores" -eq 4 ]
        then
                clear
                echo -e "Ha superado la cantidad de intentos permitidos"
                sleep 2
                F=3
        fi
fi

done
./MenuGrupo.sh
                                
