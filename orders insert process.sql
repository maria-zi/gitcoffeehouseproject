SELECT sup_date, ing_name, sup_quantity FROM supply AS s
JOIN ingredients AS i ON s.sup_ingredient = i.ing_id