Instalacion del sistema operativo, desde el sistema operativo las maquinas que se otorgaron funcionan con mbr de formato y con la intalacion del Legacy,
Adicionalmente es necesario darle 1gb en la particion de book /boot -crear la particion
en la instalacion se especifico que use DHCP posteriormente se entro a los archivos del sistema a cambiarlo a estatico
Ruta de la configuracion de las direcciones ip:
/etc/network
dentro de este directorio esta el archivo interfaces 
nano /etx/network/interface
dentro del archvio 
auto lo
iface io inet loopback
auto eno1
iface eno1 inet static
  address 172.25.100.249
  netmaksk 255.255.255.240
  dns-nameservers 8.8.8.8 1.1.1.1

# tpotComands
Creacion de un nuevo usuario:
su root
apt update
apt install curl
apt install sudo
usermod -aG sudo soc     # enves de soc es el usuario creado en la instalacion
problemas en la actualizacion por la diferencia de tiempo en el repo de instalacion con la fecha y hora del otorgaado por la red
sudo date -s "2025-05-19 11:20:00" # depende del dia y la hora actual,
sudo hwclock --systohc # comando para guardarlo  en el reloj de hadware
su soc # volver al usuario soc - para la instalacion del tpot es oblicatorio estar en la ruta 
/home/soc y con el tipo: usuario no como root

sudo apt install gpm
para instalar un mouse temporal

git clone https://github.com/telekom-security/tpotce
cd tpotce/iso/installer/
./install.sh --type=user
Instalacion con debian
git hub
env bash -c "$(curl -sL https://github.com/telekom-security/tpotce/raw/master/install.sh)"

debian:
bash -c "$(curl -fsSL https://raw.githubusercontent.com/NixonVuele/tpotComands/main/auto_installer.sh)"

creacion de usuario se lo crea ocn root y luego se hace su soc

dentro se instala tpot desde github
se hace bash install.sh

luego se ingresa usuario del tpot,
contra del tpot, 


sudo systemctl daemon-reload sudo systemctl enable wazuh-agent sudo systemctl start wazuh-agent


wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.11.2-1_amd64.deb && sudo WAZUH_MANAGER='172.25.100.250' WAZUH_AGENT_GROUP='tpot-riesgos' WAZUH_AGENT_NAME='tpot-riesgos' dpkg -i ./wazuh-agent_4.11.2-1_amd64.deb


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

# Wazuh
sudo apt update && sudo apt install curl apt-transport-https unzip wget libcap2-bin software-properties-common lsb-release gnupg2
curl -sO https://packages.wazuh.com/4.5/wazuh-... && chmod 744 wazuh-install.sh && bash ./wazuh-install.sh -a





sudo apt update && \
sudo apt install -y curl apt-transport-https unzip wget libcap2-bin software-properties-common lsb-release gnupg2 && \
curl -sO https://packages.wazuh.com/4.12/wazuh-install.sh && \
chmod 744 wazuh-install.sh && \
bash ./wazuh-install.sh -a


