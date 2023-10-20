drop database if exists shop;
create database if not exists shop;

use shop;


CREATE TABLE IF NOT EXISTS Categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

insert into Categories (name) values
('Овощи'),
('Фрукты'),
('Молочные продукты'),
('Здоровое питание'),
('Напитки');


CREATE TABLE IF NOT EXISTS Products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    category_id INT,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (category_id) REFERENCES Categories(id)
);

insert into products (name, category_id, price) values
('сок', 5, 7.50),
('протеиновое печенье', 4, 5.98),
('редис', 1, 2.00),
('сырок', 3, 1.26),
('персик', 2, 2.43);


CREATE TABLE IF NOT EXISTS Customers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20)
);

insert into Customers (firstname, lastname, email, phone) values
('Андрей', 'Пирокинезис', 'fraugruyicreive-8061@yopmail.com', '79366943731'),
('Никита', 'Кислов', 'quajazauzedde-1779@yopmail.com', '79586517138'),
('Олег', 'ЛСП', 'woirihikappe-5968@yopmail.com', '79817139633'),
('Юрий', 'Каплан', 'taujetonnixe-5412@yopmail.com', '79144949026'),
('Мики', 'Мацубара', 'frulayenovo-7003@yopmail.com', '79776858926');



CREATE TABLE IF NOT EXISTS Orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATETIME,
    FOREIGN KEY (customer_id) REFERENCES Customers(id)
);

insert into Orders (customer_id, order_date) values
(4, '2023-02-22 03:43:18'),
(1, '2023-08-30 14:02:48'),
(5, '2023-10-27 01:50:40'),
(2, '2023-10-11 05:21:38'),
(3, '2023-06-01 20:03:14');

CREATE TABLE IF NOT EXISTS OrderDetails (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(id),
    FOREIGN KEY (product_id) REFERENCES Products(id)
    );
    
 insert into OrderDetails (order_id, product_id, quantity, price) values
(4, 5, 2, 4.86 ),
(2, 1, 1, 7.50),
(1, 4, 15, 18.90),
(5, 2, 3, 17.94),
(3, 3, 3, 6.00);
    
    
    
    