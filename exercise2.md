#### Tạo CSDL
```
CREATE DATABASE Book-Manager
```
#### Tạo bảng sách
```
CREATE TABLE book(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    book_name VARCHAR(100) NOT NULL,
    publish_company VARCHAR(100),
    publish_year VARCHAR(20),
    page_number VARCHAR(20)
  )
```
#### Tạo bảng thể loại
```
CREATE TABLE category(
     id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     category_name VARCHAR(100) NOT NULL
  )
  ```
  #### Tạo bảng tác giả
  ```
 CREATE TABLE author(
     id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     author_name VARCHAR(50) NOT NULL,
     author_story TEXT,
     image VARCHAR(500)
  )
  ```
  #### Tạo bảng sách-thể loại
  ```
 CREATE TABLE book_category(
     id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     book_id INT,
     category_id INT,
     FOREIGN KEY (book_id) REFERENCES book(id),
     FOREIGN KEY (category_id) REFERENCES category(id)
  )
  ```
  #### Tạo bảng sách-tác giả
  ```
CREATE TABLE book_author(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    book_id INT,
    author_id INT,
    FOREIGN KEY (book_id) REFERENCES book(id),
    FOREIGN KEY (author_id) REFERENCES author(id)
 )
 ```
 #### Tạo bảng vị trí
 ```
 CREATE TABLE location(
     id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
     book_id INT,
     area VARCHAR(20),
     shelf VARCHAR(20),
     floor VARCHAR(10),
   FOREIGN KEY (book_id) REFERENCES book(id)
  )
  ```
  #### Ảnh liên kết bảng
  ![Liên kết bảng](https://user-images.githubusercontent.com/80322605/130945703-5593bdea-2613-43f4-8295-bb2c98496441.png)


