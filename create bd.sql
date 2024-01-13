--создание таблицы menu 
CREATE TABLE menu (
   id serial PRIMARY KEY NOT NULL,
	 product_name VARCHAR(50) NOT NULL,
	 size INTEGER CHECK (size >= 0),
	 coffee_drink BOOLEAN DEFAULT true
	 );
 
 --создание таблицы providers
CREATE TABLE providers (
   prov_id serial PRIMARY KEY NOT NULL,
	 prov_name VARCHAR(60) NOT NULL,
	 address VARCHAR(60) NOT NULL,
	 phone_number VARCHAR(15) UNIQUE
	 );

--создание таблицы clients 
CREATE TABLE clients (
   cl_id serial PRIMARY KEY NOT NULL,
	 cl_fname VARCHAR(20) NOT NULL,
	 cl_lname VARCHAR(20) NOT NULL DEFAULT ' ',
	 cl_phone_number VARCHAR(15) NOT NULL UNIQUE,
	 birthday DATE NULL,
	 sale INTEGER CHECK (sale >= 0 AND sale <= 100)
	 );
	 
--создание таблицы staff 
CREATE TABLE staff (
   staff_id serial PRIMARY KEY NOT NULL,
	 staff_fname VARCHAR(20) NOT NULL,
	 staff_lname VARCHAR(20) NOT NULL,
	 job_title VARCHAR(30) NOT NULL,
	 birthday DATE NOT NULL,
	 phone_number VARCHAR(15) UNIQUE NOT NULL,
	 pay_rate VARCHAR(10) NOT NUll 
	 ); 
	 
--cоздание таблицы ingredients и соединение её с menu
CREATE TABLE ingredients (
   ing_id serial PRIMARY KEY NOT NULL,
	 ing_name VARCHAR(50) NOT NULL,
	 volume VARCHAR(20) DEFAULT 1,
	 manufacturer_name VARCHAR(60) DEFAULT 'unknown',
	 manufacturer_address VARCHAR(60) DEFAULT 'unknown',
	 price numeric(10,2),
	 provider_id INTEGER REFERENCES providers(prov_id)
	);		
	 
--создание таблицы orders и соединение её с clients и staff
CREATE TABLE orders (
   order_id serial PRIMARY KEY NOT NULL,
	 date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	 product_id INTEGER REFERENCES menu(id),
	 cli_id INTEGER REFERENCES clients(cl_id),
	 barista_id INTEGER REFERENCES staff(staff_id), 
	 admin_id INTEGER REFERENCES staff(staff_id),
	 price_ord numeric(10,2)
	 );
	
--создание таблицы delivery и соединение её с orders	 
 CREATE TABLE delivery (
    del_id serial PRIMARY KEY NOT NULL,
		ord_num INTEGER REFERENCES orders(order_id),
		address VARCHAR(60) NOT NULL,
		courier_name INTEGER REFERENCES staff(staff_id)
		);
		
--создание таблицы supply и соединение её с ingredients и providers 
CREATE TABLE supply (
   sup_id serial PRIMARY KEY NOT NULL,
	 sup_date DATE DEFAULT CURRENT_DATE NOT NULL,
	 product INTEGER REFERENCES ingredients(ing_id) NOT NULL,
	 quantity INTEGER NOT NULL,
	 provider INTEGER NOT NULL REFERENCES providers(prov_id)
	 ); 
	 
 CREATE TABLE order_list (
   list_id SERIAL PRIMARY KEY,
	 order_listid INTEGER REFERENCES orders(order_id), 
	 product_id INTEGER REFERENCES menu(product_name)
	 );

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 