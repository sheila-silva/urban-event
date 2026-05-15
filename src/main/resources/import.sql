-- =========================
-- CITIES
-- =========================
INSERT INTO tb_city(name) VALUES ('São Paulo');
INSERT INTO tb_city(name) VALUES ('Brasília');
INSERT INTO tb_city(name) VALUES ('Fortaleza');
INSERT INTO tb_city(name) VALUES ('Salvador');
INSERT INTO tb_city(name) VALUES ('Manaus');
INSERT INTO tb_city(name) VALUES ('Curitiba');
INSERT INTO tb_city(name) VALUES ('Goiânia');
INSERT INTO tb_city(name) VALUES ('Belém');
INSERT INTO tb_city(name) VALUES ('Porto Alegre');
INSERT INTO tb_city(name) VALUES ('Rio de Janeiro');
INSERT INTO tb_city(name) VALUES ('Belo Horizonte');


-- =========================
-- EVENTS
-- =========================
INSERT INTO tb_event(name, date, url, city_id) VALUES ('Feira do Software', '2021-05-16','https://feiradosoftware.com', 1);

INSERT INTO tb_event(name, date, url, city_id) VALUES ('CCXP', '2021-04-13','https://ccxp.com.br', 1);

INSERT INTO tb_event(name, date, url, city_id) VALUES ('Congresso Linux', '2021-05-23','https://congressolinux.com.br', 2);

INSERT INTO tb_event(name, date, url, city_id) VALUES ('Semana Spring React', '2021-05-03','https://devsuperior.com.br', 3);


-- =========================
-- ROLES
-- =========================
INSERT INTO tb_role(authority) VALUES ('ROLE_CLIENT');
INSERT INTO tb_role(authority) VALUES ('ROLE_ADMIN');


-- =========================
-- USERS
-- senha bcrypt = 123456
-- =========================
INSERT INTO tb_user(name, email, password) VALUES ('Ana','ana@gmail.com','$2a$10$7qJmLJ6vI5t1P1M5Q6f8nO9M0M8WQ9LwB4j0B4kM7w5Qh6l6M3w5e');

INSERT INTO tb_user(name, email, password) VALUES ('Bob','bob@gmail.com','$2a$10$7qJmLJ6vI5t1P1M5Q6f8nO9M0M8WQ9LwB4j0B4kM7w5Qh6l6M3w5e');


-- =========================
-- USER ROLE
-- Ana -> CLIENT
-- Bob -> CLIENT + ADMIN
-- =========================
INSERT INTO tb_user_role(user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role(user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role(user_id, role_id) VALUES (2, 2);