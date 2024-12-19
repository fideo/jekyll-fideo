---
layout: post
title: 'Ubuntu &#8211; Mensaje de error en Apache2'
date: '2008-05-25T16:30:13-03:00'
status: publish
permalink: /2008/05/ubuntu-mensaje-de-error-en-apache2.html
author: fideo
excerpt: ''
type: post
id: 154
category:
    - Uncategorized
tag: []
post_format: []
---
layout: post
Seguramente aquellos que están instalando de cero un apache2 en ubuntu (apt-get install apache2) es muy probable que le aparezca una leyenda de este tipo, “***apache2: Could not reliably determine the server’s fully qualified domain name, using 127.0.1.1 for ServerName***” cuando quiera reiniciar el servidor apache2 (/etc/init.d/apache2 restart). En un foro encontré que para solucinar esto se tiene que colocar la siguiente linea ***ServerName &lt;nameOfMyServer&gt;*** en el ***httpd.conf***.

***Enjoy!!!***