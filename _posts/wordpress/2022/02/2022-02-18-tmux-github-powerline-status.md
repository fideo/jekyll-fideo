---
layout: post
title: 'Tmux github powerline status'
date: '2022-02-18T11:15:41-03:00'
status: publish
permalink: /2022/02/tmux-github-powerline-status.html
author: fideo
excerpt: 'Cree un repositorio en github para publicar mi configuración de Tmux; también la configuración de powerline y el .bashrc de mi PC por si alguien quiere usar esta configuración.'
type: post
id: 51944
thumbnail: ../../../uploads/2017/11/cabeceraGit-1.jpg
category:
    - git
    - Linux
    - 'Sin categoría'
    - 'Sistema Operativo'
    - Software
tag:
    - git
    - github
    - linux
    - powerline
    - 'sistema operativo'
    - tmux
post_format: []
ao_post_optimize:
    - 'a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}'
footnotes:
    - ''
---
layout: post
Tmux github powerline status. Cree un repositorio en github para publicar mi configuración de Tmux; también la configuración de powerline y el .bashrc de mi PC por si alguien quiere usar esta configuración.

<figure class="wp-block-image size-large is-resized">![Pantalla de Tmux donde se muestran tres promp de linux en una sola ventana.](https://raw.githubusercontent.com/fideo/tmux.conf/main/asset/TerminalMultiplexer.png)</figure>Este es el la dirección en github del repositorio desde ahí se puede descargar y/o clonar <https://github.com/fideo/tmux.conf>

Hay que crear en el home de su usuario (en mi caso /home/fideo/) el archivo .tmux.conf y copiar el contenido de lo que publiqué en github o directamente descargarlo pegarlo en su home.

La primera vez que iniciamos tmux debemos ejecutar el prefix (prefijo) Ctrl+B y luego las teclas Shift+I . Esto hará que se active las configuraciones realizadas en .tmux.conf

Al usar Tmux y ejecutar el prefix (prefijo) Ctrl+B es el que viene por defecto para Tmux se activa un ícono mostrando que se ha introducido el prefijo. Este ícono está en la parte inferior izquierda representado con un círculo y al ejecutar el prefix (Ctrl+B) se llena o completa ese círculo.

Para que se vean los íconos correctamente tenes que tener instalado las tipografìas que ofrece [Nerd fonts](https://www.nerdfonts.com/). (instalá todas las que creas necesarias 🙂 )

Para poder tener la consola de linux como se ve arriba primero tenes que tener instalado [powerline](https://powerline.readthedocs.io/en/master/), para los que usamos ubuntu o distribuciones derivadas de debian o debian es tan simple como ejecutar`:`

```
<pre class="wp-block-code">```
sudo apt install powerline

```
```

Instalar otros componentes importantes
--------------------------------------

Para que se vea colorizado como el lado izquierdo de la imágen se debe tener instalado [exa](https://the.exa.website/)

```
<pre class="wp-block-code">```
sudo apt install exa

```
```

Yo configué un alias dentro de mi .bashrc que ejecute exa -alFh esto hará que muestre la salida como se ve en la imagen ustedes pueden armar sus propios alias ayudandose de las opciones de comandos que se muetran en el sitio de [exa](https://the.exa.website/).

Tmux github powerline status, también tienen que tener instalado [bat](https://github.com/sharkdp/bat) que mejora la salida de cat y lo integra con git.

Te muestra el estado de tu CPU, la temperatura del microprocesador y el porcentaje de memoria RAM utilizada; también las cantidades de bytes subidos y descargados.

Los leo en los comentarios por si tiene alguna duda o sugerencia.

Pasen por [mi canal de YouTube que tengo videos usando esta configuración.](https://bit.ly/suscribiteamicanalYouTube)

[Ver mas post sobre linux](http://federicomazzei.com.ar/blog/tag/linux)