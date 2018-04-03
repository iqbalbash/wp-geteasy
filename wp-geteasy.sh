#!/bin/bash

## Download WordPress
echo "Mendownload WordPress terbaru"
wget https://wordpress.org/latest.zip

## Ekstrak File
echo "Mengekstrak WordPress"
unzip latest.zip

## Memindahkan File
echo "Memindahkan file ke directori $PWD"
cd wordpress && mv index.php readme.html wp-admin wp-comments-post.php wp-content wp-includes wp-load.php wp-mail.php wp-signup.php xmlrpc.php license.txt  wp-activate.php wp-blog-header.php wp-config-sample.php wp-cron.php wp-links-opml.php wp-login.php wp-settings.php  wp-trackback.php ../

## Menghapus File
echo "Menghapus berkas yang tidak terpakai"
cd ../ && rm -rf wordpress latest.zip wp-geteasy.sh

## Konfigurasi di Browser
echo "Sekarang buka browser untuk konfigurasi selanjutnya"