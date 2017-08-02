#!/bin/bash

# Descubre todos los records A del dominio imujer.com
# Luego, hace una solicitud get con un record A y el correo electronico como argumento

array=($(dig imujer.com +short))

for i in "${array[@]}"
do
echo "$i"
wget http://imujer.com?mail=eduardoriveror@gmail.com?recorda="$i"
done
