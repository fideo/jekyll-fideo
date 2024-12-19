---
layout: post
title: 'Borrar directorio y subdirectoios en linux'
date: '2010-01-25T11:13:45-03:00'
status: publish
permalink: /2010/01/borrar-directorio-y-subdirectoios-en-linux.html
author: fideo
excerpt: ''
type: post
id: 457
category:
    - Uncategorized
tag: []
post_format: []
---
layout: post
Para poder borrar directorios y subdirectorios en linux lo único que hace falta es realizar este comando

```
 rm -RI
```

donde `-R` borra recursivamente directorios que contenga el directorio que queremos borrar y ` -I ` borra recursivamente los archivos que contenga ese directorio y sus subdirectorio.

Es decir si tenemos un directorio que se llama “directorio1” que contiene otros directorios “directorio1.1” y otro “directorio1.2” si ejecutas esto

```
 rm -IR
```

borrará tanto “directorio1” como “directorio1.1” como “directorio1.2” y los archivos que ellos contengan.