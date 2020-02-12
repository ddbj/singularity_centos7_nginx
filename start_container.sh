#!/bin/bash

CONTAINER_HOME=$(cd $(dirname $0); pwd)
INSTANCE="nginx"

singularity instance.start \
-B ${CONTAINER_HOME}/nginx.conf:/etc/nginx/nginx.conf \
-B ${CONTAINER_HOME}/logs:/var/log/nginx \
-B ${CONTAINER_HOME}/html:/usr/share/nginx/html \
-B ${CONTAINER_HOME}/nginx_cache:/var/cache/nginx \
${CONTAINER_HOME}/centos7_nginx.simg \
${INSTANCE}

singularity exec instance://${INSTANCE} /usr/sbin/nginx
