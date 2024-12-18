---
title: 'Truco de CSS para mostrar texto en forma vertical'
date: '2010-11-12T21:30:19-03:00'
status: publish
permalink: /2010/11/truco-de-css-para-mostrar-texto-en-forma-vertical
author: fideo
excerpt: ''
type: post
id: 585
thumbnail: ../../../uploads/2020/08/cabeceraDefaulCodigo-1.jpg
category:
    - 'Sin categoría'
tag:
    - css
    - software
post_format: []
ao_post_optimize:
    - 'a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}'
---
Puede llegar a ser muy útil pero lamentablemente no funciona en todos los navegadores; por eso hay que tener muy en cuenta cuando se va a utilizar esta opción.

Para poder visualizar el texto en forma vertical simplemente tenes que aplicar esta class al objeto deseado.

`<br></br>.rotate {<br></br>-webkit-transform: rotate(-90deg);<br></br>-moz-transform: rotate(-90deg);<br></br>filter: progid:DXImageTransform.Microsoft.BasicImage(rotation=3);<br></br>}<br></br>`

[Para ver el ejemplo solo presioná acá](http://www.fideox.com.ar/wp-content/uploads/2010/11/textovertical.html)