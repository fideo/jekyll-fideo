---
layout: post
title: 'Montar un disco rígido más a nuestro ubuntu'
date: '2011-07-29T00:26:46-03:00'
status: publish
permalink: /2011/07/montar-un-disco-rigido-mas-a-nuestro-ubuntu.html
author: fideo
excerpt: ''
type: post
id: 634
thumbnail: ../../../uploads/2021/08/cabeceraBash-1.jpg
category:
    - 'Sin categoría'
tag: []
post_format: []
ao_post_optimize:
    - 'a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}'
---
layout: post
Para montar otro disco rígido en Ubuntu por consola se puede utilizar este comando.

```
<pre class="wp-block-preformatted">```
sudo mount -t auto /dev/sda1 /mnt
```
```

Para averiguar que tipo disco es el que queremos montar usamos

```
<pre class="wp-block-preformatted">```
sudo fdisk -l
```
```

esto listará todos los discos del que estén montados.

Espero que les sirva.