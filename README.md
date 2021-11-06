# Export MDB database data (MacOS edition)

1. Install `mdbtools` with `brew install mdbtools`

    Sources and documentation here: https://github.com/mdbtools/mdbtools

2. Execute `./export-to-json.sh <file>`

    It will create an `exports` directory with all tables exported to JSON, CSV and SQL

#### `mdbtools` usage

- List tables with `mdb-tables <file>`

- Export data to JSON with `mdb-json --datetime-format="%F %T" <file> <table>`

- Export data to CSV with `mdb-export --date-format="%F" --datetime-format="%F %T" <file> <table>`

- Export data to CSV with `mdb-export --insert=postgres --date-format="%F" --datetime-format="%F %T" <file> <table>`
