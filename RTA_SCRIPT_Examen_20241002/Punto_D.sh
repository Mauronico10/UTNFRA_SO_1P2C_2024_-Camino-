#!/bin/bash


echo "Creo Directorio con dos carpetas con sus respectivos parametros"


sudo mkdir -p Estructura_Asimetrica/{correo/{cartas_{1..100},carteros_{1..10}},clientes/cartas_{1..100}}

echo "-----------------------------------------------------------------------------------------------------"

echo "Muestro utilizando el tree" 


tree Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4


