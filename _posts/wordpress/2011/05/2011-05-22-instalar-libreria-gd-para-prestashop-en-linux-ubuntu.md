---
title: 'Instalar libreria gd para prestashop en linux ubuntu'
date: '2011-05-22T19:50:17-03:00'
status: publish
permalink: /2011/05/instalar-libreria-gd-para-prestashop-en-linux-ubuntu
author: fideo
excerpt: ''
type: post
id: 629
category:
    - Uncategorized
tag: []
post_format: []
---
<font style="position: absolute;overflow: hidden;height: 0;width: 0">[икони](http://xn--h1aafme.net/)</font>Hace unos días estaba retomando un projecto que tenía por ahí colgado el cual usa Prestashop, para quienes no conocenen esto le recomiendo que se peguen una vueltita por el site “<http://www.prestashop.com>“.

Dentro de los requerimientos que solicita para su instalación hay un punto que me costó resolver; y es el de activar en el server la librería gd.

Yo tengo como server Linux (Ubuntu) y para solucionar el problema de que no te deje seguir con la instalación por no tener habilitada la librería gd lo que hice fue lo siguiente:

Me posicione en la carpeta donde se encuentra el php.ini  
cd /etc/php5/apache/  
edité el archivo con permisos de root  
vi php.ini  
y busque el texto gd  
/gd (enter)

Trae algo similar a esto

\[gd\]  
; Tell the jpeg decode to ignore warnings and try to create  
; a gd image. The warning will then be displayed as notices  
; disabled by default  
; http://php.net/gd.jpeg-ignore-warning  
gd.jpeg\_ignore\_warning = 0

Lo hice fue sacarle el ; a esta linea “gd.jpeg\_ignore\_warning = 0”; volví a a cargar el prestashop con el botón que dice “Comprobar de nuevo” y el color rojo sobre “Librería GD” ya no está mas y se visualiza de color verde.

Si les sirvió el post por favor comentar gracias.

Enjoy!!!