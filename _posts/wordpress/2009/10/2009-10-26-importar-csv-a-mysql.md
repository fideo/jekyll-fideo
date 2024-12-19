---
layout: post
title: 'Importar CSV a MySQL'
date: '2009-10-26T22:45:48-03:00'
status: publish
permalink: /2009/10/importar-csv-a-mysql.html
author: fideo
excerpt: 'importar csv a mysql.'
type: post
id: 291
category:
    - Uncategorized
tag: []
post_format: []
---
layout: post
Este archivo reporte.csv tiene que estar alojado en el directorio data de tu server.

`<span style="color: #000000;"><span style="color: #0000bb;">mysql</span><span style="color: #007700;">> </span><span style="color: #0000bb;">LOAD DATA INFILE </span><span style="color: #dd0000;">'reporte.csv' </span><span style="color: #0000bb;">INTO TABLE reporte<br></br></span><span style="color: #007700;">-> </span><span style="color: #0000bb;">FIELDS TERMINATED BY </span><span style="color: #dd0000;">',' </span><span style="color: #0000bb;">ENCLOSED BY </span><span style="color: #dd0000;">'"'<br></br></span><span style="color: #007700;">-> </span><span style="color: #0000bb;">LINES TERMINATED BY </span><span style="color: #dd0000;">'\n'</span><span style="color: #007700;">; </span></span>`

<span style="color: #000000;"><span style="color: #007700;"><span style="color: #000000;">Es muy simple, te logueas a mysql, si usas linux mysql -u root -p y una vez dentro escribis lo de arriba.</span>  
</span></span>

<span style="color: #000000;"><span style="color: #007700;">  
</span></span>