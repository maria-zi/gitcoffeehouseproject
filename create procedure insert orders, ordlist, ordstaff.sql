CREATE PROCEDURE insert_order(a TIMESTAMP, b integer, c integer, d integer, e integer, f integer, g integer, h integer, i integer)
LANGUAGE SQL
AS $$
INSERT INTO orders (ord_date_time, ord_cli_id) VALUES (a, b); -- для даты и клиента заказа
INSERT INTO order_list (ord_id, prod_id, prod_quantity) VALUES (c, d, e); --для номера заказа, продукта в заказе и количества продукта (для заказа с одним продуктом)
INSERT INTO order_staff (id_ord, id_staff) VALUES (f, g); -- для добавления бариста
INSERT INTO order_staff (id_ord, id_staff) VALUES (h, i); -- для добавления клинера
$$;

--CALL insert_order ('2023-10-27 00:00:00', 3, 265, 1, 2, 265, 2, 265, 10);
--вызов этой процедуры для добавления одного заказа без учёта админа, доставщика и доставки