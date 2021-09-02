#### 1. Lấy ra thông tin các bộ phim có rental_rate từ 2.99 đến 4.99
```
SELECT title, rental_rate 
FROM `film` 
WHERE rental_rate BETWEEN 2.99 AND 4.99;
```
##### Kết quả
![bộ phim có rental_rate từ 2.99 đến 4.99](https://user-images.githubusercontent.com/80322605/130973816-221a638d-fa44-4999-b6c4-72ab0e340efd.png)
#### 2. Lấy ra tên các bộ phim có diễn viên Chritian Akroyd tham gia
```
SELECT f.title, a.first_name, a.last_name 
FROM film f, actor a, film_actor fc 
WHERE f.film_id = fc.film_id 
AND a.actor_id = fc.actor_id 
AND a.first_name = 'Christian' 
AND a.last_name = 'Akroyd';
```
##### Kết quả
![ các bộ phim có diễn viên Chritian Akroyd tham gia](https://user-images.githubusercontent.com/80322605/130974217-1d987899-a27f-48d9-ad99-2f748139b045.png)
#### 3. Lấy ra tên phim, thời lượng các phim có thời lượng nhỏ hơn 100
```
SELECT title AS tên_phim, length AS thời_lượng
FROM `film` 
WHERE length < 100;
```
![tên phim, thời lượng các phim có thời lượng nhỏ hơn 100](https://user-images.githubusercontent.com/80322605/130977607-bd4d6269-ac5f-460e-97b1-54d86fe72866.png)


##### 3.1 Lấy ra tên phim, thời lượng các phim có thời lượng nhỏ hơn 100 và sắp xếp thời lượng giảm dần
```
SELECT title AS tên_phim, length AS thời_lượng
FROM `film` 
WHERE length < 100 
ORDER BY length DESC;
```
![tên phim, thời lượng các phim có thời lượng nhỏ hơn 100 và sắp xếp thời lượng giảm dần](https://user-images.githubusercontent.com/80322605/130977642-ef6e71b2-f186-40ff-be2a-8e5b8efc7bbe.png)


