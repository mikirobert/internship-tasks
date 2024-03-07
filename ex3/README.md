docker volume create company_data

docker run -d --name companyDB -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=company -p 3306:3306 -v company_data:/var/lib/mysql mysql:latest

docker cp company.sql companyDB:/company.sql

docker exec -it companyDB bash

mysql -u root -p company < /company.sql

mysql -u root -p

USE company

CREATE USER 'mikirobert' IDENTIFIED BY 'rob1234';
GRANT ALL PRIVILEGES ON company.* TO 'mikirobert';
FLUSH PRIVILEGES;

exit

mysql -u mikirobert -p

USE company

SELECT department, AVG(salary) AS average_salary FROM employees GROUP BY department;

+------------+----------------+
| department | average_salary |
+------------+----------------+
|          1 |   60000.000000 |
|          2 |   75111.111111 |
|          3 |   53666.666667 |
|          4 |   67250.000000 |
|          5 |   51500.000000 |
|          6 |   63272.727273 |
|          7 |   83000.000000 |
|          8 |   58500.000000 |
+------------+----------------+