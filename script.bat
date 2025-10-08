@echo off
echo Stopping wigell-gateway-container
docker stop wigell-gateway-container
echo Deleting container wigell-gateway-container
docker rm wigell-gateway-container
echo Deleting image wigell-gateway-image
docker rmi wigell-gateway-image
echo Running mvn package
call mvn package
echo Creating image wigell-gateway-image
docker build -t wigell-gateway-image .
echo Creating and running container wigell-gateway-container
docker run -d -p 4545:4545 --name wigell-gateway-container --network wigell-network wigell-gateway-image
echo Done!