---
layout: post
title: 'Activar la sincronización de Fecha y Hora en Debian Ubuntu'
date: '2024-09-07T09:05:21-03:00'
status: publish
permalink: /2024/09/activar-la-sincronizacion-de-fecha-y-hora-en-debian-ubuntu
author: fideo
excerpt: ''
type: post
id: 52309
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
categories:
    - 'Sistema Operativo'
tag:
    - comando
    - debian
    - linux
    - ubuntu
post_format: []
litespeed_vpi_list:
    - 'a:1:{i:0;s:59:"Activar la sincronización de Fecha y Hora en Debian Ubuntu";}'
litespeed_vpi_list_mobile:
    - 'a:1:{i:0;s:59:"Activar la sincronización de Fecha y Hora en Debian Ubuntu";}'
usemathjax: true
---

Si necesitas activar la sincronización de la fecha y hora en debian ubuntu o cualquier distribución derivada de Debian con un simple comando se puede reparar esto.

Me ha pasado que he instalado debian 12 y la notebook donde lo instalé no se sincronizaba correctamente el horario ni la fecha; entonces cada vez que encendía la notebook esta no podía navegar, ya que, estaba desincronizada la fecha y la hora.

Me puse a investigar como solucionarlo y encontré que con este comando se puede ver si está activa la sincronización.

```
sudo timedatectl status
```


si te dice System clock synchronized: no eso quiere decir que no se va a sincronizar automáticamente.

Para cambiar a System clock synchronized: yes lo que se debe hacer o al menos lo que yo hice para me funcionara es instalar systemd-syncd

```
sudo apt install systemd-timesyncd
```

Luego de instalar este comando volví a consultar con el comando `sudo timedatectl` status y obtuve como respuesta el System clock synchronized: yes

También se puede observar esto haciendo botón derecho sobre el reloj en la barra de tareas, ajustar fecha y hora y debería estar con tilde Poner fecha y hora automáticamente.

![Activar la sincronización de Fecha y Hora en Debian Ubuntu](/_posts/uploads/2024/09/fechayhoraautomaticamente.png)Si antes de realizar estos pasos observamos esta misma pantalla podemos ver que esa tilde aparece desactivada porque no está instalado el systemd-timesyncd

Espero que hayas podido activar la sincronización de Fecha y Hora en Debian Ubuntu

Se puede encontrar más información sobre linux en este mismo blog o envíeme un mail o puedes encontrarme en las redes sociales.

[Te invito a que te suscribas a mi canal de YouTube donde publico contenido sobre Linux y temas a fines a este.](https://bit.ly/suscribiteamicanalYouTube)

[Mas notas sobre linux](https://www.federicomazzei.com.ar/blog/tag/linux/)