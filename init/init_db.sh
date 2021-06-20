ROOT_PATH="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd -P)"

cd ${ROOT_PATH}/adventure-works-postgres
set -e
psql -c "CREATE DATABASE \"Adventureworks\";"
psql -d Adventureworks < install.sql
psql <<-EOSSQL
  CREATE DATABASE testdb;

EOSSQL
