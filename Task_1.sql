-- Подготовка
Create Table product 
(
id SERIAL PRIMARY KEY, 
name VARCHAR(255)
)
INSERT INTO product (name) VALUES ('Товар 1');
INSERT INTO product (name) VALUES ('Товар 2');
INSERT INTO product (name) VALUES ('Товар 3');


Create Table category 
(
id SERIAL PRIMARY KEY, 
name VARCHAR(255)
)

INSERT INTO category (name) VALUES ('Категория 1');
INSERT INTO category (name) VALUES ('Категория 2');
INSERT INTO category (name) VALUES ('Категория 3');


CREATE TABLE product_category (
    product_id INT,
    category_id INT,
    PRIMARY KEY (product_id, category_id),
    FOREIGN KEY (product_id) REFERENCES product(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);

INSERT INTO product_category (product_id, category_id) VALUES (1, 1);
INSERT INTO product_category (product_id, category_id) VALUES (1, 2);
INSERT INTO product_category (product_id, category_id) VALUES (2, 2);

-- Запрос
SELECT p.name, c.name FROM product p
	Left Join product_category pc ON pc.product_id = p.id
	Left Join category c ON c.id = pc.category_id