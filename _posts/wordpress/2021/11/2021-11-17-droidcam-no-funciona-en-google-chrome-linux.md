---
layout: post
title: 'Droidcam no funciona en Google Chrome Linux'
date: '2021-11-17T20:51:29-03:00'
status: publish
permalink: /2021/11/droidcam-no-funciona-en-google-chrome-linux.html
author: fideo
excerpt: ''
type: post
id: 51885
thumbnail: ../../../uploads/2021/08/cabeceraAndroid-1.jpg
category:
    - Linux
    - Software
tag:
    - android
    - comando
    - droidcam
    - linux
    - software
post_format: []
ao_post_optimize:
    - 'a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}'
---

Droidcam no funciona en google chrome en un sistema operativo Linux; en Windows funciona perfectamente, pero en Linux lo podía hacer funcionar hasta que entendí que para que google chrome lo tome hay que ejecutar una serie de comandos

Como primer paso ejecutamos esto en la consola de linux.

```
sudo apt install linux-headers-`uname -r` gcc make
```

  
Luego nos dirigimos a donde tenemos instalado Droidcam; yo lo suelo instalar en `/opt/` es decir que ingreso a

```
cd /opt/droidcam/
```
  
Ahí dentro encontraremos un script que se llama ./install-video y para eso ejecutamos

```
sudo ./install-video
```

  
Listo, ya pueden abrir google-chrome y se pueden conectar a una reunión en meet o usar skype, discord, etc, cualquier aplicación debería reconocer a Droidcam como una cámara web.

Espero que le sirva a quien ande buscando en google como solucionarlo, si así fue, dejame un comentario 😉

Enjoy
