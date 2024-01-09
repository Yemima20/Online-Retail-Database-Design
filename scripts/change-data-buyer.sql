UPDATE buyer
SET age = CASE buyer_id
   WHEN 3 THEN 27
   WHEN 5 THEN 23
   WHEN 6 THEN 42
   WHEN 8 THEN 20
   ELSE age
END
WHERE buyer_id IN (3, 5, 6, 8);