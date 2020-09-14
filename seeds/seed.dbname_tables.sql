/* TODO Change table name(s) and file name to match proper table(s). */
begin;

truncate
  mydb_users
  restart identity cascade;

insert into mydb_users (user_name, full_name, email, password)
values
  ('demo', 'demo user', 'demo@example.com', '$2y$12$XN7iEugoKSJPFEoBQtikaOIfzZShAhWDDiGjBYAg0bgKsXuRz3zzG'); /* TODO Change demo user as needed. demo password is: P4ssword! */