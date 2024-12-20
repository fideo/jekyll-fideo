---
layout: post
title: 'Arreglar el error Droidcam unable to find dev/video0'
date: '2021-07-27T19:21:47-03:00'
status: publish
permalink: /2021/07/arreglar-el-error-droidcam-unable-to-find-dev-video0.html
author: fideo
excerpt: ''
type: post
id: 51819
thumbnail: ../../../uploads/2021/08/cabeceraAndroid-1.jpg
category:
    - Linux
    - Software
tag:
    - android
    - droidcam
    - linux
    - software
    - ubuntu
post_format: []
ao_post_optimize:
    - 'a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}'
---
Los pasos que realicé para que Droidcam vuelva funcionar como tras el error Droidcam unable to find dev/video0

```
<pre class="wp-block-code">```
$ sudo apt install v4l2loopback-utils v4l-utils v4l2loopback-dkms cmake nasm yasm pkg-config libgtk2.0-dev
$ sudo modprobe v4l2loopback
$ v4l2-ctl --list-devices     # check if you have dummy video devices
Dummy video device (0x0000) (platform:v4l2loopback-000):
/dev/video0
```
```

Me pasa muy seguido que tengo que corregir droidcam tras actualizar Ubuntu y para esto solo uso este comando.

```
<pre class="wp-block-code">```
$ sudo modprobe v4l2loopback
```
```

Que sirve para agregar el módulo v4l2loopback al kernel que se acabamos de actualizar.

En este link comento como solucionar el problema cuando lo querés conectar por USB y no te reconoce linux tu dispositivo movil a través de una conexión USB.

[Ver solución a problema de USB](http://federicomazzei.com.ar/blog/linux-no-reconoce-tu-android-por-conexion-usb-para-usar-droidcam/)
