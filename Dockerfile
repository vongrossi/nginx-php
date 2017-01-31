#Origem da Imagem Base
FROM ubuntu

#Descreve quem criou quem mantem o desenvolvimento desta imagem
MAINTAINER vongrossi@gmail.com

#Atualiza o sistema e os repositorios do sistema
RUN apt-get update && apt-get upgrade -y 

# Instala as ultimas versões disponiveis do git, nginx e php e limpa o cache do apt
RUN apt-get install -y nginx php-fpm php-mysql mysql-client && apt-get clean

#Label rotulo de descricao
LABEL Description "Webserver Php7 Nginx"

#Adiciona o arquivo de configurações para o site default do nginx
ADD conf/nginx/default /etc/nginx/sites-available/ 

#Adiciona o arquivo de configurações para php
ADD conf/php/php.ini /etc/php/7.0/fpm/ 

#Adiciona um arquivo de informação do php
ADD conf/www/info.php /var/www/html/

# Espõe as portas 80 e 443
EXPOSE 80 443

# Inicia o Serviço do nginx e do php7.0-fpm
CMD service php7.0-fpm start && nginx -g "daemon off;"
