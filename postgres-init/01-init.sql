-- Устанавливаем пароль для пользователя postgres
ALTER USER postgres WITH PASSWORD 'postgres';

-- Создаем базу данных SEMDB
CREATE DATABASE semdb WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';

-- Назначаем владельца базы данных
ALTER DATABASE semdb OWNER TO postgres;