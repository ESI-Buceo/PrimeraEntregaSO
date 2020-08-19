#!/usr/bin/env bash
#

#-------------------------- VARIABLES ------------------------------


F=4
CantidadErrores=1
FECHA=$(date +'%A %d de %B de %Y')
HORA=$(date +%T)
USUARIO=$(whoami)





# -------------------------------------------------------------------------- #
       
	clear

        echo ""

        echo "  "

        echo -e "=============== Menu LOGS ====================="

        echo ""

        echo -e "\t1) Ingresar logs de Usuario"

        echo -e "\t2) Ingresar logs de Grupo"

        echo -e "\tQ) Salir"

        echo ""

        echo -e "\t Digite una opcion: "

        read OPCION

        case "$OPCION" in

                        1)
                        
                        ./MenuLogUsuario.sh
                                        ;;

                        2)
                        
                        ./MenuLogGrupo.sh
                                        ;;
			       
			
                        q|Q) exit      ;;

                        *)

			echo -e "\t Opcion Incorrecta! "
			sleep 1
			./MenuPrincipal.sh
        esac
					
