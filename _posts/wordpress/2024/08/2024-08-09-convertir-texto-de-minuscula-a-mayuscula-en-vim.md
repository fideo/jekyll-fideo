---
layout: post
title: 'Convertir texto de minúscula a MAYÚSCULA en Vim'
date: '2024-08-09T09:13:36-03:00'
status: publish
permalink: /2024/08/convertir-texto-de-minuscula-a-mayuscula-en-vim.html
author: fideo
excerpt: ''
type: post
id: 52292
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
category:
    - Linux
    - Software
tag:
    - comando
    - linux
    - vim
post_format: []
---
layout: post
Para convertir texto de minúscula a MAYÚSCULA en Vim se puede realizar una convinación de tres o cuatro teclas para conseguir este resultado.

Estando en modo NORMAL en vim y presionando las teclas **gUw** cambian la palabra siguiente de minúscula a MAYÚSCULA y si queremos hacer el paso inverso la convinación de teclas es **guw** como se puede apreciar el único cambio significativo es la letra **u** que cambia de minúscula a mayúscula según se necesite cambiar de un estado a otro.

Ahora si quisieramos cambiar toda la linea en la que nos encontramos posicionados deberíamos cambiar la tecla **w** por **$** ya que la primera indica palabra (w de word) y la segunda indica linea completa ($).  
Entonces el comando para pasar de una linea completa de minúscula a mayúscula es **gU$** y para pasar de mayúscula a minúscula las teclas que hay que presionar son **gu$**

Les dejo un video que publiqué en YouTube donde muestro como convertir texto de minúscula a MAYÚSCULA en Vim.

<figure class="wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio"><div class="wp-block-embed__wrapper"><iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/67I9Y5bw2o0?feature=oembed" title="Cambiar texto a minúscula o MAYÚSCULA en VIM" width="500"></iframe></div></figure>[Podés ver mas videos sobre vim en este enlace presionando acá.](https://youtube.com/playlist?list=PLEwU9ammVfH8b0g6pRuV6OggPw0Mxuhqm&si=miXN869jnHjbhiS6)

Si queres ver mas publicaciones sobre vim te dejo el link a las entradas con etiquetas de vim:  
<https://www.federicomazzei.com.ar/blog/tag/vim>