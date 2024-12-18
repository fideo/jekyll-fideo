---
title: 'Impossible to create a database using MySQL &#8211; No podes crear una base de datos en MySQL'
date: '2009-09-05T16:05:30-03:00'
status: publish
permalink: /2009/09/impossible-to-create-a-database-using-mysql
author: fideo
excerpt: ''
type: post
id: 266
category:
    - Uncategorized
tag: []
post_format: []
---
Esto me ayudó muchísimo cuando me da el error 1006 (errno:13) en MySQL.

Este error significa es que no tenemos permiso de escritura en la carpeta donde se alojarán las bases de datos.

Esto se soluciona así:  
chown mysql.mysql -R /var/lib/mysql  
chmod 750 -R /var/lib/mysql

Este error no debería aparecer mas “Message : #1006 – Can’t create database ‘MyDataBase’. (errno: 13)”