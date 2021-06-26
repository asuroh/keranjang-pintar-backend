
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id char(36) PRIMARY KEY,
  name VARCHAR(30),
  email VARCHAR(50) not null,
  password VARCHAR(100) not null,
  image_path text,
  created_at timestamp(6) DEFAULT now(),
  updated_at timestamp(6) DEFAULT now(),
  deleted_at timestamp(6) 
);

DROP TABLE IF EXISTS categories; 
CREATE TABLE categories ( 
  id char(36) PRIMARY KEY,
  name VARCHAR(30) not null, 
  description text,
  created_at timestamp(6) DEFAULT now(),
  updated_at timestamp(6) DEFAULT now(),
  deleted_at timestamp(6)
);

DROP TABLE IF EXISTS products;
CREATE TABLE products ( 
  id char(36) PRIMARY KEY,
  category_id char(36) not null, 
  code VARCHAR(20) not null, 
  name VARCHAR(30) not null,
  description text,
  image_path text,
  price DECIMAL DEFAULT 0,
  qty int DEFAULT 0, 
  created_at timestamp(6) DEFAULT now(),
  updated_at timestamp(6) DEFAULT now(),
  deleted_at timestamp(6) 
);