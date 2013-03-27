if [ "$#" -lt 3 ]
then
	echo "usage: mysql_createdb <dbname> <username> <password>";
	exit 1;
fi

DB_NAME=$1
USER_NAME=$2
PASSWORD=$3

mysql -u root -p <<EOF
create database if not exists $DB_NAME;
grant all privileges on $DB_NAME.* to $USER_NAME@localhost identified by '$PASSWORD';
EOF
