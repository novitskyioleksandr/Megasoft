CREATE DATABASE MegaSoft;

USE MegaSoft;

CREATE TABLE worker(
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(1000) CONSTRAINT worker_name_ck CHECK
     (LENGTH(name) >= 2) NOT NULL,
     birthday DATE CONSTRAINT worker_birthdate_ck CHECK
     (birthday > '1900-01-01'),
     level VARCHAR(20) CONSTRAINT CHECK
     (level IN ('Trainee', 'Junior', 'Middle', 'Senior')) NOT NULL,
     salary INT CONSTRAINT worker_salary_ck CHECK 
     (salary >= 100 AND salary <= 100000)
     );
     
     
     CREATE TABLE client (
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR (1000) CONSTRAINT client_name_ck CHECK 
     (LENGTH (name)  >= 2) NOT NULL
     );
     
     CREATE TABLE project (
      id INT AUTO_INCREMENT PRIMARY KEY,
      client_id INT,
      start_date DATE,
      finish_date DATE
     );
     
     
     CREATE TABLE project_worker (
        project_id INT,
        worker_id INT,
        PRIMARY KEY ( project_id, worker_id),
        FOREIGN KEY (project_id) references project (id),
        FOREIGN KEY (worker_id) references worker(id)
     );
     

