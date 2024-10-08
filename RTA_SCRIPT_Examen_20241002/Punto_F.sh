#!/bin/bash

IP="Mi IP pública es: $(curl -s ifconfig.me)"
URL="La URL de mi repositorio es: $(git -C ~/repogit/UTNFRA_SO_1P2C_2024_-Camino- remote get-url origin)"
USUARIO="Mi usuario es: $(whoami)" #MI USUARIO
HASH="El hash de mi usuario es: $(echo -n "$USUARIO" | sha256sum | awk '{print $1}')"

echo "$IP" > ~/repogit/UTNFRA_SO_1P2C_2024_-Camino-/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "$USUARIO" >> ~/repogit/UTNFRA_SO_1P2C_2024_-Camino-/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "$HASH" >> ~/repogit/UTNFRA_SO_1P2C_2024_-Camino-/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt
echo "$URL" >> ~/repogit/UTNFRA_SO_1P2C_2024_-Camino-/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt


