echo "Se inicia la integración"

echo "Eliminando pagina anterior y crando nuevamente"
ssh -o StrictHostKeychecking=no ubuntu@52.36.175.39 "rm -rf /tmp/pagina/; mkdir /tmp/pagina"

echo "Copia los archivos de jenkins a stagin en la carpeta temporal"
scp -r * ubuntu@52.36.175.39:/tmp/pagina/

echo "Copia los archivos de temporal a el root de apache"
ssh ubuntu@52.36.175.39 sudo cp /tmp/pagina/* /var/www/html/

echo "Termina despliegue"