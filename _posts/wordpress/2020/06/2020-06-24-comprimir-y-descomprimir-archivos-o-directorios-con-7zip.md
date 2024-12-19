---
layout: post
title: 'Comprimir y descomprimir archivos o directorios con 7zip'
date: '2020-06-24T07:00:00-03:00'
status: publish
permalink: /2020/06/comprimir-y-descomprimir-archivos-o-directorios-con-7zip.html
author: fideo
excerpt: ''
type: post
id: 1365
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
category:
    - Linux
    - 'Sistema Operativo'
tag:
    - comando
    - linux
    - 'sistema operativo'
post_format: []
---
layout: post
Desde la consola se puede comprimir archivo o directorios con un simple comando

Comprimir  
Si se necesita comprimir una carpeta o un archivo lo que se necesita hacer es lo siguiente:

```
<pre class="wp-block-preformatted">7z a archivo_comprimido.7z /ruta/a/carpetas/ /ruta/a/archivos
```

A fines prácticos si se necesita realizar una compresión de un directorio o carpeta el comando sería el siguiente:

```
<pre class="wp-block-preformatted">7z a directorios_comprimidos.7z /ruta/a/carpetas/
```

si fuese un archivo solo el comando sería el siguiente

```
<pre class="wp-block-preformatted">7z a archivo_comprimido.7z /ruta/a/archivos
```

Extraer  
Para poder extrar el contenido de un archivo zipeado ya sea con la extensión .zip o .7z

```
<pre class="wp-block-preformatted">7z e archivo_a_extraer_el_contenido.7z
```