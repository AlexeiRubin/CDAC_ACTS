-- Implement the following logical data model of Hospital database. Ensure

-- 1. We use correct data type as available in MySQL

-- 2. All Constraints are implemented as indicated (PK, FK, UK)

-- 3. On Medication Table, restrict the usage of Brand as “CIPLA”, “GSK” and it should not allow null values.

-- 4. The Date column in Prescribes table must not allow the prescription of future dates.

-- 5. The end date column value cannot be earlier then start date in appointment and stay tables.

-- 6. The duration (oncallstart to oncallend) in on_call table must not be more than 8 hours.

CREATE DATABASE hospitalSchema;

USE hospitalSchema;

CREATE TABLE IF NOT EXISTS procedures 
(
	code INT NOT NULL,
	name VARCHAR(30),
	cost REAL,
	PRIMARY KEY(code)
);

CREATE TABLE IF NOT EXISTS trained_in
(
	physician INT NOT NULL,
	treatment INT NOT NULL,
	certificationDate DATE,
	certificationExpires DATE,
	PRIMARY KEY(physician, treatment),
	FOREIGN KEY(treatment) REFERENCES procedures(code),
	FOREIGN KEY(physician) REFERENCES physician(employeeId)
);

CREATE TABLE IF NOT EXISTS room
(
	roomNumber INT NOT NULL,
	roomType VARCHAR(20)NOT NULL,
	blockFloor INT NOT NULL,
	blockCode INT NOT NULL,
	unavailable BOOLEAN,
	PRIMARY KEY(roomNumber),
	FOREIGN KEY(blockFloor, blockCode) REFERENCES block(blockFloor, blockCode)
);

CREATE TABLE IF NOT EXISTS stay
(
	stayId INT NOT NULL,
	patient INT NOT NULL,
	room INT NOT NULL,
	start_time TIMESTAMP,
	end_time TIMESTAMP CHECK(end_time < start_time),
	PRIMARY KEY(stayId),
	FOREIGN KEY(room) REFERENCES room(roomNumber),
	FOREIGN KEY(patient) REFERENCES patient(ssn)
);

CREATE TABLE IF NOT EXISTS nurse
(
	employeeId INT NOT NULL,
	name VARCHAR(30) NOT NULL,
	position VARCHAR(20),
	registered BOOLEAN,
	ssn INT UNIQUE NOT NULL,
	PRIMARY KEY(employeeId)
);

CREATE TABLE IF NOT EXISTS affiliated_with
(
	physician INT NOT NULL,
	department INT NOT NULL,
	primaryAffiliation BOOLEAN,
	PRIMARY KEY(physician, department),
	FOREIGN KEY(physician) REFERENCES physician(employeeId),
	FOREIGN KEY(department) REFERENCES department(departmentId)
);

CREATE TABLE IF NOT EXISTS prescribes
(
	physician INT NOT NULL,
	patient INT NOT NULL,
	medication INT NOT NULL,
	datePrescribed TIMESTAMP NOT NULL CHECK(datePrescribed <= SYSDATE()),
	appointment INT,
	dose VARCHAR(20),
	PRIMARY KEY(physician, patient, medication, datePrescribed),
	FOREIGN KEY(physician) REFERENCES physician(employeeId),
	FOREIGN KEY(patient) REFERENCES patient(ssn),
	FOREIGN KEY(medication) REFERENCES medication(code),
	FOREIGN KEY(appointment) REFERENCES appointment(appointmentId)
);

CREATE TABLE IF NOT EXISTS patient
(
	ssn INT NOT NULL,
	name VARCHAR(30) NOT NULL,
	address VARCHAR(50),
	phone VARCHAR(20) NOT NULL,
	insuranceId INT,
	pcp INT,
	PRIMARY KEY(ssn),
	FOREIGN KEY(pcp) REFERENCES physician(employeeId)
);

CREATE TABLE IF NOT EXISTS appointment
(
	appointmentId INT NOT NULL,
	patient INT NOT NULL,
	prepNurse INT,
	physician INT NOT NULL,
	start_dt_time TIMESTAMP,
	end_dt_time TIMESTAMP CHECK (end_dt_time < start_dt_time),
	examinationRoom VARCHAR(20),
	PRIMARY KEY(appointmentId),
	FOREIGN KEY(patient) REFERENCES patient(ssn),
	FOREIGN KEY(prepNurse) REFERENCES nurse(employeeId),
	FOREIGN KEY(physician) REFERENCES physician(employeeId)
);

CREATE TABLE IF NOT EXISTS block
(
	blockCode INT NOT NULL,
	blockFloor INT NOT NULL,
	PRIMARY KEY(blockCode, blockFloor)
);

CREATE TABLE IF NOT EXISTS department
(
	departmentId INT NOT NULL,
	name VARCHAR(30) NOT NULL,
	head INT,
	PRIMARY KEY(departmentId),
	FOREIGN KEY(head) REFERENCES physician(employeeId)
);

CREATE TABLE IF NOT EXISTS physician
(
	employeeId INT NOT NULL,
	name VARCHAR(30) NOT NULL,
	position VARCHAR(20),
	ssn INT UNIQUE NOT NULL,
	PRIMARY KEY(employeeId)
);

CREATE TABLE IF NOT EXISTS medication
(
	code INT NOT NULL,
	name VARCHAR(30) NOT NULL,
	brand VARCHAR(20) CHECK (brand IN ('CIPLA', 'GSK')) NOT NULL,
	description VARCHAR(30),
	PRIMARY KEY(code)
);

CREATE TABLE IF NOT EXISTS undergoes
(
	patient INT NOT NULL,
	procedures INT NOT NULL,
	stay INT NOT NULL,
	dateUndegoes TIMESTAMP NOT NULL,
	physician INT,
	assistingNurse INT,
	PRIMARY KEY(patient, procedures, stay, dateUndegoes),
	FOREIGN KEY(physician) REFERENCES physician(employeeId),
	FOREIGN KEY(procedures) REFERENCES procedures(code),
	FOREIGN KEY(patient) REFERENCES patient(ssn),
	FOREIGN KEY(stay) REFERENCES stay(stayId),
	FOREIGN KEY(assistingNurse) REFERENCES nurse(employeeId)
);

CREATE TABLE IF NOT EXISTS on_call
(
	nurse INT NOT NULL,
	blockFloor INT NOT NULL,
	blockCode INT NOT NULL,
	onCallStart TIMESTAMP NOT NULL,
	onCallEnd TIMESTAMP NOT NULL,
	PRIMARY KEY(nurse, blockFloor, blockCode, onCallStart, onCallEnd),
	CHECK(TIMESTAMPDIFF(HOUR, onCallEnd, oncallstart) <= 8),
	FOREIGN KEY(nurse) REFERENCES nurse(employeeId),
	FOREIGN KEY(blockFloor, blockCode) REFERENCES block(blockFloor, blockCode)
);
