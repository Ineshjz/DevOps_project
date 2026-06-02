CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    department_id INT REFERENCES departments(id),
    first_name VARCHAR(30),
    last_name VARCHAR(30)
);

INSERT INTO departments(id, name)
VALUES (1, 'IRC');

INSERT INTO students(id, department_id, first_name, last_name)
VALUES (1, 1, 'Eli', 'Copter');