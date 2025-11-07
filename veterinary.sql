CREATE DATABASE veterinary;

CREATE TABLE Owners (
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
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
    totalamount DECIMAL(10, 2),
    paymentdate TIME,
    FOREIGN KEY (appointid) REFERENCES appointments(appointid)
);

CREATE TABLE medical_records (
    recordid INT PRIMARY KEY,
    animalid INT,
    recorddate DATETIME,
    doctorid INT,
    diagnosis VARCHAR(255),
    prescription VARCHAR(255),
    notes TEXT,
    FOREIGN KEY (animalid) REFERENCES animals(animalid),
    FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);

INSERT INTO Owners (ownerid, ofirstname, olastname, address, phone, email) 
VALUES
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

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid) 
VALUES
(1, 'Buddy', 'Dog', 'Golden Retriever', '2018-05-20', 'Male', 'Golden', 1),
(2, 'Simba', 'Cat', 'Siamese', '2019-08-15', 'Female', 'Cream', 2),
(3, 'Max', 'Dog', 'German Shepherd', '2017-11-30', 'Male', 'Black and Tan', 3),
(4, 'Luna', 'Cat', 'Maine Coon', '2020-02-25', 'Female', 'Gray', 4),
(5, 'Charlie', 'Dog', 'Beagle', '2016-03-15', 'Male', 'Tri-color', 5),
(6, 'Daisy', 'Cat', 'Persian', '2018-07-10', 'Female', 'White', 6),
(7, 'Rocky', 'Dog', 'Boxer', '2015-12-05', 'Male', 'Brindle', 7),
(8, 'Coco', 'Cat', 'Bengal', '2019-04-20', 'Female', 'Spotted', 8),
(9, 'Jack', 'Dog', 'Poodle', '2014-09-10', 'Male', 'Apricot', 9),
(10, 'Bella', 'Cat', 'Ragdoll', '2020-01-25', 'Female', 'Blue', 10);

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

INSERT INTO invoices (invoiceid, appointid, totalamount, paymentdate)
VALUES
(1, 1, 50.00, '09:30:00'),
(2, 2, 75.00, '14:15:00'),
(3, 3, 100.00, '11:00:00'),
(4, 4, 200.00, '13:45:00'),
(5, 5, 80.00, '10:30:00'),
(6, 6, 30.00, '15:00:00'),
(7, 7, 75.00, '09:15:00'),
(8, 8, 150.00, '16:30:00'),
(9, 9, 60.00, '14:45:00'),
(10, 10, 40.00, '11:30:00');

INSERT INTO medical_records (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
VALUES 
(1, 1, '2023-01-05 00:00:00', 1, 'Health check', 'N/A', 'Regular checkup, no issue detected'),
(2, 2, '2023-01-10 00:00:00', 1, 'Vaccination', 'Vaccine X', 'Administered vaccination X as per schedule'),
(3, 3, '2023-02-02 00:00:00', 3, 'Sprained leg', 'Pain Medication', 'Rest recommended for two weeks'),
(4, 4, '2023-02-15 00:00:00', 1, 'Dental cleaning', 'N/A', 'Completed dental cleaning procedure'),
(5, 5, '2023-03-10 00:00:00', 4, 'Skin infection', 'Antibiotics', 'Prescribed antibiotics for skin infection'),
(6, 6, '2023-03-10 00:00:00', 2, 'Flea infestation', 'Flea Treatment', 'Administered flea treatment'),
(7, 7, '2023-04-12 00:00:00', 1, 'Vaccination', 'Vaccine Y', 'Administered vaccination Y as per schedule'),
(8, 8, '2023-04-18 00:00:00', 5, 'Spaying', 'N/A', 'Successfully performed spaying surgery'),
(9, 9, '2023-05-02 00:00:00', 4, 'Allergic reaction', 'Antihistamines', 'Allergic reaction due to food prescribed antihistamine'),
(10, 10, '2023-05-20 00:00:00', 6, 'Conjunctivitis', 'Eye drops', 'Prescribed eye drops for conjunctivitis');

ALTER TABLE Owners ADD COLUMN registereddate DATE;

ALTER TABLE invoices RENAME COLUMN paymentdate TO paymenttime;

DELETE FROM appointments WHERE animalid = (SELECT animalid FROM animals WHERE name = 'Simba' AND species = 'Cat');

UPDATE doctors SET dlastname = 'Reyes-Gonzales' WHERE dfirstname = 'Dr.Sofia' AND dlastname = 'Reyes';

SELECT DISTINCT species FROM animals;