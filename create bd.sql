--создание таблицы menu 
CREATE TABLE menu (
   menu_id serial PRIMARY KEY NOT NULL,
	 m_product_name VARCHAR(50) NOT NULL,
	 m_size INTEGER CHECK (size >= 0) NOT NULL,
	 m_coffee_drink BOOLEAN DEFAULT 1,
	 m_price numeric(10,2) NOT NULL
	 );
 
 --создание таблицы providers
CREATE TABLE providers (
   prov_id serial PRIMARY KEY NOT NULL,
	 prov_name VARCHAR(60) NOT NULL,
	 prov_address VARCHAR(60) NOT NULL,
	 prov_phone_number VARCHAR(15) UNIQUE
	 );

--создание таблицы clients 
CREATE TABLE clients (
   cl_id serial PRIMARY KEY NOT NULL,
	 cl_fname VARCHAR(20) NOT NULL,
	 cl_lname VARCHAR(20) NOT NULL DEFAULT ' ',
	 cl_phone_number VARCHAR(15) NOT NULL UNIQUE,
	 cl_birthday DATE NULL,
	 cl_sale INTEGER CHECK (sale >= 0 AND sale <= 100)
	 );
	 
--создание таблицы staff 
CREATE TABLE staff (
   staff_id serial PRIMARY KEY NOT NULL,
	 staff_fname VARCHAR(20) NOT NULL,
	 staff_lname VARCHAR(20) NOT NULL,
	 st_job_title VARCHAR(30) NOT NULL,
	 st_birthday DATE NOT NULL,
	 st_phone_number VARCHAR(15) UNIQUE NOT NULL,
	 st_pay_rate VARCHAR(10) NOT NUll 
	 ); 
	 
--cоздание таблицы ingredients и соединение её с menu
CREATE TABLE ingredients (
   ing_id serial PRIMARY KEY NOT NULL,
	 ing_name VARCHAR(50) NOT NULL,
	 ing_volume VARCHAR(20) DEFAULT 1,
	 ing_manufacturer_name VARCHAR(60) DEFAULT 'unknown',
	 ing_manufacturer_address VARCHAR(60) DEFAULT 'unknown',
	 ing_price numeric(10,2),
	 ing_provider_id INTEGER REFERENCES providers(prov_id)
	);		
	 
--создание таблицы orders и соединение её с clients и staff
CREATE TABLE orders (
   order_id serial PRIMARY KEY NOT NULL,
	 ord_date_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	 ord_cli_id INTEGER REFERENCES clients(cl_id),
	 ord_price numeric(10,2)
	 );
	
--создание таблицы delivery и соединение её с orders	 
 CREATE TABLE delivery (
    del_id serial PRIMARY KEY NOT NULL,
		del_ord_num INTEGER REFERENCES orders(order_id),
		del_address VARCHAR(60) NOT NULL,
		del_courier_name INTEGER REFERENCES staff(staff_id)
		);
		
--создание таблицы supply и соединение её с ingredients и providers 
CREATE TABLE supply (
   sup_id serial PRIMARY KEY NOT NULL,
	 sup_date DATE DEFAULT CURRENT_DATE NOT NULL,
	 sup_ingredient INTEGER REFERENCES ingredients(ing_id) NOT NULL,
	 sup_quantity INTEGER NOT NULL,
	 ); 
	 
 CREATE TABLE order_list (
   ord_list_id SERIAL PRIMARY KEY,
	 ord_id INTEGER NOT NULL REFERENCES orders(order_id), 
	 prod_id INTEGER NOT NULL REFERENCES menu(menu_id)
	 );
	 
	 CREATE TABLE order_staff (
   id_ord_st serial PRIMARY KEY NOT NULL,
	 id_ord INTEGER NOT NULL REFERENCES orders(order_id),
	 id_staff INTEGER NOT NULL REFERENCES staff(staff_id)
	 );

	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 