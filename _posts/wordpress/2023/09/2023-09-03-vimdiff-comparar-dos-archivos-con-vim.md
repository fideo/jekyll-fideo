---
title: 'Vimdiff comparar dos archivos con VIM'
date: '2023-09-03T15:43:59-03:00'
status: publish
permalink: /2023/09/vimdiff-comparar-dos-archivos-con-vim
author: fideo
excerpt: 'Vimdiff nos permite comparar dos archivos, este comando es muy bueno cuando por ejemplo bajamos un archivo de un servidor y lo queremos comparar con lo que tenemos localmente'
type: post
id: 52203
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
Hoy vamos a usar Vimdiff (vim -d) para comparar dos archivos con VIM.

Vimdiff nos permite comparar dos archivos, este comando es muy bueno cuando por ejemplo bajamos un archivo de un servidor y lo queremos comparar con lo que tenemos localmente.

Para ejecutar este comando es muy facil solo tenemos que seleccionar dos archivos que queremos comparar para eso yo generé dos archivos de muestra que los dejo en el repositorio de github <https://github.com/fideo/vim>

Si quiero comparar textoAOrdenar.txt contra textoAOrdenar2.txt lo único que tengo que realizar es:

```
<pre class="wp-block-preformatted">vimdiff textoAOrdenar.txt y textoAOrdenar2.txt
```

Esto me permitirá ver de forma simple marcado con rojo y verde lo que difiere entre ambos archivos; pudiendo así realizar los cambios necesarios tanto en uno como otro archivo.

Recuerden que en vim se puede pasar de una solapa a otra con el comando **control + ww** alternando de un lado a otro de la solapas abiertas.

De esta manera podremos grabar las modificaciones que necesitemos de un lado u otro dejando el archivo que necesitemos “moficar” haciendo una comparación con el archivo base o local.

También con vimdiff podemos usar la opción **-o** que nos permitirá ver las diferencias con modo horizontal en lugar de tenerlas vertical.

Vimdiff comparar dos archivos con VIM en YouTube
------------------------------------------------

<figure class="wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio"><div class="wp-block-embed__wrapper"><iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/EZsv8hBFyXU?feature=oembed" title="Usando vimdiff para comparar dos archivos" width="500"></iframe></div></figure>Vimdiff se puede ejecutar con VIM usando la opción -d es decir que podemos comparar los dos archivos ejecutando lo siguienete:

```
<pre class="wp-block-preformatted">vim -d textoAOrdenar.txt y textoAOrdenar2.txt
```

y podríamos usar ambas opciones juntas por ejemplo

```
<pre class="wp-block-preformatted">vim -do textoAOrdenar.txt y textoAOrdenar2.txt
```

De esta forma podemos ver lo mismo que con vimdiff pero en forma horizontal y ejecutando el comando vim en lugar de vimdiff. A efecto es lo mismo usar uno u otro comando ya que los dos ejecutan o muestran exactamente el mismo resultado.

Si quisieras hacer que escrolee de un solo lado se puede usar el comando **set noscrollbind** y esto hará que se pueda escrolar de un solo lado mientras que en el otro lado de la comparación hace la escrolación de ambas ventanas.

[Si desean ver mas publicaciones sobre vim pueden hacer click en este enlace](http://federicomazzei.com.ar/blog/tag/vim/)

Espero que les guste el contenido de este post y si te gustó podes dejar un comentario acá o dejarlo en mi canal de YouTube y no te olvides de suscribirte y activar la campanita.

[Suscribite a mi Canal de YouTube](https://bit.ly/suscribiteamicanalYouTube)