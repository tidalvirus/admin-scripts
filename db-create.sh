#!/bin/bash

# bit of a mishmash - the prompts taken from http://www.linuxdigest.org/2012/06/bash-script-to-create-mysql-database-and-user/
# The rest made up by me

echo -n "Enter database name: "
read dbname
echo -n "Enter database host (probably localhost): "
read dbhost
echo -n "Enter database username: "
read dbuser
echo -n "Enter database user password: "
read dbpw

TMPFILE=${USER}.$$.createdb.sql
if [ -a ${TMPFILE} ]
then
	echo "File already exists! Exiting"
	exit 1
fi

cat >${TMPFILE} <<EOF
CREATE DATABASE ${dbname};
GRANT ALL PRIVILEGES ON ${dbname}.* TO '${dbuser}'@'${dbhost}' IDENTIFIED BY '${dbpw}';
FLUSH PRIVILEGES;
EOF

echo "Written to SQL file ${TMPFILE}"

cat ${TMPFILE}

echo "Enter MySQL root password at following prompt"
mysql -u root -p < ${TMPFILE}

echo "Deleting ${TMPFILE}"
rm ${TMPFILE}
