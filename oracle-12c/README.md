# oracle-12c
##### Create application user

```
ssh_oracle.bat

CONN / AS SYSDBA

-- Switch container while connected as SYSDBA
ALTER SESSION SET CONTAINER = ORCLPDB1;

-- Create the local user using the CONTAINER clause.
CREATE USER dbadmin IDENTIFIED BY AdWvA6Ln CONTAINER=CURRENT;
GRANT connect, resource, create view TO dbadmin CONTAINER=CURRENT;

ALTER USER dbadmin quota unlimited on USERS;
```

##### JDBC connect string
```
jdbc:oracle:thin:@//localhost:1521/ORCLPDB1.localdomain
```