select * from pg_available_extensions()

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


SELECT uuid_generate_v4()
----------------------------------------
CREATE TABLE IF NOT EXISTS authors(
  author_id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name varchar(50),
  bio text,
  created_at timestamp DEFAULT current_timestamp
);

select * from authors;

CREATE TABLE IF NOT EXISTS books(
  book_id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  published_date date default current_date,
  meta_data JSON,
  updated_at timestamp DEFAULT current_timestamp
);

CREATE TABLE IF NOT EXISTS publishers(
  publisher_id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  publisher_name VARCHAR(100) NOT NULL,
  country CHAR(2),
  foundded_year integer,
  details json,
  created_at timestamp DEFAULT current_timestamp
);

CREATE TABLE IF NOT EXISTS libraries(
  library_id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
  liblary_name VARCHAR(100) NOT NULL,
  lib_location TEXT,
  open_time time default current_time,
  close_time time default current_time,
  facilities json,
  created_at timestamp DEFAULT current_timestamp
);
----------------------------------------------------------

-- CREATE table if not exists author(
-- 	author_id integer REFERENCES authors(author_id),
-- 	book_id integer REFERENCES books(book_id)
-- );

-- CREATE table if not exists book_publisher(
-- 	book_id integer REFERENCES books(book_id),
-- 	publisher_id  REFERENCES publishers(publisher_id)
-- );

-- create table if not exists liblary_book(
-- 	library_id integer REFERENCES libraries(library_id),
-- 	boook_id integer REFERENCES books(book_id)
-- );

select * from authors;
select * from books;
sl