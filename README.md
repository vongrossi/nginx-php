# Container php 7 fpm e Nginx

Este projeto está em desenvolvimento.
Baseado em ubuntu usa a última versão disponível em seu repositório

 - nginx
 - php-fpm

##### USO 

docker run -p 80:80 -d vongrossi/nginx-php


atualmente não há nda configurado para rodar em 443

docker run -p 443:443 -d vongrossi/nginx-php

#### ACESSO

Acesse uma das urls abaixo dependendo do seu ambiente 

 
0.0.0.0/info.php 
127.0.0.1/info.php
localhost.php
172.X.X.X/info.php 

 
 



