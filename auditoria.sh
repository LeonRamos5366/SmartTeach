#!/bin/bash
#
# author: 	Nicolás Ormeño
# email: 	ni.ormeno at gmail dot cl
# license: 	GPL V3
# date:		20120422-223756
# description:	Script para hacer auditoria informática en dispositivos GNU/Linux (Curso DuocUC)
#
#
clear
#Verificar si el usuario que ejecuta el script
#posee privilegios de super usuario
if [ `whoami` != root ]; then
	echo "Debe poseer privilegios de super usuario";
	echo "Saliendo del sistema";
	exit;
else
	#Comprobar si directorios exiten, si no existen, los crea.
	if [ ! -d /opt/auditoria ]; then
		`mkdir /opt/auditoria`
		echo "Directorio /opt/auditoria creado";
		`sleep 2`
	fi

	fechahora=`date +%Y%m%d_%H%M`;
	fecha=`date +%Y%m%d`;
	workingpath=/opt/auditoria/$fecha;
	fichero=$workingpath/auditoria;

	if [ ! -d $workingpath ]; then
		`mkdir $workingpath`;
		`touch fichero`
		echo "Directorio opt/auditoria/$fecha creado";
		echo "Fichero $fichero creado";
	fi

	#Tiempo de espera para que el usuario vea los mensajes
	sleep 3;

	#con while preguntaremos si deseamos realizar otra operación
	repetir=s;
	while [ "$repetir" = s ]
   	do
		#menu de opciones
		clear
        	echo "************************************************************";
	        echo "************¿Qué desea hacer?*******************************";
	        echo "************************************************************";
        	echo "*1. Obtener arquitectura del sistema    		   *";
	        echo "*2. Comprobar conectividad              		   *";
	        echo "*3. Listar información de la BIOS       		   *";
	        echo "*4. Listar información de la Motherdoard		   *";
	        echo "*5. Listar información del procesador   		   *";
	        echo "*6. Listar información de memoria RAM   		   *";
	        echo "*7. Listar información de memoria SWAP                     *";
	        echo "*8. Listar información de hw de video (Necesita lshw)      *";
	        echo "*9. Listar información de hw de audio   		   *";
	        echo "*10.Listar información de hw ethernet   		   *";
	        echo "*11.Listar información de las interfaces 		   *";
	        echo "*12.Mostrar uptime del sistema          		   *";
	        echo "*13.Mostrar IP Adress y MAC Adrress (eth0/wlan0)           *";
	        echo "*14.Listar historial usuarios logueados    		   *";
	        echo "*15.Mostrar modulos cargados            		   *";
	        echo "*16.Mostrar procesos                    		   *";
	        echo "*17.Mostrar distribucion                 		   *";
	        echo "*18.Ver las interrupciones          		   *";
	        echo "*19.Ver hostname                        		   *";
	        echo "*20.Ver la version de Linux y su Kernel  		   *";
		echo "*21.Listar los DNS                                   *";
		echo "*22.Listar tabla de partiones 			   *";
		echo "*23.Generar reporte completo			   *";
		echo "*24.Salir						   *";
		echo "************************************************************";
		echo "";
		read -p "¿Qué operación realizar? " op;

		case $op in
			#Opcion para mostrar la arquitectura del sistema
			1)echo ""
			  echo "Arquitectura: `arch`";
			  echo "" $fichero;
			  echo "***ARQUITECTURA***" >> $fichero;
			  echo "`arch`" >> $fichero;
			  echo "" >> $fichero;
			  echo "Datos guardados en $fichero";
			;;
			#Opcion para mostrar si existe conectividad o no.
			2)echo ""
			  if ping -c1 -q google.com &>/dev/null; then
			        echo "Existe conectividad";
				echo "" >> $fichero;
				echo "***CONECTIVIDAD***" >> $fichero;
				echo "Existe conectividad" >> $fichero;
				echo "" >> $fichero;
			   else
			        echo "No existe conectividad";
				echo "" >> $fichero;
				echo "***CONECTIVIDAD***" >> $fichero;
				echo "No existe conectividad" >> $fichero;
				echo "" >> $fichero;
			  fi
			  echo "Guardando datos en $fichero";
			  ;;
			#Opcion para mostrar informacion de la BIOS
			3)echo "";
			  echo "`dmidecode |grep -A 21 'BIOS Information'`"
			  echo "" >> $fichero;
			  echo "***BIOS***" >> $fichero;
			  echo "`dmidecode |grep -A 21 'BIOS Information'`" >> $fichero;
			  echo "" >> $fichero;
			  echo "Guardando datos en $fichero";
			  ;;
			#Opcion para mostrar informacion de la MOTHERBOARD
			4)echo ""
			  echo "`dmidecode |grep -A 10 'Base Board Information'`"
                          echo "" >> $fichero;
                          echo "***MOTHERBOARD***" >> $fichero;
                          echo "`dmidecode |grep -A 10 'Base Board Information'`" >> $fichero;
                          echo "" >> $fichero;
			  echo "Guardando datos en $fichero";
			  ;;
			#Opcion para mostrar informacion del PROCESADOR
			5)echo ""
                          echo "`dmidecode |grep -A 53 'Processor Information' |more `"
                          echo "" >> $fichero;
                          echo "***PROCESSOR***" >> $fichero;
                          echo "`dmidecode |grep -A 53 'Processor Information' |more`" >> $fichero;
                          echo "" >> $fichero;
			  echo "Guardando datos en $fichero";
			  ;;
		        #Opcion para mostrar informacion de la memoria RAM
		        6)echo ""
                          echo "`free -h | grep -A 1 'total'`"
                          echo "" >> $fichero;
                          echo "***RAM MEMORY***" >> $fichero;
                          echo "`free -h | grep -A 1 'total'`" >> $fichero;
                          echo "" >> $fichero;
                          echo "Guardando datos en $fichero";
                          ;;
			#Opcion para mostrar informacion de la memoria SWAP
			7)echo ""
			  echo "`free -h | grep 'Swap'`"
                          echo "" >> $fichero;
                          echo "***SWAP MEMORY***" >> $fichero;
                          echo "`free -h | grep 'Swap'`" >> $fichero;
                          echo "" >> $fichero;
                          echo "Guardando datos en $fichero";
                          ;;
			#Opcion para mostrar informacion del hardware de VIDEO
			8)echo ""
			  echo "`lshw -C display`";
			  echo "`lspci |grep VGA`";
			  echo "" >> $fichero;
			  echo "***VIDEO***" >> $fichero;
			  echo "`lshw -C display`" >> $fichero;
			  echo "`lspci |grep VGA`" >> $fichero;
			  echo "" >> $fichero;
			  echo "Guardando datos en $fichero";
			  ;;
			#Opcion para mostrar informacin del hardware de AUDIO
			9)echo "";
                          echo "`lspci | grep -i audio`";
                          echo "" >> $fichero;
                          echo "***AUDIO***" >> $fichero;
                          echo "`lspci | grep -i audio`" >> $fichero;
                          echo "" >> $fichero;
                          echo "Guardando datos en $fichero";
                          ;;
			#Opcion para mostrar informacion del hardware Ethernet
			10) echo "";
			    echo "`lspci | grep -i ethernet`";
			    echo "" >> $fichero;
			    echo "***ETHERNET***" >> $fichero;
			    echo "`lspci | grep -i ethernet`" >> $fichero;
			    echo "" >> $fichero;
			    echo "Guardando datos en $fichero";
			;;
			#Opcion para mostrar informacion de las interfaces
			11)echo "";
			   echo "`cat /etc/network/interfaces`";
			   echo "" >> $fichero;
			   echo "***Interfaces***" >> $fichero;
			   echo "`cat /etc/network/interfaces`" >> $fichero;
			   echo "" >> $fichero;
			   echo "Guardando datos en $fichero";
			;;
			#Opcion para mostrar informacion del uptime
			12)echo "";
			   echo "`uptime`";
			   echo "" >> $fichero;
			   echo "***UPTIME***" >> $fichero;
			   echo "`uptime`" >> $fichero;
			   echo "" >> $fichero;
			   echo "Guardando datos en $fichero";
			;;
			#Opcion para mostrar IP Address y MAC Address
			13)echo "";
			   echo "eth0 IP   : "`ifconfig eth0 | grep inet | awk '{ print $2 }' | awk -F: '{ print $2 }'`;
		           echo "eth0 Mac  : "`ifconfig eth0 | grep HWaddr | awk '{ print $5 }'`;
		           echo "wlan0 IP  : "`ifconfig wlan0 | grep inet | awk '{ print $2 }' | awk -F: '{ print $2 }'`;
		           echo "wlan0 MAC : "`ifconfig wlan0 | grep HWaddr | awk '{ print $5 }'`;
			   echo "***ETH0-WLAN0***";
			   echo "eth0 IP   : `ifconfig eth0 | grep inet | awk '{ print $2 }' | awk -F: '{ print $2 }'`" >> $fichero;
		           echo "eth0 Mac  : `ifconfig eth0 | grep HWaddr | awk '{ print $5 }'`" >> $fichero;
		           echo "wlan0 IP  : `ifconfig wlan0 | grep inet | awk '{ print $2 }' | awk -F: '{ print $2 }'`" >> $fichero;
		           echo "wlan0 MAC : `ifconfig wlan0 | grep HWaddr | awk '{ print $5 }'`" >> $fichero;
			   echo "Guardando datos en $fichero";
			;;
			#Opcion para ver el historial de los usuarios conectados
			14)echo ""
			   echo "`last`";
			   echo "" >> $fichero;
			   echo "***HISTORIAL USUARIOS***" >> $fichero;
			   echo "`last`" >> $fichero;
			   echo "" >> $fichero;
			   echo "Guardando datos en $fichero";
			;;
			#Opcion para ver los modulos cargados
			15)echo "";
			   echo "`lsmod`";
                           echo "" >> $fichero;
                           echo "***MODULOS***" >> $fichero;
                           echo "`lsmod`" >> $fichero;
                           echo "" >> $fichero;
                           echo "Guardando datos en $fichero";
			;;
			#Opcion para ver los procesos
			16)echo "";
                           echo "`ps aux`";
                           echo "" >> $fichero;
                           echo "***PROCESOS***" >> $fichero;
                           echo "`ps aux`" >> $fichero;
                           echo "" >> $fichero;
                           echo "Guardando datos en $fichero";
                        ;;
			#Opcion para ver la distribucion
			17)echo "";
                           echo "`cat /etc/issue`";
                           echo "" >> $fichero;
                           echo "***Distribucion***" >> $fichero;
                           echo "`cat /etc/issue`" >> $fichero;
                           echo "" >> $fichero;
                           echo "Guardando datos en $fichero";
                        ;;
			#Opcion para ver las interrupciones
			18)echo "";
                           echo "`cat /proc/interrupts`";
                           echo "" >> $fichero;
                           echo "***Interrupciones***" >> $fichero;
                           echo "`cat /proc/interrupts`" >> $fichero;
                           echo "" >> $fichero;
                           echo "Guardando datos en $fichero";
			;;
			#Opcion para ver el hostname
			19)echo "";
			   echo "`hostname`";
			   echo "" >> $fichero;
			   echo "***HOSTNAME***" >> $fichero;
			   echo "`hostname`" >> $fichero;
			   echo "" >> $fichero;
			   echo "Guardando datos en $fichero";
			;;
			#Opcion para ver la version
			20)echo "";
                           echo "`cat /proc/version`";
                           echo "" >> $fichero;
                           echo "***VERSION***" >> $fichero;
                           echo "`cat /proc/version`" >> $fichero;
                           echo "" >> $fichero;
                           echo "Guardando datos en $fichero";
                        ;;
			#Opcion para listar los DNS
			21)echo "";
                           echo "`cat /etc/resolv.conf`";
                           echo "" >> $fichero;
                           echo "***DNS***" >> $fichero;
                           echo "`cat /etc/resolv.conf`" >> $fichero;
                           echo "" >> $fichero;
                           echo "Guardando datos en $fichero";
			;;
			22)echo "";
                           echo "`fdisk -l`";
                           echo "" >> $fichero;
                           echo "***PARTICIONADO***" >> $fichero;
                           echo "`fdisk -l`" >> $fichero;
                           echo "" >> $fichero;
                           echo "Guardando datos en $fichero";
			;;
			#Hacer todo
			23)
	                   echo "***ARQUITECTURA***" >> $fichero;
                           echo "`arch`" >> $fichero;
                           echo "" >> $fichero;
			   if ping -c1 -q google.com &>/dev/null; then
                                echo "***CONECTIVIDAD***" >> $fichero;
                                echo "Existe conectividad" >> $fichero;
                                echo "" >> $fichero;
                           else
                                echo "***CONECTIVIDAD***" >> $fichero;
                                echo "No existe conectividad" >> $fichero;
                                echo "" >> $fichero;
                          fi
			  echo "***BIOS***" >> $fichero;
                          echo "`dmidecode |grep -A 21 'BIOS Information'`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***MOTHERBOARD***" >> $fichero;
                          echo "`dmidecode |grep -A 10 'Base Board Information'`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***PROCESSOR***" >> $fichero;
                          echo "`dmidecode |grep -A 53 'Processor Information' |more`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***RAM MEMORY***" >> $fichero;
                          echo "`free -h | grep -A 1 'total'`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***SWAP MEMORY***" >> $fichero;
                          echo "`free -h | grep 'Swap'`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***VIDEO***" >> $fichero;
                          echo "`lshw -C display`" >> $fichero;
                          echo "`lspci |grep VGA`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***AUDIO***" >> $fichero;
                          echo "`lspci | grep -i audio`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***ETHERNET***" >> $fichero;
                          echo "`lspci | grep -i ethernet`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***Interfaces***" >> $fichero;
                          echo "`cat /etc/network/interfaces`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***UPTIME***" >> $fichero;
                          echo "`uptime`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***ETH0-WLAN0***" >> $fichero;
                          echo "eth0 IP   : `ifconfig eth0 | grep inet | awk '{ print $2 }' | awk -F: '{ print $2 }'`" >> $fichero;
                          echo "eth0 Mac  : `ifconfig eth0 | grep HWaddr | awk '{ print $5 }'`" >> $fichero;
                          echo "wlan0 IP  : `ifconfig wlan0 | grep inet | awk '{ print $2 }' | awk -F: '{ print $2 }'`" >> $fichero;
                          echo "wlan0 MAC : `ifconfig wlan0 | grep HWaddr | awk '{ print $5 }'`" >> $fichero;
			  echo "";
			  echo "***HISTORIAL USUARIOS***" >> $fichero;
                          echo "`last`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***MODULOS***" >> $fichero;
                          echo "`lsmod`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***PROCESOS***" >> $fichero;
                          echo "`ps aux`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***Distribucion***" >> $fichero;
                          echo "`cat /etc/issue`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***Interrupciones***" >> $fichero;
                          echo "`cat /proc/interrupts`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***HOSTNAME***" >> $fichero;
                          echo "`hostname`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***VERSION***" >> $fichero;
                          echo "`cat /proc/version`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***DNS***" >> $fichero;
                          echo "`cat /etc/resolv.conf`" >> $fichero;
                          echo "" >> $fichero;
			  echo "***PARTICIONADO***" >> $fichero;
                          echo "`fdisk -l`" >> $fichero;
                          echo "" >> $fichero;
			  echo "Guardando datos en $fichero";
			;;
			24)echo "";
			   echo "Saliendo del sistema";
			   `sleep 1`;
			   exit;
			;;
			#Salida en caso de ocurrir algún error
			*)
			  echo "Error Inesperado";
			  echo "Saliendo del sistema";
			  `sleep 1`;
			  exit;
			;;
		esac

		read -p "¿Realizar otra operación? (s/n) " repetir
   	done
	clear
	`tar czvf $fecha.tar.gz $workingpath`
	cd $workingpath && tar czvf /opt/auditoria/$fecha.tar.gz auditoria;
	echo "Auditoria actual comprimida";

	echo "$workingpath";
	read -p "¿Eliminar directorio sin comprimir? (s/n) " delete
	if [ $delete = s ]; then
		`rm -fr $workingpath`;
		echo "Directorio eliminado con exito";
	fi

	echo "Saliendo del sistema de auditoria";
	exit;
fi
