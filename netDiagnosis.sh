#!/bin/bash

# Función para hacer ping a un nombre de host o IP
function ping_host() {
    read -p "Introduce el nombre de host o IP para hacer ping: " host
    ping -c 4 $host
    if [ $? -eq 0 ]; then
        echo "Ping a $host ha sido exitoso."
    else
        echo "Ping a $host ha fallado."
    fi
}

# Función para mostrar la configuración actual de la red
function show_network_config() {
    echo "Configuración actual de la red:"
    ip addr show
    ip route show
}

# Función para realizar un traceroute a un destino especificado
function traceroute_host() {
    read -p "Introduce el destino para realizar traceroute: " destination
    traceroute $destination
}

# Función para analizar el ancho de banda o latencia de la red hacia un servidor específico
function bandwidth_latency_test() {
    read -p "Introduce el servidor para analizar el ancho de banda o latencia: " server
    iperf3 -c $server
}

# Menú principal
while true; do
    echo "Diagnósticos básicos de red"
    echo "1. Hacer ping a un nombre de host o IP"
    echo "2. Mostrar la configuración actual de la red"
    echo "3. Realizar un traceroute a un destino especificado"
    echo "4. Analizar el ancho de banda o latencia de la red hacia un servidor específico"
    echo "5. Salir"
    read -p "Selecciona una opción: " option

    case $option in
        1) ping_host ;;
        2) show_network_config ;;
        3) traceroute_host ;;
        4) bandwidth_latency_test ;;
        5) exit 0 ;;
        *) echo "Opción no válida. Por favor, selecciona una opción del menú." ;;
    esac
done
