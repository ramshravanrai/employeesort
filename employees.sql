CREATE TABLE employees ( 

    employee_id        INT IDENTITY(1,1) PRIMARY KEY, 

    name               VARCHAR(150) NOT NULL, 

    role_id            INT NOT NULL 

        CONSTRAINT fk_employees_roles REFERENCES roles(role_id), 

    location_id        INT NOT NULL 

        CONSTRAINT fk_employees_locations REFERENCES locations(location_id), 

    years_experience   DECIMAL(4,1) NULL, 

    active             BIT             NOT NULL DEFAULT(1), 

    current_comp_inr   DECIMAL(18,2)   NOT NULL, 

    last_working_day   DATE            NULL 

); 