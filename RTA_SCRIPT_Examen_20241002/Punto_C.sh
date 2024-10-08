#!/bin/bash


sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

sudo useradd -m -s /bin/bash -c "p1c2_2024_A1" -g p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A1
sudo grep -E 'vagrant|p1c2_2024_A1' /etc/shadow |awk -F ':' '{print $2}'


sudo useradd -m -s /bin/bash -c "p1c2_2024_A2" -g p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A2
sudo grep -E 'vagrant|p1c2_2024_A2' /etc/shadow |awk -F ':' '{print $2}'


sudo useradd -m -s /bin/bash -c "p1c2_2024_A3" -g p1c2_2024_gAlumno -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_A3
sudo grep -E 'vagrant|p1c2_2024_A3' /etc/shadow |awk -F ':' '{print $2}'


sudo useradd -m -s /bin/bash -c "p1c2_2024_P1" -g p1c2_2024_gProfesores -p "$(sudo grep vagrant /etc/shadow | awk -F ':' '{print $2}')" p1c2_2024_P1
sudo grep -E 'vagrant|p1c2_2024_P1' /etc/shadow |awk -F ':' '{print $2}'


echo "----------------------------------------------------------------------------------------------------------------------------------------------------"

echo "Nombrar dueño de su archivo"

sudo chown p1c2_2024_A1  /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2  /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3  /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1  /Examenes-UTN/profesores

echo "Cambio_De_Permisos"

sudo chmod 750 /Examenes-UTN/alumno_1
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chmod 775 /Examenes-UTN/profesores

sudo su -c "whoami" p1c2_2024_A1 | sudo tee /Examenes-UTN/alumno_1/validar1.txt
sudo su -c "whoami" p1c2_2024_A2 | sudo tee /Examenes-UTN/alumno_2/validar2.txt
sudo su -c "whoami" p1c2_2024_A3 | sudo tee /Examenes-UTN/alumno_3/validar3.txt
sudo su -c "whoami" p1c2_2024_P1 | sudo tee /Examenes-UTN/profesores/profesores.txt
