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
#!/bin/bash
uname -m
```

Donde muestra i686 para los sistemas operativos de 32 Bits y x86\_64 para los que son de 64 Bits.

El comando `uname` tiene un montón de información al ejecutarlo de la siguiente manera 

```
uname -a
```

-a, --all                imprime toda la información, en el siguiente orden, omitiendo -p y -i

-s, --kernel-name        imprime el nombre del kernel

-n, --nodename           imprime el hostname de tu network

-r, --kernel-release     imprime el número de release del kernel

-v, --kernel-version     imprime la versión del kernel

-m, --machine            imprime el nombre del hardware de la máquina

-p, --processor          imprime los tipos de procesadores (no-portables)

-i, --hardware-platform  imprime la plataforma del hardware (no-portables)

-o, --operating-system   imprime el sistema operativo

--help                   imprime la ayuda y sale

--version                imprime el número de versión y sale

