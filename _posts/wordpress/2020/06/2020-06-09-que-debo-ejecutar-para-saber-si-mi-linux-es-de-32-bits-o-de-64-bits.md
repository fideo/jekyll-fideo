---
layout: post
title: '¿Que debo ejecutar para saber si mi linux es de 32 Bits o de 64 Bits?'
date: '2020-06-09T07:00:00-03:00'
status: publish
permalink: /2020/06/que-debo-ejecutar-para-saber-si-mi-linux-es-de-32-bits-o-de-64-bits.html
author: fideo
excerpt: ''
type: post
id: 1359
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
category:
    - Linux
    - 'Sistema Operativo'
tag:
    - comando
    - linux
    - 'sistema operativo'
post_format: []
---
Para ver que tipo de arquitectura es nuestro sistema operativo Linux que estoy usando; es decir, si es de 32 Bits o de 64 Bits; para eso se ejecuta en consola el siguiente comando

```
<pre class="wp-block-preformatted">#!/bin/bash
uname -m
```

donde muestra i686 para los sistemas operativos de 32 Bits y x86\_64 para los que son de 64 Bits.
