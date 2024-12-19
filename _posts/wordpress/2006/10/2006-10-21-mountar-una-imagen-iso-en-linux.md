---
layout: post
title: 'Mountar una imagen ISO en Linux'
date: '2006-10-21T02:04:15-03:00'
status: publish
permalink: /2006/10/mountar-una-imagen-iso-en-linux.html
author: fideo
excerpt: ''
type: post
id: 89
category:
    - Uncategorized
tag: []
post_format: []
---
layout: post
Esta nota es mas que nada un ayuda memoria, por que cada vez que tengo que montar una imagen ISO en linux no recuerdo como se hace talvez a alguien mas le sirva.

 **mount -t iso9660 -o loopback imagen.raw /punto/de/montaje**