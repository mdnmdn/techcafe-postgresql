ROOT_PATH="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)"

mkdir -p ${ROOT_PATH}/data/db
mkdir -p ${ROOT_PATH}/data/pgadmin
docker compose up -d
#docker run -e POSTGRES_PASSWORD=io -p 5432:5432 -v ${ROOT_PATH}/data/:/var/lib/postgresql/data --name pg --rm postgres:13-alpine

echo "
----------------
 pgadmin:
     url: http://localhost:5050  
    user: postgres@synesthesia.it
     pwd: io
----------------
 postgres:
     url: localhost:5432
    user: postgres
     pwd: io
----------------

Stop all with:
> docker compose down


logs:
> docker compose logs -f
"
