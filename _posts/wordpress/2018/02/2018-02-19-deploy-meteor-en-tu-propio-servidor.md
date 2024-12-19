---
layout: post
title: 'Deploy Meteor en tu propio servidor'
date: '2018-02-19T11:28:42-03:00'
status: publish
permalink: /2018/02/deploy-meteor-en-tu-propio-servidor.html
author: fideo
excerpt: ''
type: post
id: 1284
thumbnail: ../../../uploads/2017/11/cabeceraMeteor-1.jpg
category:
    - 'Sin categoría'
tag: []
post_format: []
ao_post_optimize:
    - 'a:6:{s:16:"ao_post_optimize";s:2:"on";s:19:"ao_post_js_optimize";s:2:"on";s:20:"ao_post_css_optimize";s:2:"on";s:12:"ao_post_ccss";s:2:"on";s:16:"ao_post_lazyload";s:2:"on";s:15:"ao_post_preload";s:0:"";}'
---
layout: post
Hoy voy a dejar en mi blog asentado como hice para hacer que una aplicación [Meteor](https://guide.meteor.com/deployment.html) esté corriendo en mi servidor / hosting.  
Por el momento yo tengo mis sites hosteados en [DonWeb](https://donweb.com/) con un servicio de Cloud Server.  
Accedo a este servicio a travéz de una consola y en ese server tengo instalado CentOS al momento de escribir esta nota.

<figure class="wp-block-table aligncenter"><table><tbody><tr><td>![Node JS](http://federicomazzei.com.ar/blog/wp-content/uploads/2018/02/nodejs-new-pantone-white.png)</td><td>![Meteor js](http://federicomazzei.com.ar/blog/wp-content/uploads/2018/02/Meteor-logo.png)</td></tr><tr><td>![nginx](http://federicomazzei.com.ar/blog/wp-content/uploads/2018/02/nginx-logo-1000x1000.png)</td><td>![Centos OS 7](http://federicomazzei.com.ar/blog/wp-content/uploads/2018/02/centos_logo.png)</td></tr></tbody></table>

</figure>```
<pre class="wp-block-preformatted">cat /etc/redhat-release

#devuelve

CentOS Linux release 7.3.1611 (Core)

```

Primero hay que instalar [nginx](https://nginx.org/en/) , [mongodb](https://www.mongodb.com/es) , [meteor](https://www.meteor.com/) y [Passenger](https://www.phusionpassenger.com/) para esto pueden seguir las instrucciones de cada uno de las app en sus respectivos sitios o ver como lo hice yo en el video 😉

<iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/5sbQyFfw3N8?feature=oembed" title="Deploy Meteor en tu propio servidor" width="500"></iframe>

Igualmente acá les dejo un resumen de los comando a utilizar para instalar cada uno de los servicios en CentOS 7

Instalando nginx
----------------

```
<pre class="wp-block-preformatted">1) sudo yum install epel-release<br></br>
2) sudo yum install nginx<br></br>
2) sudo yum install nginx<br></br>
3) sudo systemctl start nginx<br></br>
```

Instalando MongoDB
------------------

```
<pre class="wp-block-preformatted">1) 
sudo vi /etc/yum.repos.d/mongodb-org.repo

[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc
```

2\) sudo yum repolist

Salida  
. . .  
repo id repo name  
base/7/x86\_64 CentOS-7 – Base  
extras/7/x86\_64 CentOS-7 – Extras  
mongodb-org-3.2/7/x86\_64 MongoDB Repository  
updates/7/x86\_64 CentOS-7 – Updates  
. . .  
3\) sudo yum install mongodb-org

4\) sudo systemctl start mongod

5\) sudo systemctl reload mongod

Instalando Meteor
-----------------

```
<pre class="wp-block-preformatted">curl https://install.meteor.com/ | sh

```

Instalando Node JS
------------------

```
<pre class="wp-block-preformatted">1) sudo yum install epel-release

2) sudo yum install nodejs

3) node --version

Salida

v0.10.30

4) sudo yum install npm

```

Instalando Passenger
--------------------

```
<pre class="wp-block-preformatted">1) sudo yum install -y epel-release yum-utils
```

2\) sudo yum-config-manager –enable epel

3\) sudo yum clean all &amp;&amp; sudo yum update -y

4\) sudo yum install -y pygpgme curl

5\) sudo curl –fail -sSLo /etc/yum.repos.d/passenger.repo https://oss-binaries.phusionpassenger.com/yum/definitions/el-passenger.repo

6\) sudo yum install -y nginx passenger || sudo yum-config-manager –enable cr &amp;&amp; sudo yum install -y nginx passenger

Una vez realizado todos estos pasos hay que editar el archivo passenger.conf ubicado /etc/nginx/conf.d/passenger.conf . Esto nos permitirá hacer un **deploy meteor en tu propio servidor**.

```
<pre class="wp-block-preformatted">#passenger_root /some-filename/locations.ini;

#passenger_ruby /usr/bin/ruby;

#passenger_instance_registry_dir /var/run/passenger-instreg;

```

Hay que sacarle el comentario ( # ) y grabarlo

```
<pre class="wp-block-preformatted">passenger_root /some-filename/locations.ini;

passenger_ruby /usr/bin/ruby;

passenger_instance_registry_dir /var/run/passenger-instreg;

```

Luego se reinicia el servidor nginx

```
<pre class="wp-block-preformatted">sudo service nginx restart

```

Se puede chequear la instalación ejecutando esta linea

```
<pre class="wp-block-preformatted">sudo /usr/bin/passenger-config validate-install

```

y tiene que devolver algo similar a esto

```
<pre class="wp-block-preformatted">* Checking whether this Phusion Passenger install is in PATH... ?

* Checking whether there are no other Phusion Passenger installations... ?

```

 **Listo ya podés hacer un Deploy de Meteor en tu propio servidor.**

[En este link les muestro como realizo un deploy con reaction commerce corriendo en mi propio servidor.](http://federicomazzei.com.ar/blog/reaction-commerce-usando-propio-servidor/)