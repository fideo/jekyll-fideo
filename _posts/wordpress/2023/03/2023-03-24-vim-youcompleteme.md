---
layout: post
title: 'VIM YouCompleteMe'
date: '2023-03-24T16:55:25-03:00'
status: publish
permalink: /2023/03/vim-youcompleteme.html
author: fideo
excerpt: ''
type: post
id: 52115
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
categories:
    - Linux
    - Software
tag:
    - linux
    - 'sistema operativo'
    - ubuntu
    - vim
post_format: []
---
Si te aparece este mensaje dentro de tu editor VIM  
  
***The ycmd server SHUT DOWN (restart with ‘:YcmRestartServer’). YCM core library not dete…; you need to compile YCM before using it. Follow the instructions in the documentation.***   
esto se debe a que tu complemento YouCompleteMe necesita ser reinstalado.

Es tan simple como posisionarse dentro del directorio de instalación de YouCompleteMe en mi caso /home/fideo/.vim/plugged/youcompleteme y ejecutar esto

```
python install.py
```

Esto hará el proceso de instalación y corrige todas las librerías y dependencias que necesita para que se ejecute correctamente el complemento.

#### ¿Qué es YouCompleteMe?

Es un poderoso autocompletar para vim, no necesitas que escribas la palabra completa este complemento hace de las suyas para ayudarte a completar la palabra que estas por escribir, ya sea que estes escribiendo en lenguaje python, javascript o una amplia gama de lenguajes.
