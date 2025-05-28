# tpotComands

Instalacion con debian
git hub
git clone https://github.com/telekom-security/tpotce

debian:
bash -c "$(curl -fsSL https://raw.githubusercontent.com/NixonVuele/tpotComands/main/auto_installer.sh)"

creacion de usuario se lo crea ocn root y luego se hace su soc

dentro se instala tpot desde github
se hace bash install.sh

luego se ingresa usuario del tpot,
contra del tpot, 

para el monitoreo de la creacion de los contenedores, el ciclo de vida de la creacion de los contenedores es el siguiente

sudo docker compose 0f /home/soc/tpotce/docker-compose.yml up -d

en caso de existir un error consultar la razon, lo mas tipico es que al crear un contenedor tenga puertos que estan en uso , en mi caso dio un error 
donde obtuve que el puerto 631 estaba en uso, se comprueba que servicio esta ocupando ese puertoo, y es s
sudo lsof -i :631

en mi caso era el puerto de impresiones de linux y lo apague con 
sudo systemctl stop cups

para entrar a la compuguraciones del archivo docker compose es 
/home/soc/tpotce/docker-compose.yml up -d,
este es el comando para el reicio del docker compose que permite la construccion de los microservers
sudo docker compose -f /home/soc/tpotce/docker-compose.yml up -d

