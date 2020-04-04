#!/bin/bash

rm /var/www/html/qcam/ -rf
cp . /var/www/html/qcam/ -r
rm /var/www/html/qcam/deploy.bat

rm /etc/nginx/nginx.conf
rm /etc/nginx/sites-available/default

cp ./nginx/nginx.conf /etc/nginx/nginx.conf
cp ./nginx/sites-available/default /etc/nginx/sites-available/default
