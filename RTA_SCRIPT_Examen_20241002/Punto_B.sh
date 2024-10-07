#!/bin/bash

DISCO="/dev/sdd"


echo "Particiones_Creadas"


sudo fdisk $DISCO <<EOF
n
p


+1G
n
p


+1G
n
p


+1G
n
e


n

+900M
n

+900M
n

+900M
n

+900M
n

+900M
n

+900M
n

+900M

w

EOF


echo "Mostar Particionamiento"
sudo fdisk $DISCO -l

echo "--------------------------------------------------------------------------------------------"

echo "Formateo_De_Particiones"

sudo mkfs.ext4 -F  ${DISCO}1
sudo mkfs.ext4 -F  ${DISCO}2
sudo mkfs.ext4 -F  ${DISCO}3
sudo mkfs.ext4 -F  ${DISCO}5
sudo mkfs.ext4 -F  ${DISCO}6
sudo mkfs.ext4 -F  ${DISCO}7
sudo mkfs.ext4 -F  ${DISCO}8
sudo mkfs.ext4 -F  ${DISCO}9
sudo mkfs.ext4 -F  ${DISCO}10



echo "----------------------------------------------------------------------------------------------"

echo "Montaje_Persistente"
echo "${DISCO}1 /Examenes-UTN/alumno1/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}2 /Examenes-UTN/alumno1/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}3 /Examenes-UTN/alumno1/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}4 /Examenes-UTN/alumno2/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}5 /Examenes-UTN/alumno2/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}6 /Examenes-UTN/alumno2/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}7 /Examenes-UTN/alumno3/parcial_1 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}8 /Examenes-UTN/alumno3/parcial_2 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}9 /Examenes-UTN/alumno3/parcial_3 ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "${DISCO}10 /Examenes-UTN/profesores ext4 defaults 0 0" | sudo tee -a /etc/fstab

sudo mount -a


