# https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html

.DEFAULT_GOAL := help

init: ## Init
	./includes/init.sh
	make urls mailhog

docker-up: ## Docker Up
	@echo "Dockers UP"
	warden env up -d

docker-down: ## Docker Down
	@echo "Dockers Down"
	warden env down -v

docker-restart: ## Docker Restart
	make docker-down docker-up

docker-destroy: ## Docker Destroy
	./includes/docker-destroy.sh

db-ip: ## Show Db IP
	./includes/dbip.sh

shell: ## Shell
	warden shell

restore-db: ## Restore Db From wordpress.sql.gz
	./includes/restore-db.sh

save-db: ## Save Db To wordpress.sql.gz
	./includes/save-db.sh

wordpress-install: ## Wordpress Install
	./includes/wordpress-install.sh

urls: ## Show Urls
	./includes/urls.sh

revendor: ## Revendor
	./includes/revendor.sh

fix-dbpermissions: ## Fix Db permissions
	./includes/fix-dbpermissions.sh

mailhog: ## Open mail hog
	./includes/mailhog.sh

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
