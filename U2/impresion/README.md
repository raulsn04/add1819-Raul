# Servidor de Impresión en Windows

# Grupo: Raúl Suárez Noda & Darío Díaz Farrais.

## 1. Impresora compartida
### 1.1 Rol impresión

    Vamos al servidor, instalar rol/función de servidor de impresión.
    Incluir impresión por Internet.(La Incluimos en el punto 2)

Seleccionamos los servicios de  impresión y documentos.

![](imagen/1.PNG)

Agregamos la característica de servidor de impresión.

![](imagen/2.PNG)

![](imagen/3.PNG)

Completamos la instalación.

![](imagen/4.PNG)

### 1.2 Instalar impresora PDF

Vamos a conectar e instalar localmente una impresora al servidor Windows Server, de modo que estén disponibles para ser accedidas por los clientes del dominio.
Vamos a instalar un programa que simule una impresora de PDF.



    Descargamos PDFCreator (URL recomendada www.pdfforge.org/pdfcreator/download) e instalar.

Accedemos a la URL y descargamos el ejecutable.

![](imagen/5.PNG)

![](imagen/6.PNG)

Lo ejecutamos

![](imagen/7.PNG)

Comenzamos la instalación.

![](imagen/8.PNG)

![](imagen/9.PNG)

![](imagen/10.PNG)

![](imagen/11.PNG)

Instalación completada.

![](imagen/13.PNG)

    Ejecutamos PDFCreator y configuramos en perfiles -> Guardar -> Automático. Ahí configuramos carpeta destino impresora.

![](imagen/14.PNG)

### 1.3 Probar la impresora en local


    Para probar la nueva impresora abrimos el Bloc de notas y creamos un fichero luego seleccionamos imprimir.


![](imagen/15.PNG)

Al imprimir se abre PDFCreator.

![](imagen/16.PNG)

    Cuando finalice el proceso se abrirá un fichero PDF con el resultado de la impresión.

![](imagen/17.PNG)


### 1.4 Compartir por red

**Vamos a la MV del servidor.**

    Ir al Administrador de Impresión -> Impresoras
    Elegir impresora PDFCreator.
        Botón derecho -> Propiedades -> Compartir
        Como nombre del recurso compartido utilizar PDFnombrealumnoXX.

![](imagen/19.PNG)


**Vamos al cliente:**

    Buscar recursos de red del servidor. Si tarda en aparecer ponemos \\ip-del-servidor en la barra de navegación.
    Seleccionar impresora -> botón derecho -> conectar.
        Ponemos usuario/clave del Windows Server.

![](imagen/20.PNG)

![](imagen/21.PNG)


    Ya tenemos la impresora remota configurada en el cliente.
    Probar la impresora remota.ç

Imprimimos una página de prueba.

![](imagen/22.PNG)

Comprobamos en el servidor que llega a la impresora.

![](imagen/23.PNG)



## 2. Acceso Web

Realizaremos una configuración para habilitar el acceso web a las impresoras del dominio.
### 2.1 Instalar característica impresión WEB

    Vamos al servidor.
    Nos aseguramos de tener instalado el servicio "Impresión de Internet".

![](imagen/28.PNG)

![](imagen/29.PNG)



### 2.1 Configurar impresión WEB

Vamos a la MV cliente:

    Abrimos un navegador Web.
    Ponemos URL http://<ip-del-servidor>/printers (o http://<nombre-del-servidor>/printers), previa autenticación como uno de los usuarios del habilitados para dicho fin (por ejemplo el "Administrador").

![](imagen/30.PNG)

![](imagen/31.PNG)

    Pincha en la opción propiedades y captura lo que se ve.

![](imagen/32.PNG)

![](imagen/33.PNG)


    Agregar impresora (NO es local)


![](imagen/34.PNG)

    Crear nueva impresora usando el URL anterior.

![](imagen/35.PNG)

### 2.2 Comprobar desde el navegador



Realizamos seguidamente una prueba sencilla en tu impresora de red:

        Acceder a la configuración de la impresora a través del navegador.

![](imagen/36.PNG)


            Poner en pausa los trabajos de impresión de la impresora.

![](imagen/37.PNG)

        Ir a MV cliente.
        Envía a imprimir en tu impresora compartida un documento del Bloc de notas.
            Comprobar que al estar la impresora en pausa, el trabajo aparece en cola de impresión.

![](imagen/38.PNG)

        Finalmente pulsa en reanudar el trabajo para que tu documento se convierta a PDF.


![](imagen/39.PNG)
