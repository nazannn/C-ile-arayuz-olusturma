CREATE DATABASE School1
CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    department VARCHAR(100)
);

-- DERSLER TABLOSU          --Dersler tablosu, okuldaki dersleri i�erir
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);

-- KAYITLAR TABLOSU                   --Kay�tlar tablosu, ��rencilerin ald��� dersleri kaydeder
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade FLOAT,
    FOREIGN KEY (student_id) REFERENCES Student(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
INSERT INTO Student (student_id, first_name, last_name, age, department)       -- ��renci Ekleme
VALUES (1, 'Ahmet', 'Y�lmaz', 20, 'Bilgisayar M�hendisli�i');

INSERT INTO Courses (course_id, course_name, credits)    -- Ders Ekleme
VALUES (101, 'Veritaban� Y�netimi', 3);

INSERT INTO Enrollments (enrollment_id, student_id, course_id, grade)        -- Kay�t Ekleme
VALUES (1001, 1, 101, 85.5);
UPDATE Student       -- ��renci G�ncelleme
SET age = 21
WHERE student_id = 1;

DELETE FROM Courses    -- Ders Silme
WHERE course_id = 101;

DELETE FROM Student        -- ��renci Silme
WHERE student_id = 1;