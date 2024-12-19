---
layout: post
title: 'Comando para obtener la dirección ip interna de una PC'
date: '2022-01-06T12:02:22-03:00'
status: publish
permalink: /2022/01/comando-para-obtener-la-direccion-ip-interna-de-una-pc.html
author: fideo
excerpt: ''
type: post
id: 51921
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
category:
    - Linux
    - Software
tag:
    - comando
    - linux
    - 'sistema operativo'
post_format: []
ao_post_optimize:
    - 'a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}'
---
layout: post
En linux podemos obtener de varias formas la ip interna de una PC; lo mas común es ejecutar ifconfig directamente en la consola pero para esto tenemos que tener instalado net-tools.

```
<pre class="wp-block-preformatted">sudo apt install net-tools
```

  
Pero yo no quería instalar nada (de caprichoso nomás) y fuí por la forma tradicional que tiene linux para mostrarte las ip y es con el comando ip propiamente dicho que acompañado por el objeto address te muestra las direcciones ip creadas para tu PC. Pero si ejecutamos esto en nuestro linux

```
<pre class="wp-block-preformatted">ip address
```

  
podemos ver que nos trae un montón de información que al momento de saber cual es nuestra dirección ip interna nos redundate toda esa información, pero en el bash de linux podemos hacer tuberías y limpiar todo eso y obtener solo la dirección ip interna.

```
<pre class="wp-block-preformatted">ip address | grep 192.168. | awk '{ print $2 }' | awk '{print substr($0,1,length($0)-3)}'
```

  
Con este comando de arriba le decimos que nos traiga las direcciones ip (ip address) luego que seleccione o separe solo las que coinciden con 192.168. (grep 192.168.) luego tomamos solamente el segundo grupo o patrón (awk ‘{print$2}’) y por último le saco los tres últimos carácteres para que me quede la ip interna limpia sin el base /24 (awk ‘{print substr($0,1,length($0)-3)}’)

También es muy interesante el objeto neigh

```
<pre class="wp-block-preformatted">ip neigh
```

muestra todas las ips “vecinas” que tenemos en nuestra red, es decir todas las que son accedidas desde la ip interna o de la pc que estamos ejecutando el comando.