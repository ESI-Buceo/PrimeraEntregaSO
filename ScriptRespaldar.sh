#!/bin/bash

if [-d /home/respaldo ] ; then

        mysqldump -u root -p bd_LED>> /home/respaldo/respaldo.sql

        echo "Se realizo el respaldo"

        else mkdir -p /home/respaldo

        echo "Carpeta creada"

fi
