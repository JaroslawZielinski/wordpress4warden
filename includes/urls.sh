#!/bin/bash
source includes/core.sh
printf "Frontend: %s\n" "https://${TRAEFIK_SUBDOMAIN}.${TRAEFIK_DOMAIN}/"
printf "Backend:  %s\n" "https://${TRAEFIK_SUBDOMAIN}.${TRAEFIK_DOMAIN}/wp-login.php"
printf "Admin:    %s\n" ${ADMIN_USER}
printf "Pass:     %s\n" ${ADMIN_PASS}
