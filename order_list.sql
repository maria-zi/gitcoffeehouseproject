CREATE TABLE order_list (
   id_ord_li serial PRIMARY KEY NOT NULL,
	 ord_id INTEGER REFERENCES orders(order_id),
	 prod_id INTEGER REFERENCES menu(id)
	 );
	 