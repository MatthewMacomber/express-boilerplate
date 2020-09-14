/* TODO Change table name to prefered user table name in create table and file name. */
create table mydb_users (
  id serial primary key,
  user_name text not null unique,
  full_name text not null,
  password text not null,
  email text not null,
  date_created timestamptz default now() not null,
  date_modified timestamptz
)

/* TODO Add alter tables to connect user to user content. Example:
alter table mydb_posts
  add column
    user_id integer references mydb_users(id)
    on delete set null;
*/