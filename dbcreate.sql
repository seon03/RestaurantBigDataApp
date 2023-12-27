USE team12;

CREATE TABLE Restaurants
(
	restaurant_id	VARCHAR(255) PRIMARY KEY,
	restaurant_name	VARCHAR(255),
	location	VARCHAR(255),
	phone	VARCHAR(255)
);

CREATE TABLE Menu
(
	menu_id	VARCHAR(255) PRIMARY KEY,
	restaurant_id	VARCHAR(255),
	item_name	VARCHAR(255),
	description	VARCHAR(255),
	price	INT NOT NULL,

	FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id)
);

create table Customers
(
	customer_id VARCHAR(255) PRIMARY KEY,
	customer_name varchar(255) NOT NULL,
	email varchar(255) NOT NULL,
	phone varchar(255) NOT NULL
);


CREATE TABLE Orders
(
	order_id	VARCHAR(255) PRIMARY KEY,
	customer_id	VARCHAR(255),
	restaurant_id	VARCHAR(255),
	menu_id	VARCHAR(255),
	quantity	INT NOT NULL,
	order_time	VARCHAR(255),

	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON UPDATE CASCADE,
	FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON UPDATE CASCADE,
	FOREIGN KEY (menu_id) REFERENCES Menu(menu_id) ON UPDATE CASCADE
);

CREATE TABLE Reviews
(
	review_id	VARCHAR(255) PRIMARY KEY,
	restaurant_id	VARCHAR(255),
	customer_id	VARCHAR(255),
	rating	INT NOT NULL,
	comment	VARCHAR(255),

	FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id),
	FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



create table Payments
(
	payment_id varchar(255) PRIMARY KEY,
	order_id varchar(255) NOT NULL, 
	amount INT NOT NULL,
	payment_time TIME NOT NULL,

	FOREIGN KEY (order_id) REFERENCES Orders (order_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);


create table Reservations
(
	reservation_id varchar(255) PRIMARY KEY,
	customer_id varchar(255) NOT NULL,
	restaurant_id varchar(255) NOT NULL, 
	reservation_time varchar(255) NOT NULL,
	num_guests INT NOT NULL,

	FOREIGN KEY (customer_id) REFERENCES Customers (customer_id),
	FOREIGN KEY (restaurant_id) REFERENCES Restaurants (restaurant_id)
);



create table Staff
(
	staff_id varchar(255) PRIMARY KEY,
	restaurant_id varchar(255) NOT NULL,
	staff_name varchar(255) NOT NULL,
	staff_number varchar(255) NOT NULL,

	FOREIGN KEY (restaurant_id) REFERENCES Restaurants (restaurant_id)
);




CREATE TABLE Category 
(
    category_id VARCHAR(255) PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    restaurant_id VARCHAR(255) NOT NULL,
    
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE
);

CREATE TABLE Ranking (
    ranking_id VARCHAR(225) PRIMARY KEY,
    restaurant_id VARCHAR(255) NOT NULL,
    rank_date DATE NOT NULL,
    score INT NOT NULL,
    
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE
);

CREATE TABLE Inventory (
    inventory_id VARCHAR(255) PRIMARY KEY,
    restaurant_id VARCHAR(255) NOT NULL,
    menu_id VARCHAR(255) NOT NULL,
    item_name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE,
    FOREIGN KEY (menu_id) REFERENCES Menu(menu_id) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Discount (
    discount_id VARCHAR(255) PRIMARY KEY,
    restaurant_id VARCHAR(255) NOT NULL,
    discount_percentage INT NOT NULL,
    description VARCHAR(255) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(restaurant_id) ON DELETE CASCADE
);

CREATE INDEX d_percentage_idx ON Discount(discount_percentage);