#!/bin/bash
source includes/core.sh
:: "Start"
curl -O https://wordpress.org/latest.zip
unzip latest.zip
mv wordpress/* .
rm -r wordpress/ latest.zip
:: "Finished."
