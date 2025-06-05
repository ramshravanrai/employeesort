CREATE TABLE industry_compensation ( 

    industry_comp_id INT IDENTITY(1,1) PRIMARY KEY, 

    role_id           INT NOT NULL 

        CONSTRAINT fk_indcomp_roles REFERENCES roles(role_id), 

    location_id       INT NOT NULL 

        CONSTRAINT fk_indcomp_locations REFERENCES locations(location_id), 

    avg_compensation  DECIMAL(18,2) NOT NULL 

); 