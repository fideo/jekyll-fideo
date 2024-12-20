---
layout: post
title: 'Anydesk problemas con Wayland Cómo habilitar o deshabilitar wayland en Ubuntu 22.04 Desktop'
date: '2023-01-01T10:25:36-03:00'
status: publish
permalink: /2023/01/anydesk-problemas-wayland-habilitar-o-deshabilitar-wayland-ubuntu.html
author: fideo
excerpt: 'No se admite el servidor remoto de pantalla wayland, AnyDesk ubuntu'
type: post
id: 52098
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
category:
    - Linux
    - 'Sistema Operativo'
tag:
    - comando
    - linux
    - 'sistema operativo'
    - software
    - ubuntu
post_format: []
ao_post_optimize:
    - 'a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}'
footnotes:
    - ''
---
Si estas trantando de usar AnyDesk en linux y te arroja un mensaje de error como este

***No se admite el servidor remoto de pantalla wayland***

Es porque hay que colocar en **false** la opción WaylandEnable que se encuentra en /etc/gdm3/custom.conf esto te permitirá conecactarte a esa máquina cliente; es decir que la modificación de /etc/gdm3/custom.conf hay que hacerla en la PC que queremos conectarnos.

Para eso tiene que abrir tu consola en modo administrador / sudo y editar ese archivo, en mi caso yo uso vim asi que sería así:

```
<pre class="wp-block-code">```
sudo vim /etc/gdm3/custom.conf
```
```

Luego buscás donde dice

```
<pre class="wp-block-code">```
#WaylandEnable=false
```
```

Lo descomentás para que quede activo dentro del archivo pero con el parámetro false y esto te permitirá usar AnyDesk sin problemas 😉

Una vez que terminas de editarlo hay que reiniciar el servicio gdm3 para eso ejecutamos el siguiente comando

```
<pre class="wp-block-code">```
sudo systemctl restart gdm3
```
```

Luego de reiniciado el servicio no debería aparecerte el mensaje de error de conexión en AnyDesk por wayland

Si por algún motivo necesitas usarlo solo basta con cambiar el valor a true.

[Ver mas posts sobre Ubuntu](http://federicomazzei.com.ar/blog/tag/ubuntu/)

***Enjoy!!!***
