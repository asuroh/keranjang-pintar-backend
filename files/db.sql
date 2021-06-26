
DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id char(36) PRIMARY KEY,
  name VARCHAR(30),
  email VARCHAR(50) not null,
  password VARCHAR(100) not null,
  image_path text,
  created_at timestamp(6) DEFAULT now(),
  updated_at timestamp(6) DEFAULT now(),
  deleted_at timestamp(6) DEFAULT null
);