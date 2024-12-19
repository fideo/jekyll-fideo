---
layout: post
title: 'Realizar backup en mongo con mongodump y mongorestore'
date: '2020-06-23T11:35:00-03:00'
status: publish
permalink: /2020/06/realizar-backup-en-mongo-con-mongodump-y-mongorestore.html
author: fideo
excerpt: ''
type: post
id: 1367
thumbnail: ../../../uploads/2020/06/cabeceraMongoDB-2.jpg
category:
    - Software
tag:
    - comando
    - software
post_format: []
---
layout: post
Si necesitas hacer un backup de tu base de datos con mongo este artículo te puede ayudar

<div aria-hidden="true" class="wp-block-spacer" style="height:20px"></div>En el próximo comando realizo un backup de la base de datos llamada gastosmensuales y lo llego al directorio /home/fideo/dumps/ claro que esto puede cambiarse por la dirección que ustedes prefieran /home/user/lugarqueprefieran

**Backup**  
mongodump –db gastosmensuales –out /home/fideo/dumps/

Acá abajo les dejo un script para que puedan ejecutar y les genere el backup; esto lo pueden poner dentro de un cron (en linux claro) y lo ejecutan cada X cantidad de tiempo.

```
<pre class="wp-block-preformatted">!/bin/bash
clear
echo "Realizando backUp de gastosmensuales en /home/fideo/dumps/"
mongodump --db gastosmensuales --out /home/fideo/dumps/
echo "Termino con exito!!!"
```

<div aria-hidden="true" class="wp-block-spacer" style="height:40px"></div>Para realizar una restauración (restore) de la base de datos es muy similar el comando salvo que hay que especificarle que puerto (–port) está usando la aplicación / base de datos, el hosting (–host) donde tengas que subir la base (generalmente se hace localmente la restauración por ende localhost) y finalmente el nombre (–db) que lleva la base de datos en mi caso es meteor. Le indicamos desde donde tiene que tomar los datos que sería la ruta hasta el zip que contiene el backup realizado con anterioridad.

**Restore**

```
<pre class="wp-block-preformatted">!/bin/bash
mongorestore --port 3001 --host localhost --db meteor /path/a/donde/hayas/descomprimido/el/zip
```