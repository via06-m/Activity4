CREATE DATABASE veterinary;

CREATE TABLE Owners (
    ownerid INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
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
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
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

INSERT INTO Owners (ownerid, ofirstname, olastname, address, phone, email) VALUES
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

INSERT INTO animals (animalid, name, species, breed, age, ownerid) 
VALUES
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

INSERT INTO appointments (appointid, animalid, appointdate, reason) 
VALUES
(1, 1, '2023-10-01', 'Routine Checkup'),
(2, 2, '2023-10-02', 'Vaccination'),
(3, 3, '2023-10-03', 'Dental Cleaning'),
(4, 4, '2023-10-04', 'Skin Allergy'),
(5, 5, '2023-10-05', 'Ear Infection'),
(6, 6, '2023-10-06', 'Routine Checkup'),
(7, 7, '2023-10-07', 'Vaccination'),
(8, 8, '2023-10-08', 'Dental Cleaning'),
(9, 9, '2023-10-09', 'Skin Allergy'),
(10, 10, '2023-10-10', 'Ear Infection');

INSERT INTO doctors (doctorid, dfirstname, dlastname, specialty, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');

