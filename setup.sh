#!/bin/sh

mkdir -p includes

if [ ! -f ".env.dist" ];
then
  echo "\".env.dist\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/.env.dist .
else
  echo "\".env.dist\" already exists."
fi

if [ ! -f ".warden/conf/01-php.ini" ];
then
  echo "\".warden/conf/01-php.ini\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/.warden/conf/01-php.ini .warden/conf/
else
  echo "\".warden/conf/01-php.ini\" already exists."
fi

if [ ! -f ".warden/nginx/custom.conf" ];
then
  echo "\".warden/nginx/custom.conf\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/.warden/nginx/custom.conf .warden/nginx/
else
  echo "\".warden/nginx/custom.conf\" already exists."
fi

if [ ! -f ".warden/warden-env.yml" ];
then
  echo "\".warden/warden-env.yml\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/.warden/warden-env.yml .warden/
else
  echo "\".warden/warden-env.yml\" already exists."
fi

if [ ! -f "Makefile" ];
then
  echo "\"Makefile\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/Makefile .
else
  echo "\"Makefile\" already exists."
fi

if [ ! -f "PROJECT.md" ];
then
  echo "\"PROJECT.md\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/PROJECT.md .
else
  echo "\"PROJECT.md\" already exists."
fi

if [ ! -f "dockerfiles/php-fpm/.composer/auth.json.tmpl" ];
then
  echo "\"dockerfiles/php-fpm/.composer/auth.json.tmpl\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dockerfiles/php-fpm/.composer/auth.json.tmpl dockerfiles/php-fpm/.composer/
else
  echo "\"dockerfiles/php-fpm/.composer/auth.json.tmpl\" already exists."
fi

if [ ! -f "dockerfiles/php-fpm/Dockerfile" ];
then
  echo "\"dockerfiles/php-fpm/Dockerfile\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dockerfiles/php-fpm/Dockerfile dockerfiles/php-fpm/
else
  echo "\"dockerfiles/php-fpm/Dockerfile\" already exists."
fi

if [ ! -f "includes/core.sh" ];
then
  echo "\"includes/core.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/core.sh includes/
else
  echo "\"includes/core.sh\" already exists."
fi

if [ ! -f "includes/dbip.sh" ];
then
  echo "\"includes/dbip.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/dbip.sh includes/
else
  echo "\"includes/dbip.sh\" already exists."
fi

if [ ! -f "includes/docker-destroy.sh" ];
then
  echo "\"includes/docker-destroy.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/docker-destroy.sh includes/
else
  echo "\"includes/docker-destroy.sh\" already exists."
fi

if [ ! -f "includes/fix-dbpermissions.sh" ];
then
  echo "\"includes/fix-dbpermissions.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/fix-dbpermissions.sh includes/
else
  echo "\"includes/fix-dbpermissions.sh\" already exists."
fi

if [ ! -f "includes/init.sh" ];
then
  echo "\"includes/init.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/init.sh includes/
else
  echo "\"includes/init.sh\" already exists."
fi

if [ ! -f "includes/mailhog.sh" ];
then
  echo "\"includes/mailhog.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/mailhog.sh includes/
else
  echo "\"includes/mailhog.sh\" already exists."
fi

if [ ! -f "includes/revendor.sh" ];
then
  echo "\"includes/revendor.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/revendor.sh includes/
else
  echo "\"includes/revendor.sh\" already exists."
fi

if [ ! -f "includes/urls.sh" ];
then
  echo "\"includes/urls.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/urls.sh includes/
else
  echo "\"includes/urls.sh\" already exists."
fi

