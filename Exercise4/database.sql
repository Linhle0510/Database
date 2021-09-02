CREATE TABLE faculty (
  id VARCHAR(20) PRIMARY KEY,
  faculty VARCHAR (50)
);
CREATE TABLE major(
  id VARCHAR(20) PRIMARY KEY,
  name VARCHAR(20),
  faculty_id VARCHAR(20),
  FOREIGN KEY (faculty_id) REFERENCES faculty(id)
);
CREATE TABLE class(
  id VARCHAR(10) PRIMARY KEY,
  name VARCHAR(50),
  major_id VARCHAR(20),
  FOREIGN KEY (major_id) REFERENCES major(id)
);
CREATE TABLE student(
  student_id INT PRIMARY KEY,
  fullname VARCHAR(50),
  gender VARCHAR(10),
  birthday DATE,
  class_id VARCHAR(10),
  FOREIGN KEY(class_id) REFERENCES class(id)
);
CREATE TABLE regency(
  id INT PRIMARY KEY,
  regency VARCHAR(50)
);
CREATE TABLE degree(
  id INT PRIMARY KEY,
  degree VARCHAR(50)
);
CREATE TABLE teacher (
  id INT PRIMARY KEY,
  fullname VARCHAR(50),
  gender VARCHAR(10),
  birthday DATE,
  regency_id INT,
  degree_id INT,
  FOREIGN KEY (regency_id) REFERENCES regency(id),
  FOREIGN KEY (degree_id) REFERENCES degree(id)
);
CREATE TABLE teacher_major(
  teacher_id INT,
  major_id VARCHAR(20),
  FOREIGN KEY (teacher_id) REFERENCES teacher(id),
  FOREIGN KEY (major_id) REFERENCES major(id)
);
CREATE TABLE subject(
  id VARCHAR(20) PRIMARY KEY,
  subject VARCHAR(100)
);
CREATE TABLE teacher_subject(
  teacher_id INT,
  subject_id VARCHAR(20),
  FOREIGN KEY (teacher_id) REFERENCES teacher(id),
  FOREIGN KEY (subject_id) REFERENCES subject(id)
);
CREATE TABLE point(
  student_id INT,
  subject_id VARCHAR(20),
  point INT,
  CONSTRAINT student_point PRIMARY KEY(student_id, subject_id),
  FOREIGN KEY (student_id) REFERENCES student(student_id),
  FOREIGN KEY (subject_id) REFERENCES subject(id)
);