docker compose pull

docker compose up -d

docker compose exec -u www-data app php occ db:add-missing-columns
docker compose exec -u www-data app php occ db:add-missing-indices
docker compose exec -u www-data app php occ db:add-missing-primary-keys
