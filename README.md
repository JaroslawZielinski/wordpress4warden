# wordpress4warden
Wordpress 4.x Warden project

# how to use shell commands
in [packagist](https://packagist.org/packages/jaroslawzielinski/wordpress4warden)
```ssh
cd YourProject
composer require --dev jaroslawzielinski/wordpress4warden
sh vendor/jaroslawzielinski/wordpress4warden/setup.sh
cp .env.dist .env
```
and finally
```ssh
make docker-down init
```
