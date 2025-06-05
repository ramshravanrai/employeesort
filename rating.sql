CREATE TABLE employee_ratings ( 

    rating_id          INT IDENTITY(1,1) PRIMARY KEY, 

    employee_id        INT NOT NULL 

        CONSTRAINT fk_ratings_employees REFERENCES employees(employee_id), 

    avg_self_rating    DECIMAL(3,2) NULL, 

    avg_manager_rating DECIMAL(3,2) NULL 

); 