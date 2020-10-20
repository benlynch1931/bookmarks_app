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

### Creating Database (PSQL)
1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command `\c bookmark_manager`;
4. Run the SQL scripts in the `db/migrations/01_create_bookmarks_database.sql` file,  in the given order.

### Modifying Database to pass unit tests
1. Connect to psql
2. Ensure you're working on the correct database
3. Run the SQL scripst in the `db/migrations/02_create_bookmarks_table.sql` file, in the given order


# User Stories

```
As a user,
So I can see my collection of bookmarks,
I'd like to view all bookmarks.
```
<img src="./User Story 1 - DM.png">
