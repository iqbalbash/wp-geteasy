#!/bin/bash

## Mendownload WordPress terbaru
wget https://wordpress.org/latest.zip

## Mengekstrak WordPress
unzip latest.zip

## Memindahkan file ke folder root
cd wordpress && mv wp-admin wp-content wp-includes index.php license.txt readme.html wp-active.php wp-blog-header.php wp-comments-post.php wp-config-sample.php wp-cron.php wp-links-opml.php wp-load.php wp-login.php wp-mail.php wp-settings.php wp-signup.php wp-trackback.php xmlrpc.php ../

## Menghapus berkas yang tidak terpakai
cd ../ && rm -rf wordpress latest.zip wp-geteasy.sh