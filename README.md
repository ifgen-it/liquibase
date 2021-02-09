#Liquibase tutorial

Database: MySql - used from docker:

docker pull mysql/mysql-server:latest
docker run --detach --name=mysql-liquibase --env="MYSQL_ROOT_PASSWORD=root" -e MYSQL_ROOT_HOST=% --publish 6604:3306 -e MYSQL_DATABASE=userdb -d mysql/mysql-server:latest


###Table User can be created with inserted data in 3 ways:

####Hibernate ddl-auto and data.sql
  - Change filename schema.sql -> schema-temp.sql (to make unavailable)
  - spring.jpa.hibernate.ddl-auto=create
  - spring.datasource.initialization-mode=always
  - spring.liquibase.enabled=false

####Scripts schema.sql and data.sql
  - spring.jpa.hibernate.ddl-auto=none
  - spring.datasource.initialization-mode=always
  - spring.liquibase.enabled=false

####Liquibase script db.changelog-master.yaml
  - spring.jpa.hibernate.ddl-auto=none
  - spring.datasource.initialization-mode=never
  - spring.liquibase.enabled=true (default)