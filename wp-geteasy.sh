#!/bin/bash

echo "-------------------------------"
## Download WordPress
echo "Mendownload WordPress terbaru"
wget https://wordpress.org/latest.zip
echo "-------------------------------"
echo "selesai mendownload"

echo "-------------------------------"
## Ekstrak File
echo "Mengekstrak WordPress"
unzip latest.zip
echo "-------------------------------"
echo "selesai mengekstrak"

echo "-------------------------------"
## Memindahkan File
echo "Memindahkan file ke directori $PWD"
cd wordpress && mv index.php readme.html wp-admin wp-comments-post.php wp-content wp-includes wp-load.php wp-mail.php wp-signup.php xmlrpc.php license.txt  wp-activate.php wp-blog-header.php wp-config-sample.php wp-cron.php wp-links-opml.php wp-login.php wp-settings.php  wp-trackback.php ../
echo "-------------------------------"
echo "selesai memindahkan file"

echo "-------------------------------"
## Menghapus File
echo "Menghapus berkas yang tidak terpakai"
cd ../ && rm -rf wordpress latest.zip wp-geteasy.sh
echo "-------------------------------"
echo "selesai menghapus"

echo "-------------------------------"
## Konfigurasi di Browser
echo "Sekarang buka browser untuk konfigurasi selanjutnya (http://$MYIP:80/)" | tee -a log-install.txt