# MySQL

Execute the following command to create a simple database

```
# Goto cli
ssh_mysql.bat

# Enter the password specified in docker-compose.yml when prompted
mysql -u root -p`

# Execute the following command in mysql> prompt
create user 'dbadmin'@'%' IDENTIFIED BY 'AdWvA6Ln';
create database its_refdata;
grant all privileges on * . * to 'dbadmin'@'%';
exit

```