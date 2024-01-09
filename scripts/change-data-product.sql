UPDATE product
SET name = CASE product_id 
   WHEN 1 THEN 'Mouse XY'
   WHEN 8 THEN 'Dompet ZX'
   ELSE name 
END
WHERE buyer_id IN (1, 8);
