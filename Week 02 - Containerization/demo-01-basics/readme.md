docker build -t iba-devops .
docker run -dit -p 8080:80 --name class-demo iba-devops
