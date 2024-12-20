---
layout: post
title: 'Crear un listado de directorios o carpetas desde la consola de linux'
date: '2021-08-09T09:49:14-03:00'
status: publish
permalink: /2021/08/crear-un-listado-de-directorios-o-carpetas-desde-la-consola-de-linux.html
author: fideo
excerpt: 'Dos opciones para realizar una estructura de directorios o carpetas en forma de árbol.'
type: post
id: 51400
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
category:
    - Linux
tag:
    - comando
    - linux
    - software
    - ubuntu
post_format: []
---
Tal vez te encuentres con la necesidad de tener que armar una lista de directorios o carpetas, de tu sistema linux, acá te dejo un comando que te permite realizar ese proceso.

```
<pre class="wp-block-code">```
ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/ /' -e 's/-/|/'
```
```

También se puede instalar el comando **tree** que es mucho mas cuidado estéticamente y tiene una cuantos parámetros que lo podes ejecutar a tu gusto.

```
<pre class="wp-block-code">```
sudo apt install tree
```
```

Una vez instalado es tan simple que solo debemos estar posicionado en el directorio donde queremos empezar a armar el árbol de directorios o carpetas y lo ejecutamos.

Si solo queremos que nos liste los directorios como en el primer ejemplo solo hay que agregarle el parámetro -d

```
<pre class="wp-block-code">```
tree -d
```
```

te dejo acá una serie de parámetros que pueden serte de utilidad

```
<pre class="wp-block-code">```
tree -L X   # Muestra hasta X cantidad de directorios o carpetas de profundidad
tree -f     # Incluye la ruta de los archivos incluidos en ese directorio.
tree -a     # Incluye los archivos y directorios ocultos en los directorios listados.
tree /      # Arma un árbol de todo nuestro sistema operativo desde el root.
tree -ugh   # Agrega el propietario (-u), el grupo (-g) y el tamaño de cada archivo (-h)
tree -H . -o tudirectorio.html # Exporta tu árbol de directorio a un archivo HTML.
```
```

Este último ” tree -H . -o tudirectorio.html ” es muy útil cuando necesitas exponer en la web un directorio que tal vez no se encuentre dentro de tu webserver, entonces lo ejecutas con este comando y luego se lo ubica dentro del webserver para que sea servido y publicado a internet.

Espero que sirva el aporte, a quien le haya servido, espero sus comentarios abajo.
