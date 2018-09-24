From alexcheng/magento2

ENV MAGENTO_ROOT /var/www/html

# Install .phars and move to /usr/local/bin/
RUN curl -O https://files.magerun.net/n98-magerun2.phar && chmod +x ./n98-magerun2.phar && mv ./n98-magerun2.phar /usr/local/bin/
RUN curl -O https://github.com/punkstar/mageconfigsync/releases/download/0.5.0-beta.1/mageconfigsync-0.5.0-beta.1.phar && chmod +x ./mageconfigsync-0.5.0-beta.1.phar && mv ./mageconfigsync-0.5.0-beta.1.phar /usr/local/bin/

ADD bin/* /usr/local/bin/

RUN ["chmod", "+x", "/usr/local/bin/magerun2"]
RUN ["chmod", "+x", "/usr/local/bin/magento-command"]
RUN ["chmod", "+x", "/usr/local/bin/mageconfigsync"]
