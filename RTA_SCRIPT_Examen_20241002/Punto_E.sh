#!/bin/bash

echo "Informacion Memoria Ram"


echo "$(head -n 1 /proc/meminfo)" > ~/repogit/UTNFRA_SO_1P2C_2024_-Camino-/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt

echo "-----------------------------------------------------------------------------------------------------------------------"

echo "Informacion Chassis"

echo "$(sudo dmidecode -t chassis | grep 'Manufacturer:' | awk '{print $2, $3}')" >>  ~/repogit/UTNFRA_SO_1P2C_2024_-Camino-/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt


