-- 1.Soru: film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?

SELECT round(AVG(rental_rate),3) FROM film;


-- 2.Soru: film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?

SELECT count(*) FROM film
WHERE title LIKE 'C%';

-- 3.Soru: film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?


SELECT max(length) FROM film
WHERE rental_rate = 0.99;

-- 4.Soru: film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?

SELECT count(DISTINCT replacement_cost) FROM film
WHERE length >150;
