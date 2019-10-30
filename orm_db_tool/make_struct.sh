#!/bin/bash
#./table2struct --db_host 192.168.1.222 --db_port 3306 --db_pwd yichat --db_user yichat --db_name=yichat  --output ./outputdiri
OUTPUTDIR=outputdir
if [ ! -d ${OUTPUTDIR} ]
then
	mkdir -p outputdir
	echo "create dir outputdir"
fi

if [ $# -eq 0 ]
then
	echo "生成数据库全部的表映射"
	./table2struct --db_host 192.168.1.222 --db_port 3306 --db_pwd yichat --db_user yichat --db_name=yichat  --output ./outputdir
else
	echo "生成数据库表中前缀为 $1 的表映射"
	./table2struct --db_host 192.168.1.222 --db_port 3306 --db_pwd yichat --db_user yichat --db_name=yichat  --output ./outputdir  --skip_if_no_prefix --table_prefix $1  --tag_gorm
fi



#./table2struct --db_host 192.168.1.222 --db_port 3306 --db_pwd yichat --db_user yichat --db_name=yichat  --output ./outputdir  --skip_if_no_prefix --table_prefix $1  --tag_gorm
