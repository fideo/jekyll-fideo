---
layout: post
title: 'Habilitar o Deshabilitar un servicio en Linux Ubuntu'
date: '2021-12-09T08:31:00-03:00'
status: publish
permalink: /2021/12/habilitar-o-deshabilitar-un-servicio-en-linux-ubuntu.html
author: fideo
excerpt: ''
type: post
id: 51903
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
category:
    - Linux
    - 'Sin categoría'
    - 'Sistema Operativo'
tag:
    - comando
    - linux
    - sistema
    - ubuntu
post_format: []
ao_post_optimize:
    - 'a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}'
---
Si tenes un servicio que necesitas deshabilitar o habilitar acá te dejo los dos comandos que te permitirán realizar esto

Para habilitar un servicio debes ejecutar como superusuario systemctl enable servicioAHabilitar.service

```
<pre class="wp-block-preformatted">sudo systemctl enable apache2
```

  
Pada deshabilitar ese mismo servicio debes ejecutar (siempre como superusuario) systemctl disable servicioADeshabilitar.service

```
<pre class="wp-block-preformatted">sudo systemctl disable apache2
```
