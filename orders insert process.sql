SELECT sup_date, ing_name, sup_quantity, SUM(sup_quantity) AS sum FROM supply AS s
JOIN ingredients AS i ON s.sup_ingredient = i.ing_id
WHERE ing_name = 'milk'; 