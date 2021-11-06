TABLES=$(mdb-tables "$1")
echo "Tables: $TABLES"
TABLES=($TABLES)
echo "Number of tables: ${#TABLES[@]}"

EXPORT_PATH="exports/$1"
mkdir -p "$EXPORT_PATH"
for TABLE in "${TABLES[@]}"
do
    echo "Table: $TABLE"
    mdb-json --date-format="%F" --datetime-format="%F %T" "$1" "$TABLE" > "$EXPORT_PATH/$TABLE.json"
    mdb-export --date-format="%F" --datetime-format="%F %T" "$1" "$TABLE" > "$EXPORT_PATH/$TABLE.csv"
    mdb-export --insert=postgres --date-format="%F" --datetime-format="%F %T" "$1" "$TABLE" > "$EXPORT_PATH/$TABLE.sql"
done
