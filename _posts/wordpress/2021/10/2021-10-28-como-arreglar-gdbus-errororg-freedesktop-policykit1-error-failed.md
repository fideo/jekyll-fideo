---
layout: post
title: 'Como arreglar GDBus. Error:org. freedesktop. PolicyKit1. Error. Failed'
date: '2021-10-28T09:47:39-03:00'
status: publish
permalink: /2021/10/como-arreglar-gdbus-errororg-freedesktop-policykit1-error-failed.html
author: fideo
excerpt: ''
type: post
id: 51872
thumbnail: ../../../uploads/2021/10/cabeceraCentos7-1.jpg
category:
    - 'Sin categoría'
tag: []
post_format: []
ao_post_optimize:
    - 'a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}'
---
Durante mucho tiempo estuve teniendo este error GDBus.Error:org.freedesktop.PolicyKit1.Error.Failed cada vez que ejecutaba sudo “service csf restart” por ejemplo o cualquier servicio que quisiera reiniciar me mostraba este error.  
Esto me sucedía en mi servidor Centos 7 con el panel de control CentOS Web Panel es decir el CWP; esto empezó a suceder luego de una actualización, estuve varios días sin poder solucionar este problema.

Por suerte me encontré con una solución en Internet, de tooooodas las que probé, la que resuelve el inconveniente hasta el día de hoy son estos pasos que dejo a continuación.

Para esto tenemos que ejecutar estos comandos por linea de comando:

```
<pre class="wp-block-preformatted">groupadd -g 23 nohidproc
usermod -a -G nohidproc polkitd
mount -o remount,rw,hidepid=2,gid=nohidproc /proc
systemctl restart polkit
```

Agregar esta linea en el fichero /etc/fstab

```
<pre class="wp-block-preformatted">echo "proc /proc proc defaults,hidepid=2,gid=nohidproc 0 0" >> /etc/fstab
```

Luego se ejecuta

```
<pre class="wp-block-preformatted">mount -a
```

y se reinicia polkit

```
<pre class="wp-block-preformatted">systemctl restart polkit
```

Espero que le sirva, dejenmé en los comentarios si se
