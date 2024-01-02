#!/bin/bash
source includes/core.sh
:: "Start"
rm wordpress.sql.gz
warden db dump > wordpress.sql
gzip wordress.sql
:: "Finished."
