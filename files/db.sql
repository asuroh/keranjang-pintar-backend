
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

INSERT INTO users(id, name, email, password, image_path, created_at, updated_at, deleted_at) VALUES
('0c334e29-609a-4c7d-856b-f004a1399b3b', 'thoriq aziz asuro', 'thoriq.azizasuro@gmail.com', '$2a$14$Zr20eYNB/D/q0InBRVcfgunahuUodXyLqCSJZE.FYONkBe6QXtUVm', '/c00p9aevvhfkgt1rtjg0_WhatsApp-Image-2021-01-14-at-19.28.21.jpeg', '2021-01-15 12:07:40.845362', '2021-01-15 13:12:09.801545', NULL);
