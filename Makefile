#---- LINUX -------------->
chown:
	sudo chown -R {wsl_user}:{wsl_user} {project_name}
    # Si tu veux que www-data reste le propriétaire mais que adhaouadi ait aussi accès, utilise les ACL :
    #  > sudo setfacl -R -m u:adhaouadi:rwx transit_tn_docker
    # Et pour tous les futurs fichiers aussi :
    #  > sudo setfacl -R -d -m u:adhaouadi:rwx transit_tn_docker
    # Vérification des droits
    # > getfacl transit_tn_docker
#---- DOCKER -------------->
remove:
	docker compose down --remove-orphans

build:
	docker compose build --pull --no-cache

start:
	docker compose up -d

stop:
	docker compose stop

#---- API -------------->
api-wait:
	docker compose up -d --wait

api-bash:
	docker compose exec -ti php bash

api-init:
	docker compose exec -ti php composer install

api-secretKey:
	docker compose exec -ti php php bin/console secrets:generate-keys

api-cc:
	docker compose exec -ti php php bin/console c:c

#---- FRONT -------------->
front-create:
	npm create nuxt@latest front

#---- GIT -------------->
rebase:
	git rebase -i HEAD~2