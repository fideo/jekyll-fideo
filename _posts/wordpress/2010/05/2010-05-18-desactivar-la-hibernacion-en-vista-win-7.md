---
layout: post
title: 'desactivar la hibernación en Vista y Win7'
date: '2010-05-18T10:59:14-03:00'
status: publish
permalink: /2010/05/desactivar-la-hibernacion-en-vista-win-7.html
author: fideo
excerpt: ''
type: post
id: 568
category:
    - Uncategorized
tag: []
post_format: []
---
layout: post
Este tip me lo pasó un compañero de trabajo @praised1500 a quien le agredezco mucho este consejo ya que de una manera muy simple podemos hacer que windows deje de consumir varios Giga reservados para guardar todo lo necesario para la hibernación.

Para hacerlo solo necesitamos abrir una consola con permisos de administrador y ejecutar lo siguiente:

powercfg /hibernate off

y listo se liberó un buen número de GigaBytes reservados para la hibernación.