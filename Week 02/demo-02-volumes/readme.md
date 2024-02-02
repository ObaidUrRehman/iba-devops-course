docker build iba-devops-docker-class2 .
docker run -p 8080:3000 --name container iba-devops-docker-class2

/etc/todos/todo.db

docker volume create database-volume

docker run -dp 3000:3000 --mount type=volume,src=database-volume,target=/etc/todos iba-devops-docker-class2

\\wsl$\docker-desktop-data\data\docker\volumes
