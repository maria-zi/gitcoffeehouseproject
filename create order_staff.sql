CREATE TABLE order_staff (
   ord_st serial PRIMARY KEY NOT NULL,
	 id_ord INTEGER REFERENCES orders(order_id),
	 id_staff INTEGER REFERENCES staff(staff_id)
	 );