---
layout: post
title: 'convertir videos por linea de comando con ffmpeg'
date: '2011-02-23T21:44:12-03:00'
status: publish
permalink: /2011/02/convertir-videos-por-linea-de-comando-con-ffmpeg.html
author: fideo
excerpt: ''
type: post
id: 624
category:
    - Uncategorized
tag: []
post_format: []
---
layout: post
Para ver la resolución de un video ejecutamos esto en una consola

**ffmpeg -i mi-video.extension**

Luego para convertirlo lo que tenemos que hacer es lo siguiente:

ffmpeg -i mi-video.avi (que estaba en 640×480) -s 320×240 (el tamaño al cual lo quiero pasar) mi-video-convertido.mpg  
**ffmpeg -i mi-video.extension -s 320×240 mi-video-convertido.extension**