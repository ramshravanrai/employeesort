CREATE TABLE roles ( 

    role_id   INT IDENTITY(1,1) PRIMARY KEY, 

    role_name VARCHAR(100) NOT NULL UNIQUE 

); 
