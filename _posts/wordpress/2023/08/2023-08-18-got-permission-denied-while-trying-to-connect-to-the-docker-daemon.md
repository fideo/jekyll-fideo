---
title: 'Got permission denied while trying to connect to the Docker daemon'
date: '2023-08-18T14:38:34-03:00'
status: publish
permalink: /2023/08/got-permission-denied-while-trying-to-connect-to-the-docker-daemon
author: fideo
excerpt: 'Si acabas de instalar docker y te aparece ese mensaje de error Got permission denied while trying to connect to the Docker daemon al ejecutar docker, por ejemplo "docker ps" o "docker run" o cualquier otro comando de docker esto te puede servir.'
type: post
id: 52183
thumbnail: ../../../uploads/2021/11/cabeceraDocker-1.jpg
category:
    - Docker
    - Linux
    - Software
tag:
    - docker
    - linux
    - software
    - ubuntu
post_format: []
footnotes:
    - ''
---
Si acabas de instalar docker y te aparece ese mensaje de error ***Got permission denied while trying to connect to the Docker daemon*** al ejecutar docker, por ejemplo “docker ps” o “docker run” o cualquier otro comando de docker esto te puede servir.

Corregir el error
-----------------

Primero tenemos que agregar el grupo docker y para esto en la consola ejecutamos lo siguiente:

```
<pre class="wp-block-preformatted">sudo groupadd docker
```

Ahora tenemos que agregar el usuario nuestro a ese nuevo grupo y para esto ejecuatamos en la linea de comando lo siguiente:

```
<pre class="wp-block-preformatted">sudo usermod -aG docker $USER
```

Luego con cerrar la sesión y volver a abrirla ya debería dejarte ejecutar el comando docker; pero si igualmente no te deja te recomiendo que reinicies ubuntu o tu distro Linux