---
layout: post
title: 'Linux no reconoce tu android por conexión USB para usar Droidcam'
date: '2021-07-27T19:40:12-03:00'
status: publish
permalink: /2021/07/linux-no-reconoce-tu-android-por-conexion-usb-para-usar-droidcam.html
author: fideo
excerpt: ''
type: post
id: 51823
thumbnail: ../../../uploads/2021/08/cabeceraAndroid-1.jpg
category:
    - Linux
    - Software
tag:
    - adb
    - android
    - droidcam
    - linux
    - ubuntu
    - webcam
post_format: []
---
layout: post
Si tener un celular (dispositivo móvil) con Android y queres usar la cámara de ese celular como webcam podes usar un programa que se llama [Droidcam](https://www.dev47apps.com/), es muy buena opción para no comprar una webcam y usa ese dispositivo viejo que tenías en un cajón.

Este artículo trae una solución a un problema frecuente que se dá cuando usas linux, el problema se presenta que no siempre reconoce las conexiones por USB.

Si esto te pasa este artículo es para vos.

Solo tenes que seguir estos simples pasos.

Instalar adb

```
<pre class="wp-block-preformatted">sudo apt install adb
```

Luego chequeas que esté correctamente instalado corriendo adb version y te tiene que mostrar algo como esto:

```
<pre class="wp-block-preformatted">adb version<br></br>Android Debug Bridge version 1.0.39<br></br>Version 1:8.1.0+r23-5ubuntu2<br></br>Installed as /usr/lib/android-sdk/platform-tools/adb
```

Este demonio se encarga de estar escuchando si un dispositivo se encuentra conectado a nuestra PC (linux). Luego ejecutamos adb devices y les mostrará algo como esto.

```
<pre class="wp-block-preformatted">adb devices<br></br>List of devices attached<br></br>33000be0476e4339 device
```

Una vez que tengas esto solo te resta poner el celular en modo de desarrollo &lt;– esto depende de cada versión de Android.

Droidcam ADB Linux