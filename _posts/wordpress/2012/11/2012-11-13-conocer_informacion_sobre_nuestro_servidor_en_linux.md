---
layout: post
title: 'Conocer información sobre nuestro servidor en linux'
date: '2012-11-13T16:30:11-03:00'
status: publish
permalink: /2012/11/conocer_informacion_sobre_nuestro_servidor_en_linux.html
author: fideo
excerpt: ''
type: post
id: 733
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
category:
    - 'Sin categoría'
tag: []
post_format: []
---
layout: post
Para conocer **detalle** de nuestra pc desde la consola podemos utilizar algunos comandos.

Para saber la cantidad de procesadores ejecutar este comando en Linux

```
<pre class="wp-block-preformatted">grep processor /proc/cpuinfo | wc –l
```

Para saber el modelo de procesador ejecutar este comando en Linux

```
<pre class="wp-block-preformatted">cat /proc/cpuinfo | grep "model name"
```

*Enjoy!!!*