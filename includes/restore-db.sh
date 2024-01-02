#!/bin/bash
source includes/core.sh
:: "Start"
wordpressSqlGz="wordpress.sql.gz"
cat $wordpressSqlGz | gunzip -c | warden db import
:: "Finished."
