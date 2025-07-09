# netDiagnosis

Este script de Bash permite realizar diagnósticos básicos de red, tales como hacer un ping a un host, ver la configuración de red actual, realizar un traceroute, y analizar el ancho de banda o latencia de la red hacia un servidor específico.

## Funcionalidades

El programa ofrece las siguientes opciones a través de un menú interactivo:

1. **Hacer ping a un nombre de host o IP**
    - Permite realizar un ping a una dirección IP o nombre de host proporcionado por el usuario.
    - Muestra si el ping fue exitoso o fallido

2. **Mostrar la configuración actual de la red**
    - Muestra la configuración de red actual, incluyendo las interfaces de red y las rutas de la red utilizando los comandos `ip addr show` e `ip route show`.

3. **Realizar un traceroute a un destino especificado**
    - Permite realizar un traceroute hacia un destino proporcionado por el usuario para diagnosticar la ruta de la red.

4. **Analizar el ancho de banda o latencia de la red hacia un servidor específico**
    - Realiza una prueba de ancho de banda y latencia utilizando `iperf3` hacia un servidor especificado por el usuario.

5. **Salir**
    - Cierra el script.

## Uso

1. Clona o descarga el script en tu máquina.
2. Asegúrate de que tienes permisos de ejecución:
    ```bash
    chmod +x netDiagnosis.sh
    ```
3. Ejecuta el script:
    ```bash
    ./netDiagnosis.sh
    ```
4. Sigue las instrucciones del menú para realizar el diagnóstico de red.

## Requisitos

- El comando `ping` debe estar disponible en tu sistema (generalmente lo está por defecto).
- El comando `traceroute` debe estar instalado.
- El comando `iperf3` debe estar instalado para realizar las pruebas de ancho de banda.

## Notas

- El script requiere privilegios de superusuario para algunas funciones, como el traceroute.
- Asegúrate de tener una conexión activa a la red para que las pruebas funcionen correctamente.
- Los resultados de las pruebas dependerán de la configuración y el estado de la red a la que estás conectado.

## Licencia

Este proyecto está bajo la Licencia MIT.
