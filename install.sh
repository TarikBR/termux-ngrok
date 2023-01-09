#!/bin/bash
rm $PREFIX/bin/ngrok
rm -rf $PREFIX/share/ngrok
mkdir -p $PREFIX/share/ngrok
#cp get-ngrok.sh $PREFIX/share/ngrok
cp ngrok $PREFIX/bin
chmod +x $PREFIX/bin/ngrok
apt update && apt upgrade -y
apt install -y proot wget resolv-conf
#apt install zip
apt clean
apt autoremove
cd $PREFIX/share/ngrok
#bash get-ngrok.sh

echo "Baixando ngrok..."
case `dpkg --print-architecture` in
aarch64)
    architectureURL="arm64" ;;
arm64)
    architectureURL="arm64" ;;
arm)
    architectureURL="arm" ;;
armhf)
    architectureURL="arm" ;;
amd64)
    architectureURL="amd64" ;;
i*86)
    architectureURL="386" ;;
x86_64)
    architectureURL="amd64" ;;
*)
    echo "Dispositivo não suportado"
esac

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-${architectureURL}.tgz -O ngrok.tgz
tar xvzf ngrok.tgz
rm ngrok.tgz
chmod +x ngrok

echo -e "\e[1;32mNgrok instalado com sucesso!"
echo "Rode : ngrok "
echo " Para usar o ngrok"
