#pull image
docker run --name=mysql01 -d mysql/mysql-server:latest
#start dock
docker run --name=mysql01 -d mysql/mysql-server:latest
docker logs mysql01
echo 'check logs for root password'
docker exec -it mysql01 mysql -uroot -p
ALTER USER 'root'@'localhost' IDENTIFIED BY 'ChangeTh!s';

