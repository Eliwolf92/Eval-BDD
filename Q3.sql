CREATE TABLE Proprietaire (
    Id_Proprietaire INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(20) NOT NULL,
    Prenom VARCHAR(20) NOT NULL,
    Adresse VARCHAR(255),
    Telephone VARCHAR(10)
);


CREATE TABLE Bien (
    Id_Bien INT AUTO_INCREMENT PRIMARY KEY,
    Taille INT NOT NULL,
    Adresse VARCHAR(255) NOT NULL,
    Prix_Location DECIMAL(10, 2) NOT NULL,
    Type BOOLEAN NOT NULL,
    Id_Proprietaire INT,
    FOREIGN KEY (Id_Proprietaire) REFERENCES Proprietaire(Id_Proprietaire)
);


CREATE TABLE Contrat (
    Id_Contrat INT AUTO_INCREMENT PRIMARY KEY,
    Duree INT NOT NULL,
    Pourcentage INT NOT NULL,
    Id_Bien INT,
    Id_Proprietaire INT,
    FOREIGN KEY (Id_Bien) REFERENCES Bien(Id_Bien),
    FOREIGN KEY (Id_Proprietaire) REFERENCES Proprietaire(Id_Proprietaire)
);

CREATE TABLE Locataire (
    Id_Locataire INT AUTO_INCREMENT PRIMARY KEY,
    Nom VARCHAR(20) NOT NULL,
    Prenom VARCHAR(20) NOT NULL,
    Adresse VARCHAR(255),
    Telephone VARCHAR(10)
);


CREATE TABLE Bail (
    Num_Bail INT AUTO_INCREMENT PRIMARY KEY,
    Date_Debut DATE NOT NULL,
    Date_Fin DATE NOT NULL,
    Id_Bien INT,
    Id_Locataire INT,
    FOREIGN KEY (Id_Bien) REFERENCES Bien(Id_Bien),
    FOREIGN KEY (Id_Locataire) REFERENCES Locataire(Id_Locataire)
);
