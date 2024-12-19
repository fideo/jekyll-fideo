---
layout: post
title: 'Comparto la configuración de VIM'
date: '2023-03-24T19:53:12-03:00'
status: publish
permalink: /2023/03/comparto-la-configuracion-de-vim.html
author: fideo
excerpt: ''
type: post
id: 52117
thumbnail: ../../../uploads/2022/02/cabeceraVim-1.jpg
category:
    - git
    - Linux
    - Software
tag:
    - comando
    - git
    - github
    - linux
    - vim
post_format: []
---
layout: post
Dejo en el repositorio de github la configuración de VIM, acá podrás encontrar toda la configuración que utilizo para configurar mi **VIM**. Los complementos que utilizo son para el desarrollo de sitios webs y para administración de servidores.

<https://github.com/fideo/vim>

Dentro del repositorio git-hub que compartí en la linea de arriba pueden encontrar varios archivos pero dos son los importantes (los otros son para los videos de youtube) **.vimrc** y **.vimrc.plug** ahí está toda la configuración que uno necesita para dejar vim como se muestran en los videos de [youtube](https://www.youtube.com/@FedericoMazzei/videos) (esto puede modificarse con el paso del tiempo)

Para que los plugins que dejo a continuación funcionen tienen que tener instalado vim-plug. Si quieren pueden buscar la información oficial de como se instala este plugin, sino pueden ejecutar este comando estando parados en la raiz de su home.

```
<pre class="wp-block-code">```
cd ~
```
```

Luego ejecutan esto en la linea de comando

```
<pre class="wp-block-code">```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
```

> IMPORTANTE!!!
> 
> <cite>Seguramente cuando termines de instalar todo lo anterior te vas a encontrar con un mensaje de error de vim-youcompleteme no te preocupes, [en este link de dejo como solucionarlo.](https://www.federicomazzei.com.ar/blog/2023/03/vim-youcompleteme/)</cite>

Estos son algunos de los complementos que tengo instalado en mi **VIM** que utilizo habitualmente:

[‘vim-airline/vim-airline’](https://github.com/vim-airline)  
  
[‘vim-airline/vim-airline-themes’](https://github.com/vim-airline/vim-airline-themes)  
  
[‘nanotech/jellybeans.vim’](https://github.com/nanotech/jellybeans.vim)  
  
[‘scrooloose/nerdtree’](https://github.com/preservim/nerdtree)  
  
[‘ryanoasis/vim-devicons’](https://github.com/ryanoasis/vim-devicons)  
  
[‘jiangmiao/auto-pairs’](https://github.com/jiangmiao/auto-pairs)  
  
[‘alvan/vim-closetag’](https://github.com/alvan/vim-closetag)  
  
[‘tpope/vim-surround’](https://github.com/tpope/vim-surround)  
  
[‘valloric/youcompleteme’](https://github.com/ycm-core/YouCompleteMe)  
  
[‘honza/vim-snippets’](https://github.com/honza/vim-snippets)  
  
[‘othree/javascript-libraries-syntax.vim’](https://github.com/othree/javascript-libraries-syntax.vim)  
  
[‘mattn/emmet-vim’](https://github.com/mattn/emmet-vim)  
  
[‘SirVer/ultisnips’](https://github.com/SirVer/ultisnips)  
  
[‘yggdroot/indentline’](https://github.com/Yggdroot/indentLine)  
  
[‘tpope/vim-fugitive’](https://github.com/tpope/vim-fugitive)  
  
[‘airblade/vim-gitgutter’](https://github.com/airblade/vim-gitgutter)

<figure class="wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio"><div class="wp-block-embed__wrapper"><iframe allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen="" frameborder="0" height="281" loading="lazy" referrerpolicy="strict-origin-when-cross-origin" src="https://www.youtube.com/embed/UlX5b6NDet8?feature=oembed" title="Comparto la configuración de VIM" width="500"></iframe></div></figure>