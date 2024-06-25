# wordpress4warden
Wordpress 4.x Warden project

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/jaroslawzielinski)

# prerequisites:

* Warden (see here https://docs.warden.dev/installing.html)

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

# If encounter any problem with database:

### Connect to MySQL (via localhost) [after](https://stackoverflow.com/questions/1559955/host-xxx-xx-xxx-xxx-is-not-allowed-to-connect-to-this-mysql-server#answer-22605418)

```sql
mysql -uroot -p
```
If the MySQL server is running in Kubernetes (K8s) and being accessed via a NodePort

```sql
kubectl exec -it [pod-name] -- /bin/bash
mysql -uroot -p
```

### Create user
```sql
CREATE USER 'user'@'%' IDENTIFIED BY 'password';
```

### Grant permissions
```sql
GRANT ALL PRIVILEGES ON *.* TO 'user'@'%' WITH GRANT OPTION;
```

### Flush privileges
```sql
FLUSH PRIVILEGES;
```

Enjoy Your Wordpress World!
