From alexcheng/magento2

ENV MAGENTO_ROOT /var/www/html

# Install n98-magerun2.phar and move to /usr/local/bin/
RUN curl -O https://files.magerun.net/n98-magerun2.phar && chmod +x ./n98-magerun2.phar && mv ./n98-magerun2.phar /usr/local/bin/

ADD bin/* /usr/local/bin/

RUN ["chmod", "+x", "/usr/local/bin/magerun2"]
