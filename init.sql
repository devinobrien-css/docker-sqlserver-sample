CREATE DATABASE sqlserver;
GO;

USE sqlserver;
GO;

CREATE TABLE Object (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    created_at DATETIME DEFAULT GETDATE()
);
GO;

INSERT INTO Object (name, description) VALUES 
('Object 1', 'Description of object 1'),
('Object 2', 'Description of object 2'),
('Object 3', 'Description of object 3'),
('Object 4', 'Description of object 4');
GO;