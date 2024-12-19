---
layout: post
title: 'Update &#8211; Replace en MySQL'
date: '2006-07-01T10:01:51-03:00'
status: publish
permalink: /2006/07/update-replace-en-mysql.html
author: fideo
excerpt: ''
type: post
id: 80
category:
    - Uncategorized
tag: []
post_format: []
---
layout: post
Tenía que reemplazar unas palabras en mi base de datos, consulte en el manual y busque varios ejemplo en google hasta que por fin encontre un ejemplo bien explicito.

Lo anoto acá para tenerlo bien amano para cuando lo vuelva a necesitar y por si alguien por ahi anda necestando reemplazar una parte de un texto en un o en varios campos de su base de datos.

**update** \[table\_name\] set \[field\_name\] = **replace**(\[field\_name\],'\[string\_to\_find\]’,'\[string\_to\_replace\]’);