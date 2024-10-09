# Basic Queries
# Question 1
SELECT Name FROM Students;

# Question 2
SELECT * FROM Students WHERE Age > 30;

# Question 3
SELECT Name FROM Students WHERE Gender='F' AND Age=30;

# Question 4
SELECT Points FROM Students WHERE Name='Alex';

# Question 5
INSERT INTO students VALUES(8, "Vasudev Agarwal", '23', 'M', 500)

# Question 6
UPDATE Students SET Points = 500 WHERE Name='Basma';

# Question 7
UPDATE Students SET Points = 100 WHERE Name='Alex';

# Creating Table
CREATE TABLE graduates(
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name TEXT NOT NULL UNIQUE,
    AGE INTEGER,
    Gender TEXT,
    Points INTEGER,
    Graduation TEXT
)
INSERT INTO graduates(Name, Age, Gender, Points) SELECT Name, Age, Gender, Points FROM Students WHERE Students.Name='Layal';
UPDATE graduates SET Graduation='08-09-2018' WHERE Name='Layal';
DELETE FROM graduates WHERE Name='Layal';

# JOINS
SELECT employees.name, employees.Company, companies.date FROM employees Inner join companies ON employees.Company=companies.name;
SELECT employees.name FROM employees Inner join companies ON employees.Company=companies.name and companies.Date < 2000;
SELECT companies.name FROM companies Inner join employees ON employees.Company=companies.name and employees.Role='Graphic Designer';




