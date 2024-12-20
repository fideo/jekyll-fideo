---
layout: post
title: 'Partir en varios archivos .zip un directorio o un archivo'
date: '2024-06-05T12:33:09-03:00'
status: publish
permalink: /2024/06/partir-en-varios-archivos-zip-un-directorio-o-un-archivo.html
author: fideo
excerpt: ''
type: post
id: 52287
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
category:
    - Linux
tag:
    - comando
    - linux
    - software
    - ubuntu
post_format: []
---
En mi caso necesitaba realizar un comando que me permita partir en varios archivos .zip un directorio o un archivo .iso

Obviamente que por pantalla gráfica esto es muy fácil de hacer pero el problema se presenta cuando estas accediendo a un servidor y tienes que partir un archivo grande en varios fragmentos para poder transportarlo ya sea para mandar por mail o copiarlo a otro lugar.

En principio tenemos que tener instalado el **p7zip** si no lo tenes instalado en Ubuntu o linux derivados de Debian se instala así:

```
<pre class="wp-block-code">```
sudo apt-get install p7zip-full
```
```

Si ya lo tenes instalado lo único que tenes que hacer es especificar la cantidad de MB (Mega Bytes) en la que queres partir tu directorio o tu archivo. En mi ejemplo yo lo realizo con un archivo .iso y para eso ejecuto la siguiente linea.

```
<pre class="wp-block-code">```
7z a -v 500m -tzip ARCHIVO.zip ARCHIVO.iso
```
```

Una vez ejecutada se podrá ver en el directorio destinon las N cantidad de partes de archivos .zip que fué generando de 500MB hasta completar el total del archivo .iso

Si quisieramos realizar una compresión en varios archivos de un directorio el comando a utilizar sería algo así:

```
<pre class="wp-block-code">```
7z a -v500m -tzip archivo.zip miDirectorio/*
```
```

El archivos.zip tendrá varias partes de 500MB según lo que pese el directorio a comprimir y partir

[Podes ver mas ejemplos de lineas de comandos en este link](https://www.federicomazzei.com.ar/blog/tag/comandos/)

[O podes buscar mas ayuda en el manual oficial de p7zip](https://www.7-zip.org/faq.html)
