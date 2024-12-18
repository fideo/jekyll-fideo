---
title: 'Configurar DKIM con OpenDKIM en Cloudflare'
date: '2023-06-30T11:21:35-03:00'
status: publish
permalink: /2023/06/configurar-dkim-con-opendkim-en-cloudflare
author: fideo
excerpt: ''
type: post
id: 52143
thumbnail: ../../../uploads/2023/06/Cloudflare-logo.jpg
category:
    - Software
tag:
    - cloudflare
    - comando
    - linux
    - opendkim
    - software
post_format: []
---
Hace un tiempo cambié de proveedor de hosting y tuve que configurar yo los registros DKIM en Cloudflare y me encontré con el problema que no sabía como obtener las claves DKIM; bueno acá dejo un instructivo de lo que hice para que me dejen de llegar los mail tipo spoofing.

DKIM o DomainKeys Identified Mail en inglés son las claves de identificación de dominio digitales que sirven para que un intruso no mande mails en tu nombre es decir usando tu dominio; a esto se lo conoce como spoofing.

Yo redirigo el tráfico de mis dominios a los DNS de Cloudflare ya tiene muchas ventajas entre ellas: acelera tu Web, reduce la carga del servidor, entre muchas otras ventajas más.

Vamos a lo importante, como configurar DKIM en Cloudflare obteniendo los DKIM generados por OpenDKIM.

Ya conectado en modo ssh al servidor donde alojo mis dominios ejecuto el siguiente comando para obtener el DKIM correspondiente a un dominio en particular.

```
<pre class="wp-block-code">```
sudo cat /etc/opendkim/keys/bikrun.com/default.txt
```
```

Muestra algo similar a esto:

<figure class="wp-block-image size-full">![Comando cat a opendkim para mostrar el dkim de un dominio](http://federicomazzei.com.ar/blog/wp-content/uploads/2023/06/ConsolaSSH_cat_OpenDKIM.png)</figure>esa información que nos muestra tenemos que seleccionarla y copiarla para luego pegarla en Cloudflare en un registro TXT como se muestra en la siguiente imagen

<figure class="wp-block-image size-large">![](http://federicomazzei.com.ar/blog/wp-content/uploads/2023/06/Cloudflare_DKIM_configuracion_registro_txt.png)</figure>He eliminado las comillas dobles y los espacios entre parámetro y parámetro; luego de hacer esto grabo el registo en cloudflare presionando el botón guardar.

Para chequear que todo esto está correctamente configurado utilizo un lookup de DKIM yo usé este [https://easydmarc.com/tools/dkim-lookup](https://www.mimecast.com/products/dmarc-analyzer/dkim-check/) pero hay muchos en internet pueden elegir el que les guste (acá hay otros <https://mxtoolbox.com/SuperTool.aspx> y <https://www.mimecast.com/products/dmarc-analyzer/dkim-check/>

Con esto se evitará que lleguen mails a tu casilla de correo con tu misma dirección sin que uno lo haya enviado. Espero que les sirva cualquier cosa me escriben un comentario si es que hay algo que no se entendió o faltó publicar.