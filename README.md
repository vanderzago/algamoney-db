# algamoney-db
docker build -t algamoney-db .
docker run --rm --name algamoney-postgres -e POSTGRES_PASSWORD=TR!c0lor -p 5432:5432 -d algamoney-db
docker logs algamoney-postgres -f
docker stop algamoney-postgres
