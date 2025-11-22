CREATE DATABASE veterinary;
CREATE TABLE owners(
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
CREATE Table doctors (
    doctorid INT PRIMARY KEY,
    dfirstname VARCHAR(50),
    dlastname VARCHAR(50),
    specialization VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
    );
    CREATE TABLE medicalrecords(
        recordid INT PRIMARY KEY,
        FOREIGN Key (animalid) REFERENCES animals(animalid),
        recordate DATE,
        FOREIGN KEY (doctorid) REFERENCES doctors(doctorid),
        diagnosis VARCHAR (255),
        prescription VARCHAR (255),
        notes VARCHAR (255)
    );
    -- Step 17: Populate the 'owners' table with 10 rows of data.
INSERT INTO owners (ownerid, ofirstname, olastname, address, phone, email)
VALUES
(1, 'Maria', 'Dela Cruz', '123 Main St, Manila', '0917-111-2222', 'maria.d@email.com'),
(2, 'Jose', 'Rizal', '456 Oak Ave, Davao', '0917-333-4444', 'jose.r@email.com'),
(3, 'Lina', 'Torres', '789 Elm Rd, Cebu', '0917-555-6666', 'lina.t@email.com'),
(4, 'David', 'Lim', '101 Pine Ln, Baguio', '0917-777-8888', 'david.l@email.com'),
(5, 'Elena', 'Ramos', '202 Cedar Pl, Iloilo', '0917-999-0000', 'elena.r@email.com'),
(6, 'Mario', 'Gomez', '303 Birch Dr, Bacolod', '0917-101-2020', 'mario.g@email.com'),
(7, 'Sofia', 'Mendoza', '404 Maple Cir, Palawan', '0917-303-4040', 'sofia.m@email.com'),
(8, 'Carlos', 'Villanueva', '505 Poplar Ct, Pampanga', '0917-505-6060', 'carlos.v@email.com'),
(9, 'Isabel', 'Reyes', '606 Willow Bend, Bataan', '0917-707-8080', 'isabel.r@email.com'),
(10, 'Ben', 'Aquino', '707 Aspen Blvd, Tarlac', '0917-909-0101', 'ben.a@email.com');

INSERT INTO animals (animalid, name, species, breed, dateofbirth, gender, color, ownerid)
VALUES
(1, 'Simba', 'Cat', 'Siamese', '2021-05-15', 'Male', 'Cream', 1),         
(2, 'Max', 'Dog', 'Golden Retriever', '2020-03-20', 'Male', 'Golden', 2),   
(3, 'Luna', 'Cat', 'Maine Coon', '2022-01-25', 'Female', 'Brown Tabby', 3), 
(4, 'Bella', 'Dog', 'Labrador', '2019-11-10', 'Female', 'Black', 4),       
(5, 'Charlie', 'Dog', 'Beagle', '2023-04-01', 'Male', 'Tricolor', 5),    
(6, 'Whiskers', 'Cat', 'Persian', '2021-08-08', 'Female', 'White', 6),    
(7, 'Rocky', 'Dog', 'German Shepherd', '2020-07-01', 'Male', 'Black and Tan', 7), 
(8, 'Shadow', 'Cat', 'Domestic Shorthair', '2022-06-12', 'Male', 'Black', 8 )
(9, 'Daisy', 'Dog', 'Poodle', '2021-02-28', 'Female', 'White', 9),        
(10, 'Ollie', 'Cat', 'Bengal', '2023-01-01', 'Male', 'Spotted', 10);    
INSERT INTO appointments (appointid, animalid, appointdate, reason)
VALUES
(1, 1, '2023-01-05', 'Annual Checkup'),
(2, 2, '2023-01-10', 'Vaccination'),
(3, 3, '2023-02-02', 'Limping/Injury'),
(4, 4, '2023-02-15', 'Dental Procedure'),
(5, 5, '2023-03-10', 'Skin Rash'),
(6, 6, '2023-03-10', 'Flea/Tick Treatment'),
(7, 7, '2023-04-12', 'Vaccination'),
(8, 8, '2023-04-18', 'Spay/Neuter Surgery'),
(9, 9, '2023-05-02', 'Allergies'),
(10, 10, '2023-05-20', 'Eye Irritation');

INSERT INTO doctors(doctorid, dfirstname, dlastname, speciality, phone, email)
VALUES
(1, 'Dr.Maria', 'Santos', 'General Veterinarian', '987-654-3210', 'maria@example.com'),
(2, 'Dr.Antonio', 'Gonzales', 'Feline Specialist', '555-123-4567', 'antonio@example.com'),
(3, 'Dr.Felipe', 'Luna', 'Orthopedic Specialist', '111-222-3333', 'felipe@example.com'),
(4, 'Dr.Sofia', 'Reyes', 'Dermatology Specialist', '999-888-7777', 'sofia@xample.com'),
(5, 'Dr.Luis', 'Torres', 'Surgery Specialist', '123-555-7777', 'luis@example.com'),
(6, 'Dr.Carmen', 'Fernandez', 'Opthalmology Specialist', '333-222-1111', 'carmen@example.com');
INSERT INTO invoices(invoiceid, appointid, totalamount, paymentdate)
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

INSERT INTO medicalrecords (recordid, animalid, recorddate, doctorid, diagnosis, prescription, notes)
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

ALTER TABLE owners
ADD COLUMN registereddate DATE;

ALTER TABLE invoices
RENAME COLUMN paymentdate TO paymenttime;

UPDATE doctors
SET dlastname = 'Reyes-Gonzales'
WHERE dfirstname = 'Sofia' AND dlastname = 'Reyes';

SELECT DISTINCT species
FROM animals;