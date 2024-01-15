INSERT INTO menu (m_product_name, m_size, m_coffee_drink, m_price)
VALUES ( 'Espresso', 30, true, 120),
			 ( 'Americano', 190, true, 250),
			 ( 'Latte', 200, true, 300),
			 ( 'Latte', 300, true, 380),
			 ( 'Cppuccino', 200, true, 280),
			 ( 'Cappuccino', 300, true, 350),
			 ( 'Flat white', 250, true, 380),
			 ( 'Mocha', 250, true, 420),
			 ( 'Raf coffee', 300, true, 400),
			 ( 'Glace', 190, true, 350),
			 ( 'Ice Tea', 250, false, 280),
			 ( 'Green Tea', 200, false, 250),
			 ( 'Black Tea', 200, false, 250),
			 ( 'Citrus Tea', 600, false, 380),
			 ( 'Lemonade with beries', 250, false, 300),
			 ( 'Lemonade with citrus', 250, false, 300),
			 ( 'Smoothie', 250, false, 320),
			 ( 'Still Water', 500, false, 100),
			 ( 'Sparkling Water', 500, false, 100),
			 ( 'Cola', 330, false, 180),
       ( 'Matcha Tea', 200, false, 300),
			 ( 'Syrup in coffee', 20, false, 50);
			 
			 
INSERT INTO staff ( staff_fname, staff_lname, st_job_title, st_birthday, st_phone_number, st_pay_rate)
VALUES ('Mary', 'Smith', 'admin', '2000-09-22', '89997657713', '500 hour'),
       ('Joseph', 'Evans', 'barista', '1998-03-12', '89409490934', '220 hour'),
			 ('Charly', 'Wilson', 'deliveryman', '2001-10-01', '89957766634', '160 hour'),
			 ('Sam', 'Anders', 'barista', '1994-11-14', '89997777871', '220 hour'),
			 ('Alise', 'Gilbert', 'admin', '1999-09-09', '89309867713', '500 hour'),
			 ('Freya', 'Parson', 'barista', '1997-02-12', '89998398893', '220 hour'),
			 ('Bethahy', 'Moore', 'deliveryman', '2003-03-29', '89933057709', '160 hour'),
			 ('John', 'Davis', 'deliveryman', '2001-11-30', '89944489020', '160 hour'),
			 ('Ryan', 'Taylor', 'deliveryman', '1998-01-21', '89997653890', '160 hour'),
			 ('Kate', 'Smith', 'cleaner', '2000-04-02', '89991990921', '300 hour'),
			 ('Alexa', 'Phillips', 'cleaner', '1979-01-23', '89997086678', '300 hour'),
			 ('Elena', 'Parker', 'manager', '2000-09-22', '82456809203', '400 hour');
			
			
INSERT INTO clients ( cl_fname, cl_lname, cl_phone_number, cl_birthday, cl_sale)
VALUES ('John',	'Kost',	'86543456266',	'1999-12-31',	'5'),
       ('Sam',	'Lock',	'87364586266',	'1979-01-15',	'5'),
       ('Olivia',	'Brown',	'87345673980',	'1996-01-01',	'5'),
       ('Mia',	'Lewis',	'87364555541',	'2001-02-22',	'10'),
       ('Harry',	'King',	'87364500096',	'1979-07-25',	'5'),
       ('Oscar',	'Young',	'87894589266',	'1995-11-19',	'5'),
       ('William',	'Smith',	'87930086209',	'1997-01-24',	'5'),
       ('Amelia',	'Wilson',	'89833345679',	'1998-04-05',	'5'),
       ('Grace',	'Davis',	'87064586888',	'2003-02-18',	'20'),
       ('Leo',	'Smith',	'89000033444',	'2001-11-09',	'5'),
       ('Oliver',	'Jones',	'87369833366',	'2001-01-31',	'5'),
       ('Sophia',	'Jones',	'87364887456',	'1996-01-11',	'10'),
       ('Scarlett',	'Miller',	'87364522237',	'1989-08-23',	'5'),
       ('Alice',	'Clark',	'87378976098',	'2000-12-31',	'5'),
       ('Rose',	'Lee',	'8187778909',	'1996-05-22',	'5'),
       ('Henry',	'Walker',	'87364566678',	'1970-01-21',	'20'),
       ('Ryan',	'Bell',	'87323487210',	'2004-07-20',	'5'),
       ('Dexter',	'Watson',	'89990876266',	'1989-02-26',	'15'),
       ('Connor',	'Cook',	'87364093876',	'1997-09-23',	'5'),
       ('Zoe', 'Taylor',	'80902245560',	'2000-01-09',	'5'),
       ('Alex',	'Ross',	'87364111128',	'1990-02-15',	'5'),
       ('Stan',	'Smith',	'87364577646',	'1992-10-03',	'15'),
       ('Owen',	'Perry',	'87309387676',	'1979-03-15',	'5'),
       ('Caleb',	'Nelson',	'87772123266',	'1993-08-12',	'10'),
       ('Jenna',	'Phillips',	'87309886206',	'2000-09-19',	'5'),
	     ('Ben',	'Diaz',	'87093876599',	'1991-10-10',	'5');			
			
			
