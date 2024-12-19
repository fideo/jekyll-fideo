---
layout: post
title: 'Saber que verisón de UBUNTU tengo instalado'
date: '2015-06-23T10:57:09-03:00'
status: publish
permalink: /2015/06/que-version-ubuntu-instalado.html
author: fideo
excerpt: ''
type: post
id: 881
category:
    - 'Sin categoría'
tag: []
post_format: []
---
layout: post
Si alguna vez te preguntaste como averiguar que versión de Ubuntu tenes instalada eso lo podés realizar con este comando por consola

```
<pre class="wp-block-preformatted">lsb_release -a
```

La Salida sería algo similar a esta:

Distributor ID: Ubuntu  
Description: Ubuntu 14.04.2 LTS  
Release: 14.04  
Codename: trusty

También podemos usar las opciones de:  
-h, –help show this help message and exit  
-v, –version show LSB modules this system supports  
-i, –id show distributor ID  
-d, –description show description of this distribution  
-r, –release show release number of this distribution  
-c, –codename show code name of this distribution  
-a, –all show all of the above information  
-s, –short show requested information in short format

*Enjoy!!!*