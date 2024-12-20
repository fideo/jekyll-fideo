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
  - linux
tag:     
  - comando
  - linux
post_format: []
---
Esta nota es más que nada una ayuda memoria, porque cada vez que tengo que montar una imagen ISO en linux no recuerdo como se hace talvez a alguien más le sirva.

```
mount -t iso9660 -o loopback imagen.raw /punto/de/montaje
```
 
