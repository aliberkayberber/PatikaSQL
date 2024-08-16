-- 1.Soru: film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?

select count(*) from film
where length > (select avg(length) from film );


-- 2.Soru: film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

select count(*) from film
where rental_rate = (select MAX(rental_rate) from film);

 --3.Soru: film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.

select title from film
where (rental_rate = any (select MIN(rental_rate) from film) ) and (replacement_cost = any (select MIN(replacement_cost) from film));


-- 4.Soru: payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.

select customer.first_name, customer.last_name,count(*) from customer
inner join payment on customer.customer_id=payment.customer_id
group by customer.first_name, customer.last_name
order by count(*) desc;
