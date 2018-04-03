#!/bin/bash

echo "-------------------------------"
## Download WordPress
echo "Mendownload WordPress terbaru"
wget https://wordpress.org/latest.zip

echo "-------------------------------"
## Ekstrak File
echo "Mengekstrak WordPress"
unzip latest.zip

echo "-------------------------------"
## Memindahkan File
cd wordpress && mv index.php readme.html wp-admin wp-comments-post.php wp-content wp-includes wp-load.php wp-mail.php wp-signup.php xmlrpc.php license.txt  wp-activate.php wp-blog-header.php wp-config-sample.php wp-cron.php wp-links-opml.php wp-login.php wp-settings.php  wp-trackback.php ../

echo "-------------------------------"
## Menghapus File
cd ../ && rm -rf wordpress latest.zip wp-geteasy.sh

echo "-------------------------------"
## Konfigurasi di Browser
echo "Sekarang buka browser untuk konfigurasi selanjutnya (client config : http://$MYIP:80/)" | tee -a log-install.txt