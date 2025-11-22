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