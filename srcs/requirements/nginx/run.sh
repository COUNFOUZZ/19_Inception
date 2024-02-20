#!/bin/bash

cat nginx.conf >> /etc/nginx/sites-available/default

nginx -g "daemon off;"