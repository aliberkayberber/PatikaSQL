
--1.Soru:  city tablosu ile country tablosunda bulunan şehir (city) ve ülke (country) isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

SELECT city, country FROM country
INNER JOIN city ON city.country_id = country.country_id;


--2.Soru: customer tablosu ile payment tablosunda bulunan payment_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

select payment_id, first_name, last_name from customer
inner join payment on customer.customer_id = payment.customer_id;


--3.Soru:  customer tablosu ile rental tablosunda bulunan rental_id ile customer tablosundaki first_name ve last_name isimlerini birlikte görebileceğimiz INNER JOIN sorgusunu yazınız.

select rental_id , first_name, last_name from customer
inner join rental on customer.customer_id = rental.customer_id;