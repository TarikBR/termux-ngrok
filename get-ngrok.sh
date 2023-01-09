#!/bin/bash

echo "Baixando ngrok..."
case `dpkg --print-architecture` in
aarch64)
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

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-${architectureURL}.zip -O ngrok.zip
unzip ngrok.zip
rm ngrok.zip
