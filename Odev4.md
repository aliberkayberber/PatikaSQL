`1. Soru : film tablosunda bulunan replacement_cost sütununda bulunan birbirinden farklı değerleri sıralayınız.`
```sql
SELECT DISTINCT replacement_cost FROM film;
```

`2.Soru: film tablosunda bulunan replacement_cost sütununda birbirinden farklı kaç tane veri vardır?`
```sql
SELECT COUNT(DISTINCT replacement_cost) FROM film;
```
`3.Soru: film tablosunda bulunan film isimlerinde (title) kaç tanesini T karakteri ile başlar ve aynı zamanda rating 'G' ye eşittir?`
```sql
SELECT count(*) FROM film
WHERE title like 'T%' AND rating = 'G';
```
`4.Soru: country tablosunda bulunan ülke isimlerinden (country) kaç tanesi 5 karakterden oluşmaktadır?`
```sql
SELECT count(*) FROM country
WHERE country LIKE '_____';
```
`5.Soru: city tablosundaki şehir isimlerinin kaç tanesi 'R' veya r karakteri ile biter?`
```sql
SELECT count(*) FROM city
WHERE city ILIKE '%r';
```
