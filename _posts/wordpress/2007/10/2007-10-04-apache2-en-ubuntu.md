---
title: 'Apache2 en Ubuntu'
date: '2007-10-04T22:56:00-03:00'
status: publish
permalink: /2007/10/apache2-en-ubuntu
author: fideo
excerpt: ''
type: post
id: 124
category:
    - Uncategorized
tag: []
post_format: []
---
Me pasé a ubuntu como servidor web, y al reiniciar el apache2 me tiraba este error “**apache2: Could not reliably determine the server’s fully qualified domain name, using 127.0.0.1 for ServerName**“, esto lo solucione poniendo en el archivo hosts que se encuentra en /etc/hosts esta linea ” **127.0.0.1 localhost.localdomain localhost panchita**” (panchita = nombre de la máquina) que por algún motivo se modificó.  
Espero que les sirva.