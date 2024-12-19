---
layout: post
title: 'Enlaces permanentes de wordpress error 404'
date: '2013-04-06T20:35:20-03:00'
status: publish
permalink: /2013/04/enlaces-permanentes-de-wordpress-error-404.html
author: fideo
excerpt: 'un problema frecuente y tedioso de resolver cuando queremos acceder a una página en nuestro wordpress y nos da error 404 después de haber modificado los enlaces permanentes (Permalinks)'
type: post
id: 753
category:
    - 'Sin categoría'
tag: []
post_format: []
---
layout: post
Luego de googlear un poco encontré una solución muy simple a este problema para los que usamos linux y es hacer lo siguiente.  
Iniciar una consola y escribimos

```
<pre class="wp-block-preformatted">sudo a2enmod rewrite
```

Les tiene que dar un mensaje similar al siguiente

```
<pre class="wp-block-preformatted">Enabling module rewrite.
To activate the new configuration, you need to run:
service apache2 restart
```

Luego de esto lo que tienen que hacer es reiniciar el servidor web apache, para eso hacen lo siguiente

```
<pre class="wp-block-preformatted">sudo /etc/init.d/apache2 restart
```

Yo uso Ubuntu y esto puede diferir en alguna otra distribución de linux.

Espero que les sirva.

Enjoy!!!