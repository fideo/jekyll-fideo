---
layout: post
title: 'Copiar buffer consola a entorno gráfico X11'
date: '2021-12-22T13:05:04-03:00'
status: publish
permalink: /2021/12/copiar-buffer-consola-a-entorno-grafico-x11.html
author: fideo
excerpt: ''
type: post
id: 51917
thumbnail: ../../../uploads/2017/11/cabeceraUbuntu-1.jpg
category:
    - Linux
    - 'Sistema Operativo'
tag:
    - comando
    - linux
    - ubuntu
post_format: []
ao_post_optimize:
    - 'a:5:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";}'
---

Necesitaba copiar un texto desde un server y decidí instalarme xclip. Para esto ejecuté:

```
sudo apt install xclip
```

  
Es muy fácil de usar xclip; si queremos copiar un texto podemos hacer lo siguiente:

```
echo "Un texto cualquiera" | xclip -i
```

  
Luego si queremos copiar ese texto en la consola hacemos lo siguiente:

```
xclip -o 
```

  
y el resultado sería –&gt; Un texto cualquiera

Me encontré con un problema… que al ejecutar el xclip por consola obtenía un mensaje de error que me decía que display no estaba configurado.

```
can't open display:
```

  
Esto lo pude solucionar ejecutando un export DISPLAY

```
export DISPLAY=localhost:0
```

  
Listo, con eso alcanza para que al conectarme al servidor nuevamente pueda ejecutar el xclip sin problemas.

Si estás usando tmux esto te puede ayudar

```

eval $(tmux showenv -s | grep -E '^(SSH|DISPLAY)')
```
