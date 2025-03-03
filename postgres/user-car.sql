CREATE TABLE car (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(45) NOT NULL,
    model VARCHAR(45) NOT NULL,
    price NUMERIC(12, 2) NOT NULL 
);

CREATE TABLE users (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(45),
    car_id BIGINT REFERENCES car(id) 
);

insert into users (first_name, last_name, email)
VALUES ('Sarvar', 'Boltaboyev', 'boltaboyev708@gmail.com'), ('Samandar', 'Durdibekov', 'smandar708@gmail.com'), 
('Rayhona', 'Durdibekova', 'rayhona708@gmail.com'), ('Guli', 'Yunusuvo', 'yunusova708@gmail.com');

insert into car (make, model, price)
VALUES ('Mercedes-Benz', 'eqs-450', 56456.65), ('BMW', 'x7', 90456.65), ('Chevrolet', 'spark', 89345.45);