INSERT INTO providers (prov_name, prov_address, prov_phone_number)
VALUES ('Caffeine Kick Trading Co.', 'Black road 23', '87654879027'),
       ('Creamy Mist Farms', 'Sugar Lane 146', '87838878899'),
			 ('Morning Elixir Imports', 'Melon Road 19A', '80928783461'),
			 ('Sugar Rusn Distributors', 'Exotic Street 876', '88129027190'),
			 ('Fresh Fruit Harvesters', 'Sun Avenue 14', '87945562029');			
			
			
INSERT INTO ingredients (ing_name, ing_volume, ing_manufacturer_name, ing_manufacturer_address, ing_price, ing_provider_id)
VALUES ('coffee', '1kg', 'Coffeeeeee Co.', 'Light Street 333', 2000, 1),
			 ('green tea', '1kg', 'Tea Leaf Imports', 'Roobergs Street J89', 5100, 1),
			 ('black tea', '1kg', 'Tea Leaf Imports', 'Roobergs Street J89', 4800, 1),
			 ('matcha tea', '1kg', 'Tea Leaf Imports', 'Roobergs Street J89', 10000, 1),
			 ('milk', '1L', 'Flavour Fusion Co.', 'Qoot Square 8', 150, 2),
			 ('coconut milk', '1L', 'Flavour Fusion Co.', 'Qoot Square 8', 300, 2),
			 ('banana milk', '1L', 'Flavour Fusion Co.', 'Qoot Square 8', 350, 2),
			 ('cream', '1L', 'Flavour Fusion Co.', 'Qoot Square 8', 800, 2),
			 ('ice cream', '1kg', 'Flavour Fusion Co.', 'Qoot Square 8', 800, 2),
			 ('chocolate', '1bar', 'Choco World', 'King Star Street 5098', 150, 3),
			 ('peach juice', '1L', 'All Juice', 'Kotton Avenue 90', 160, 3),
			 ('cola', '0,3L', 'Drinks For Everyone', 'Mango Boulevard 7347', 200, 3),
			 ('still water', '0,3L', 'Drinks For Everyone', 'Mango Boulevard 7347', 80, 3),
			 ('sparkling water', '0,3L', 'Drinks For Everyone', 'Mango Boulevard 7347', 80, 3),
			 ('vanilla syrup', '1L', 'Caramel Madness Merchants', 'Candy Avenue 67', 600, 4),
			 ('caramel syrup', '1L', 'Caramel Madness Merchants', 'Candy Avenue 67', 600, 4),
			 ('lavander syrup', '1L', 'Caramel Madness Merchants', 'Candy Avenue 67', 600, 4),
			 ('passion fruit syrup', '1L', 'Caramel Madness Merchants', 'Candy Avenue 67', 600, 4),
			 ('mint', '100g', 'Exotic Blend Merchants', 'Tasty Street 123', 400, 5),
			 ('orange', '1kg', 'Exotic Blend Merchants', 'Tasty Street 123', 300, 5),
			 ('lemon', '1kg', 'Exotic Blend Merchants', 'Tasty Street 123', 400, 5),
			 ('berry mix', '1kg', 'Exotic Blend Merchants', 'Tasty Street 123', 700, 5),
			 ('banana', '1kg', 'Exotic Blend Merchants', 'Tasty Street 123', 300, 5);
			 			
			
							