FROM python:3

RUN software="git vim cron curl apache2 apache2-utils libapache2-mod-wsgi-py3" \
    && apt-get update && apt-get install -y $software 
RUN pip install --upgrade pip
WORKDIR /var/www/html
CMD ["apache2ctl", "-D", "FOREGROUND"]
