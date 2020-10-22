# Bookmark Manager For Web Browsers

# HOW TO INSTALL/RUN

## First steps:

### Forking and Cloning
1. Begin by forking the repo, then cloning it to your local machine

### Installing gems to run application:

1. Run this code in terminal or Command-Line
```shell
bundle install
```
2. GOTO: Database Configuration
3. Update the `USER` and `DATABSE` constants in `spec/units/bookmark_spec.rb` to match your own choices so the tests run
4. Ensure the 'RACK_ENV' in spec_helper is set to 'test'

## Running server and accessing webpage:

1. run shotgun to start server
```shell
shotgun --pot=6030
```
2. go to this url in your web browser
```shell
localhost:6030
```
## Database Configuration:

### Creating Database Development Environment(PSQL)
1. In Terminal, run:
`psql postgres`
2. Create the database using the psql command `CREATE DATABASE bookmark_manager;`
3. Quit psql using `\q`
4. Run this code to set up database platform:
`psql bookmark_manager -f 01_create_bookmarks_table.sql`


### Creating Database Test Environment(PSQL)
1. In Terminal, run:
`psql postgres`
2. Create the database using the psql command `CREATE DATABASE bookmark_manager_test;`
3. Quit psql using `\q`
4. Run this code to set up database platform:
`psql bookmark_manager_test -f 01_create_bookmarks_table.sql`


# User Stories

```
As a user,
So I can see my collection of bookmarks,
I'd like to view all bookmarks.
```
<img src="./User Story 1 - DM.png">
