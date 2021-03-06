# LTSP CLIENTES LIGEROS

## Raul suarez noda

## Configuración de la red del servidor.

### *Configuración de las redes.*
**Primero debemos crear la maquina virtual y añadirle dos interfaces de red, una en modo puente y otra en modo red interna, para ello vamos a los ajustes y procedemos a añadir las interfaces.**
### *Red Normal*
![images](images/1.PNG)

**Le asignamos estas caracteristicas**
* Direccion IP
* Una mascara de red
* Puerta de enlace
* Servidor DNS
* Nombre de dominio

### *Red Interna*

**Añadimos una nueva interfaz de red interna en la maquina virtual y la Configuramos tal que asi.**
![images](images/2.PNG)

**Le asignamos estas caracteristicas**
* Direccion IP
* Mascara de red
* Puerta de enlace

## *Configuración de archivos Hosts y Hostname*

Accedemos al fichero **etc/hosts** y modificamos la linea donde aparece nuestro usuario, junto a el añadimos el nombre del dominio añadiendo .curso1819 y tambien añadimos nuestro nombre de nuevo.
![images](images/3.PNG)

Accedemos al fichero **etc/hostname** y modificamos el nombre del host añadiendo el nombre del dominio .curso1819.
![images](images/4.PNG)

## *Comprobacion de comandos*
* Route-n
* Hostname -a
* Hostname -f
* Uname -a

![images](images/5.PNG)

* IP a
* Blkid

![images](images/6.PNG)

## *Creación de usuarios*

creamos 3 nuevos usuarios en el sistema.
![images](images/7.PNG)

## *Instalacion del servicio Openssh-server*

Para instalar el servicio **Openssh-server** ejecutamos el comando con privilegios de root; *sudo  apt-get install openssh-server*.
una vez comience la instalacion nos aparece una opción para poder continuar debemos poner **s**.
![images](images/8.PNG)

![images](images/9.PNG)

## *Modificación del fichero SSH*
Accedemos al fichero **sshd_config** y cambiamos el apartado authentication; permit root login a **yes**.

![images](images/10.PNG)

![images](images/11.PNG)


## *Instalación del servicio LTSP*
Ejecutamos el comando con permisos de root; *sudo apt-get install ltsp-server-standalone*.

![images](images/12.PNG)

![images](images/13.PNG)
## *Creación de imagen*
creamos la imagen del sistema.

![images](images/14.PNG)

![images](images/15.PNG)

una vez finalizada la cracion de la imagen (tardó unas 2 horas y media aprox) consultamos la configuración del fichero **/etc/ltsp/dhcpd.conf**.

![images](images/16.PNG)
modificamos el valor range añadiendo las ip 192.168.67.**122** y 192.168.67.**222**.

![images](images/17.PNG)

reiniciamos el servidor y consultamos la configuración de **ps -ef|grep dhcp** y **ps -ef|grep ftp**.

![images](images/18.PNG)


# **Configuración del CLIENTE**

creamos la maquina sin disco duro  ni disco de imagen.

![images](images/c1.PNG)

Le añadimos memoria ram que es uno de los dos requisitos para hacer el cliente ligero.

![images](images/c2.PNG)

Le añadimos una interfaz de red Interna

![images](images/c3.PNG)

Le activamos el soporte 3D y le subimos la memoria grafia a 128Mb.

![images](images/c4.PNG)

# **Iniciamos sesion con el cliente**
Con el servidor iniciado, arrancamos el cliente.  

![images](images/c5.PNG)

accedemos con el usuario **suarez1**.

![images](images/c6.PNG)

comprobamos el inicio de sesion.

![images](images/c7.PNG)

Accedemos con el cliente dos y el usuario **suarez2** y grabamos el inicio de sesión.

![images](images/c73.PNG)

![images](images/c74.PNG)

una vez iniciado el cliente vamos al servidor y comprobamos la salida de estos comandos.
* who am i
* who
* sudo arp
* netstat -ntap | grep 192.168

![images](images/c8.PNG)

## Personalizamos los clientes

Vamos al servidor y entramos a la ruta **/opt/ltsp/i386/etc/** para modificar el  fichero lts.conf.

![images](images/c9.PNG)

Ejecutamos el comando ltsp-update-image, para actualizar la imagen y mostramos como funciona en el video.

![images](images/c72.PNG)

![images](images/c722.PNG)
