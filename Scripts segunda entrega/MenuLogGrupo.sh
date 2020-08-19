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

        echo -e "=============== Menu Logs de Grupo ====================="

        echo ""

        echo -e "\t1) Ver grupos nuevos"

        echo -e "\t2) Ver grupos eliminados"

        echo -e "\t3) Ver grupos modificados"

        echo -e "\t4) Ver grupo primario de grupo modificado"

        echo -e "\t5) Ver grupo secundario de grupo modificado"

        echo ""

        echo -e "\t Digite una opcion: "

        read OPCION

        case "$OPCION" in

                        1)
                        
                        ./lognuevogrupo.txt
                                        ;;

                        2)
                        
                        ./logborrargrupo.txt
                                        ;;
			       
			 			3)
                        
                        ./logmodgrupo.txt
                                        ;;

                         4)
                        
                        ./logModGrupoPri.txt
                                        ;;
                         5)
                        
                        ./logModGrupoSeg.txt
                                        ;;

                        q|Q) exit      ;;

                        *)

			echo -e "\t Opcion Incorrecta! "
			sleep 1
			./MenuPrincipal.sh
        esac
					
