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

        echo -e "=============== Menu Logs de Usuario ====================="

        echo ""

        echo -e "\t1) Ver nuevos usuarios"

        echo -e "\t2) Ver usuarios eliminados"

        echo -e "\t3) Ver usuarios bloqueados"

        echo -e "\t4) Ver comentarios de usuarios modificados"

        echo -e "\t5) Ver usuarios desbloqueados"

        echo -e "\t6) Ver directorios de usuarios modificados"

        echo -e "\t7) Ver usuarios expirados"

        echo -e "\t8) Ver id de usuario modificado"

        echo -e "\t9) Ver nombre de login modificado"

        echo -e "\t10) Ver Shells"

        echo ""

        echo -e "\t Digite una opcion: "

        read OPCION

        case "$OPCION" in

                        1)
                        
                        ./lognuevousuario.txt
                                        ;;

                        2)
                        
                        ./logborrarusuario.txt
                                        ;;
			       
			 3)
                        
                        ./logbloqueousuario.txt
                                        ;;

                         4)
                        
                        ./logcomentariou.txt
                                        ;;
                         5)
                        
                        ./logdesbloqueou.txt
                                        ;;
                         6)
                        
                        ./logmodiru.txt
                                        ;;
                         7)
                        
                        ./logexpu.txt
                                        ;;
                         8)
                        
                        ./logModId.txt
                                        ;;
                         9)
                        
                        ./logModNom.txt
                                        ;;
                         10)
                        
                        ./logShell.txt
                                        ;;

                        q|Q) exit      ;;

                        *)

			echo -e "\t Opcion Incorrecta! "
			sleep 1
			./MenuPrincipal.sh
        esac
					
