
    docker build . -t server:latest
    docker run -d --rm -p 8080:8080 -p 8081:8081 server
    
    docker service create -p 8080:8080 -p 8081:8081 --name server --health-cmd='curl -sS 127.0.0.1:8080' --health-retries=3 --health-interval=5s server