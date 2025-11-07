CREATE DATABASE veterinary;

CREATE TABLE Owners (
    ownerid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors (
    doctorid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    specialty VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE invoices (
    invoiceid INT PRIMARY KEY,
    appointid INT,
    amount DECIMAL(10, 2),
    issuedate DATE,
    paid BOOLEAN,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medical_records (
    recordid INT PRIMARY KEY,
    animalid INT,
    visitdate DATE,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

INSERT INTO Owners (ownerid, firstname, lastname, address, phone, email) VALUES
(1, 'John', 'Doe', '123 Elm St', '555-1234', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '456 Oak St', '555-5678', 'jane.smith@example.com'),
(3, 'Emily', 'Johnson', '789 Pine St', '555-8765', 'emily.johnson@example.com'),
(4, 'Michael', 'Brown', '321 Maple St', '555-4321', 'michael.brown@example.com'),
(5, 'Sarah', 'Davis', '654 Cedar St', '555-6789', 'sarah.davis@example.com'),
(6, 'David', 'Wilson', '987 Birch St', '555-9876', 'david.wilson@example.com'),
(7, 'Laura', 'Garcia', '147 Spruce St', '555-2468', 'laura.garcia@example.com'),
(8, 'James', 'Martinez', '258 Willow St', '555-1357', 'james.martinez@example.com'),
(9, 'Linda', 'Rodriguez', '369 Aspen St', '555-8642', 'linda.rodriguez@example.com'),
(10, 'Robert', 'Hernandez', '159 Fir St', '555-9753', 'robert.hernandez@example.com');

INSERT INTO animals (animalid, name, species, breed, age, ownerid) VALUES
(1, 'Buddy', 'Dog', 'Golden Retriever', 3, 1),
(2, 'Mittens', 'Cat', 'Siamese', 2, 2),
(3, 'Charlie', 'Dog', 'Beagle', 4, 3),
(4, 'Luna', 'Cat', 'Maine Coon', 1, 4),
(5, 'Max', 'Dog', 'Bulldog', 5, 5),
(6, 'Daisy', 'Cat', 'Persian', 3, 6),
(7, 'Rocky', 'Dog', 'Boxer', 2, 7),
(8, 'Coco', 'Cat', 'Bengal', 4, 8),
(9, 'Jack', 'Dog', 'Poodle', 6, 9),
(10, 'Bella', 'Cat', 'Ragdoll', 2, 10);

