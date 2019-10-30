#!/bin/bash
#./table2struct --db_host 192.168.1.222 --db_port 3306 --db_pwd yichat --db_user yichat --db_name=yichat  --output ./outputdir
./table2struct --db_host 192.168.1.222 --db_port 3306 --db_pwd yichat --db_user yichat --db_name=yichat  --output ./outputdir  --skip_if_no_prefix --table_prefix $1  --tag_gorm
