CREATE TABLE patient (
patient_id int NOT NULL,
mrm VARCHAR(40) NOT NULL,
first_name VARCHAR(40) NOT NULL,
last_name VARCHAR(40) NOT NULL,
gender VARCHAR(40) NOT NULL,
date_of_birth DATE NOT NULL,
blood_tye INT,
height_cm INT,
weight_kg INT,
allergy VARCHAR(40),
insurance_plan VARCHAR(40),
e_plan VARCHAR(40),
phone VARCHAR(40),
city VARCHAR(40),
date_of_birth DATE,
CONSTRAINT pk_filial PRIMARY KEY (patient_id)
);


CREATE TABLE prescription (
patient_id INT NOT NULL,
drug_name VARCHAR(40) NOT NULL,
drug_class VARCHAR(40) NOT NULL,
srength VARCHAR(40) NOT NULL,
dosage_form VARCHAR(40) NOT NULL,
frequency VARCHAR(40) NOT NULL,
days_supply INT NOT NULL,
prescriber_npi VARCHAR(40),
status VARCHAR(40),
pharmacy VARCHAR(40),
prescribed_on DATE,
CONSTRAINT pk_filial PRIMARY KEY (patient_id)
);


CREATE TABLE vitals (
patient_id INT NOT NULL,
recorded_at VARCHAR(40) NOT NULL,
recorded_at_date date NOT NULL,
recorded_at_hour HOUR NOT NULL,
heart_rate_bpm INT NOT NULL,
systolic_mmhg INT NOT NULL,
diastolic_mmhg INT NOT NULL,
temperature_c INT,
spo2_pct INT,
weight_kg FLOAT,
bmi FLOAT,
CONSTRAINT pk_filial PRIMARY KEY (patient_id)
);


CREATE TABLE hospital_visits (
encounter_id INT NOT NULL,
patient_id INT NOT NULL,
visit_date date NOT NULL,
visit_type VARCHAR(40) HOUR NOT NULL,
department VARCHAR(40) NOT NULL,
doctor VARCHAR(40) NOT NULL,
provider_npi INT NOT NULL,
diagnosis_code VARCHAR(40),
diagnosis_name VARCHAR(40),
procedure VARCHAR(40),
charges FLOAT,
CONSTRAINT pk_filial PRIMARY KEY (patient_id)
);


CREATE TABLE lab_results (
patient_id INT NOT NULL,
collected_at DATE NOT NULL,
collected_at_date date NOT NULL,
collected_at_hour VARCHAR(40) HOUR NOT NULL,
test_name VARCHAR(40) NOT NULL,
result_value VARCHAR(40) NOT NULL,
unit INT NOT NULL,
reference_range VARCHAR(40),
flag VARCHAR(40),
ADD CONSTRAINT flag
CHECK (flag IN ('Low', 'Normal', 'High')),
CONSTRAINT pk_filial PRIMARY KEY (patient_id)
);