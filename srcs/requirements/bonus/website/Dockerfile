FROM debian:buster

RUN apt-get update && apt-get install -y \
    nginx && \
    mkdir -p /etc/nginx/sites-enabled/ && \
    echo 'server {' > /etc/nginx/sites-enabled/default && \
    echo '    root    /var/www;' >> /etc/nginx/sites-enabled/default && \
    echo '    location / {' >> /etc/nginx/sites-enabled/default && \
    echo '        try_files $uri /index.html;' >> /etc/nginx/sites-enabled/default && \
    echo '    }' >> /etc/nginx/sites-enabled/default && \
    echo '}' >> /etc/nginx/sites-enabled/default

COPY requirements/bonus/website/conf/* /var/www/

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]