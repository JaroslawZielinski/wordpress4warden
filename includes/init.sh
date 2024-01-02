#!/bin/bash
source includes/core.sh
:: "Start"
docker build -t ${PHP_IMAGE_NAME} dockerfiles/php-fpm/
brew install davidalger/warden/warden
warden svc up
## Init Warden env
warden sign-certificate ${TRAEFIK_SUBDOMAIN}.${TRAEFIK_DOMAIN}
warden env up -d
warden env exec -u root -T php-fpm bash -c "/usr/bin/envsubst < /home/www-data/.composer/auth.json.tmpl > /home/www-data/.composer/auth.json"
warden env exec -u root -T php-fpm bash -c "sudo chown www-data:www-data -R /home/www-data/"
. includes/fix-dbpermissions.sh
warden env exec -u root -T php-fpm bash -c "/usr/bin/envsubst < /root/.composer/auth.json.tmpl > /root/.composer/auth.json"
read -p "Rebuild project with composer (y/n)?" choice
case "$choice" in
  y|Y ) echo "yes";;
  n|N ) . includes/dbip.sh;exit 0;;
  * ) . includes/dbip.sh;exit 0;;
esac
. includes/dbip.sh
warden env exec -T php-fpm bash -c "composer require --dev jaroslawzielinski/wordpress4warden dev-master"
warden env exec -T php-fpm bash -c "sh vendor/jaroslawzielinski/wordpress4warden/setup.sh"
:: "Finished."
