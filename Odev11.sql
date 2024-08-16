-- 1.Soru: actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.

(select first_name from actor)
Union
(select first_name from customer);

-- 2.Soru: actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.

(select first_name from actor)
Intersect
(select first_name from customer);


-- 3.Soru: actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.

(select first_name from actor)
except
(select first_name from customer);

-- 4.Soru: İlk 3 sorguyu tekrar eden veriler için de yapalım.

(select first_name from actor)
Union all
(select first_name from customer);
