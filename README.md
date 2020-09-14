# Express Boilerplate!

This is a boilerplate project used for starting new projects!

## Set up

Complete the following steps to start a new project (NEW-PROJECT-NAME):

1. Clone this repository to your local machine `git clone BOILERPLATE-URL NEW-PROJECTS-NAME`
2. `cd` into the cloned repository
3. Make a fresh start of the git history for this project with `rm -rf .git && git init`
4. Install the node dependencies `npm install`
5. Move the example Environment file to `.env` that will be ignored by git and read by the express server `mv example.env .env`
6. Edit the contents of the `package.json` to use NEW-PROJECT-NAME instead of `"name": "express-boilerplate",`
7. Create and set up production and test databases: 
  - Create databases: `createdb dbname`, `createdb dbname-test`.
  - Create database user: `createuser mydb-user`
  - Grante privileges to user in `psql`:
    - `GRANT ALL PRIVILEGES ON DATABASE dbname TO mydb-user`
    - `GRANT ALL PRIVILEGES ON DATABASE dbname-test TO mydb-user`
8. Check all TODO comments to make further required changes.
9. Bootstrap development and test databases:
  - `npm run migrate`
  - `npm run migrate:test`

## Configuring Postgres

For tests involving time to run properly, your Postgres database must be configured to run in the UTC timezone.

1. Locate the `postgresql.conf` file for your Postgres installation.
    - OS X, Homebrew: `/usr/local/var/postgres/postgresql.conf`
2. Uncomment the `timezone` line and set it to `UTC` as follows:

```
# - Locale and Formatting -

datestyle = 'iso, mdy'
#intervalstyle = 'postgres'
timezone = 'UTC'
#timezone_abbreviations = 'Default'     # Select the set of available time zone
```

## Sample Data

- To seed the database for development: `psql -U mydb-user -d dbname -a -f seeds/seed.dbname_tables.sql`
- To clear seed data: `psql -U mydb-user -d dbname -a -f seeds/trunc.dbname_tables.sql`

## Scripts

Start the application `npm start`

Start nodemon for the application `npm run dev`

Run the tests `npm test`

## Deploying

When your new project is ready for deployment, add a new Heroku application with `heroku create`. This will make a new git remote called "heroku" and you can then `npm run deploy` which will push to this remote's master branch.