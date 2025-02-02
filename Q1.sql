CREATE TABLE Patient (
    NumPatient INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Adresse VARCHAR(255),
    CaisseAssurance VARCHAR(100)
);

CREATE TABLE Chambre (
    NumChambre INT PRIMARY KEY,
    Etage INT,
    Service VARCHAR(100)
);

CREATE TABLE Séjour (
    NumSéjour INT PRIMARY KEY,
    DateArrivee DATE,
    DateDepart DATE,
    NumPatient INT,
    NumChambre INT,
    FOREIGN KEY (NumPatient) REFERENCES Patient(NumPatient),
    FOREIGN KEY (NumChambre) REFERENCES Chambre(NumChambre)
);

CREATE TABLE Médecin (
    CodeMedecin INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Specialite VARCHAR(100)
);

CREATE TABLE Operation (
    Id_Opération INT PRIMARY KEY,
    Date_Operation DATE,
    Nom_Operation VARCHAR(100),
    NumSéjour INT,
    Id_Medecin INT,
    FOREIGN KEY (NumSéjour) REFERENCES Séjour(NumSéjour),
    FOREIGN KEY (CodeMedecin) REFERENCES Médecin(CodeMedecin)
);
