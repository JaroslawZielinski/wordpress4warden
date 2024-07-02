#!/bin/sh

mkdir -p .warden/conf
mkdir -p .warden/nginx
mkdir -p dbtests/
mkdir -p dockerfiles/php-fpm/.composer
mkdir -p includes

if [ ! -f ".env.dist" ];
then
  echo "\".env.dist\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/.env.dist .
else
  echo "\".env.dist\" already exists."
fi

if [ ! -f "dbip.conf" ];
then
  echo "\"dbip.conf\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dbip.conf .
else
  echo "\"dbip.conf\" already exists."
fi

if [ ! -f ".warden/wp-config.php" ];
then
  echo "\".warden/wp-config.php\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/.warden/wp-config.php .warden/
else
  echo "\".warden/wp-config.php\" already exists."
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

if [ ! -f "README.md" ];
then
  echo "\"README.md\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dbtests/README.md .
else
  echo "\"README.md\" already exists."
fi

if [ ! -f "dbtests/config.env" ];
then
  echo "\"config.env\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dbtests/config.env dbtests/
else
  echo "\"config.env\" already exists."
fi

if [ ! -f "dbtests/idFinder.sh" ];
then
  echo "\"idFinder.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dbtests/idFinder.sh dbtests/
else
  echo "\"idFinder.sh\" already exists."
fi

if [ ! -f "dbtests/structureFinder.sh" ];
then
  echo "\"structureFinder.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dbtests/structureFinder.sh dbtests/
else
  echo "\"structureFinder.sh\" already exists."
fi

if [ ! -f "dbtests/wordFinder.sh" ];
then
  echo "\"wordFinder.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dbtests/wordFinder.sh dbtests/
else
  echo "\"wordFinder.sh\" already exists."
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

if [ ! -f "dockerfiles/php-fpm/Dockerfile_php73" ];
then
  echo "\"dockerfiles/php-fpm/Dockerfile_php73\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dockerfiles/php-fpm/Dockerfile_php73 dockerfiles/php-fpm/
else
  echo "\"dockerfiles/php-fpm/Dockerfile_php73\" already exists."
fi

if [ ! -f "dockerfiles/php-fpm/Dockerfile_php81" ];
then
  echo "\"dockerfiles/php-fpm/Dockerfile_php81\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/dockerfiles/php-fpm/Dockerfile_php81 dockerfiles/php-fpm/
else
  echo "\"dockerfiles/php-fpm/Dockerfile_php81\" already exists."
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

if [ ! -f "includes/restore-db.sh" ];
then
  echo "\"includes/restore-db.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/restore-db.sh includes/
else
  echo "\"includes/restore-db.sh\" already exists."
fi

if [ ! -f "includes/save-db.sh" ];
then
  echo "\"includes/save-db.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/save-db.sh includes/
else
  echo "\"includes/save-db.sh\" already exists."
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

if [ ! -f "includes/wordpress-install.sh" ];
then
  echo "\"includes/wordpress-install.sh\" copied."
  cp vendor/jaroslawzielinski/wordpress4warden/includes/wordpress-install.sh includes/
else
  echo "\"includes/wordpress-install.sh\" already exists."
fi
