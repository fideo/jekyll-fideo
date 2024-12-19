---
layout: post
title: 'Vim &#8211; Borrar el contenido de un tag con vim'
date: '2023-09-05T15:44:41-03:00'
status: publish
permalink: /2023/09/borrar-el-contenido-de-un-tag-con-vim.html
author: fideo
excerpt: 'Para borrar el contenido de un tag con vim solo necesitamos usar o presionar tres teclas'
type: post
id: 52227
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
category:
    - Linux
    - Software
tag:
    - comando
    - linux
    - vim
post_format: []
footnotes:
    - ''
---
layout: post
Para borrar el contenido de un tag con vim solo necesitamos usar o presionar tres teclas

```
dit
```

la “d” de delete  
la “i” de inside  
la “t” de tag

Entonces parados sobre el tag que queremos borrar el contenido ejecutamos esas tred teclas y el contenido se borrará

También podemos utilizar la combinación de teclas dat para borrar el tag completo incluido en el que estamos posicionado.

También se puede borrar por ejemplo el contenido de una llave o un corchete o lo que está encerrado entre una comilla simple o doble.

El comando es muy similar solo debemos cambiar la última tecla a utilizar antes usabamos la t para borrar el tag ahora deberíamos usar la tecla que encierra lo que queremos borrar

Por ejemplo si tenemos este contenido

```
<?php get_template_part( 'template-parts/content', 'single' ); ?>
```

Solo debemos posicionarnos dentro de las comillas simples **' '** y presionar las teclas **d + i + '** con esto borramos el contenido de lo que encierra la comilla simple.

<figure class="wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio"><div class="wp-block-embed__wrapper"><iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/Yn8Wsb-Vkjo?feature=oembed" title="Vim - Borrar el contenido de un tag con vim" width="500"></iframe></div></figure>[Si te gustó **Borrar el contenido de un tag con vim** podes visitar mas post sobre vim acá](http://federicomazzei.com.ar/blog/tag/vim/)

[No se olviden de suscribirse mi canal de YouTube donde hay mucho mas material sobre vim](https://bit.ly/suscribiteamicanalYouTube)