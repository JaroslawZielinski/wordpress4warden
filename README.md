# wordpress4warden
Wordpress 4.x Warden project

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/jaroslawzielinski)

# how to use shell commands
in [packagist](https://packagist.org/packages/jaroslawzielinski/wordpress4warden)
```ssh
cd YourProject
composer require --dev jaroslawzielinski/wordpress4warden
sh vendor/jaroslawzielinski/wordpress4warden/setup.sh
cp .env.dist .env
make init
make wordpress-install
```
delete file `wp-config.php`

run your url and setup wordpress. Copy all of the secret values from new created `wp-config.php` to .env file after successful installation. 

and finally
```ssh
make docker-down init
```

Enjoy Your Wordpress World!
