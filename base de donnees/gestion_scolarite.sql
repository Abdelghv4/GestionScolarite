drop database if exists gestion_scolarite;
create database if not exists gestion_scolarite;
use gestion_scolarite;

create table etudiant(
    idEtudiant int(4) auto_increment primary key,
    nom varchar(50),
    prenom varchar(50),
    civilite varchar(1),
    photo varchar(100),
    idFiliere int(4),
    date_naissance varchar(50) ,
	lieu_naissance varchar (200) ,
	adresse varchar (255) ,
	ville varchar (50) ,
	cin varchar (50) ,
	tel_domicile varchar (50) ,
    tel_professionnel varchar (50) ,
	niveau_scolaire varchar (50) ,
	gmail  varchar (50) ,
	dernier_etablissement varchar (50) ,
	num_inscription varchar (50) ,
	date_inscription varchar (50) ,
	code_massar varchar (50) ,
    resultat varchar(50),


    annee_scolaire varchar(50)
);

	

create table filiere(
    idFiliere int(4) auto_increment primary key,
    nomFiliere varchar(50),
    niveau varchar(50),
	classe varchar(50),
	fraisD  varchar(50),
	fraisM varchar(50)
);

create table paiement(
idPaiment int(4) auto_increment primary key,
nom varchar(50),
 prenom varchar(50),
 annee_scolaire varchar(50) ,
 niveau varchar(50),
classe varchar(50),
 typeP varchar(50),
 montantP varchar(50),
 dateP varchar(50),
 mois varchar(50)


);


create table utilisateur(
    iduser int(4) auto_increment primary key,
    login varchar(50),
    email varchar(255),
    role varchar(50),   -- admin ou visiteur
    etat int(1),        -- 1:activé 0:desactivé
    pwd varchar(255)
);
create table matiere(
	id_matiere int not null auto_increment primary key,
	nom varchar (50) not null,
	nombre_heure_total int ,
	nombre_heure_tp int ,
	nombre_heure_th int ,
	coef int not null
);
create table programme(
	id_prog int not null auto_increment primary key,
	id_filiere int ,
	annee_scolaire varchar(50) ,
	id_matiere int ,
	classe varchar(50)  
);
create table scolarite(
	id int not null auto_increment primary key,
	annee_scolaire varchar(50) ,
	id_etudiant int ,
	id_stagiaire int ,
	id_filiere int ,
	classe varchar(50) ,
	resultat varchar(50) , 
	date_resultat date 
	);
	create table stagiaire(
    idStagiaire int(4) auto_increment primary key,
    nom varchar(50),
    prenom varchar(50),
    civilite varchar(1),
    photo varchar(255),
    idFiliere int(4),
	date_naissance varchar(50) ,
	lieu_naissance varchar (200) ,
	adresse varchar (255) ,
	ville varchar (50) ,
	cin varchar (50) ,
		tel_domicile varchar (50) ,
    tel_professionnel varchar (50) ,
	niveau varchar(50),
classe varchar(50)

);
 create table emplois(
idEmploi int(4) auto_increment primary key,
nom varchar(50),
 nomMatiere varchar(50),
 niveau varchar(50),
 	annee_scolaire varchar(50) ,

classe varchar(50)



 );
Alter table stagiaire add constraint 
    foreign key(idFiliere) references filiere(idFiliere);
INSERT INTO stagiaire(nom,prenom,civilite,classe,niveau,photo,idFiliere) VALUES
    ('SAADAOUI','MOHAMMED','M','2Bac','Lycée','user1.png',1),
	('CHAABI','OMAR','M','2Bac','Lycée','user1.png',2),
	('SALIM','RACHIDA','F','2Bac','Lycée','user1.png',3),
	('FAOUZI','NABILA','F','2Bac','Lycée','user1.png',1),
	('ETTAOUSSI','KAMAL','M','2Bac','Maternelle','user1.png',2),
	('EZZAKI','ABDELKARIM','M','2Bac','Maternelle','user1.png',3),
    
	 ('SAADAOUI','MOHAMMED','M','2Bac','Lycée','user1.png',1),
	('CHAABI','OMAR','M','2Bac','Lycée','user1.png',2),
	('SALIM','RACHIDA','F','2Bac','Lycée','user1.png',3),
	('FAOUZI','NABILA','F','2Bac','Lycée','user1.png',1),
	('ETTAOUSSI','KAMAL','M','2Bac','Maternelle','user1.png',2),
	('EZZAKI','ABDELKARIM','M','2Bac','Maternelle','user1.png',3),

	 ('SAADAOUI','MOHAMMED','M','2Bac','Lycée','user1.png',1),
	('CHAABI','OMAR','M','2Bac','Lycée','user1.png',2),
	('SALIM','RACHIDA','F','2Bac','Lycée','user1.png',3),
	('FAOUZI','NABILA','F','2Bac','Lycée','user1.png',1),
	('ETTAOUSSI','KAMAL','M','2Bac','Maternelle','user1.png',2),
	('EZZAKI','ABDELKARIM','M','2Bac','Maternelle','user1.png',3);
    

/*Alter table etudiant add constraint foreign key(idFiliere) references filiere(idFiliere);*/
alter table scolarite add constraint foreign key(id_etudiant) 
	references etudiant(idEtudiant) ON DELETE CASCADE;
	-- ON DELETE CASCADE : si on supprime un stagiaire toutes ces données
	-- dans la table scolarité seront supprimées
-- 1 	
	alter table scolarite add constraint foreign key(id_stagiaire ) 
	references etudiant(idStagiaire) ON DELETE CASCADE;
-- 2	
	alter table scolarite add constraint foreign key(id_filiere) 
	references filiere(idFiliere) ON DELETE CASCADE;
-- 3		
	alter table programme add constraint foreign key (id_filiere) 
	references filiere (idFiliere) ON DELETE CASCADE;
-- 4
	alter table programme add constraint foreign key (id_matiere) 
	references matiere (id_matiere) ON DELETE CASCADE;
-- 5		
	
	
	describe filiere;
	describe etudiant;
	describe matiere;
	
	describe scolarite;
	

INSERT INTO filiere(nomFiliere,niveau,classe,fraisD,fraisM) VALUES
	('Sciences expérimentales','Lycée',' 1ère BAC Sciences','30 000','2000'),
	('ECO','Lycée','2BAC','30 000','2000'),
	('SC Maths','Lycée','2BAC','30 000','2000');
	
	
	/*INSERT INTO paiement(nom,prenom,annee_scolaire,classe,niveau,inscription,montantP,mois) VALUES
	('Najou','Achraf','2021/2022','1ere Bac','Maternelle','2400','3000','1 Mois'),
('Ait','Achraf','2021/2022','1ere Bac','Collège','2400','3000','1 Mois'),
('Ahmed','Achraf','2021/2022','1ere Bac','Lycée','2400','3000','1 Mois');*/

	
INSERT INTO utilisateur(login,email,role,etat,pwd) VALUES 
    ('admin','admin@gmail.com','ADMIN',1,md5('123')),
	 ('admin','admin@gmail.com','DIRECTEUR',1,md5('123')),
    ('user1','admin@gmail.com','SECRAITAIRE',0,md5('123')),
    ('user2','user2@gmail.com','ENSEIGNANT',1,md5('123'));	

INSERT INTO etudiant(nom,prenom,civilite,annee_scolaire,idFiliere,resultat,photo) VALUES
    ('SAADAOUI','MOHAMMED','M','2018/2019',1,'Admis','user1.png'),
	('CHAABI','OMAR','M','2019/2020',2,'Admis','user1.png'),
	('SALIM','RACHIDA','F','2020/2021',3,'Admis','user2.png'),
	('FAOUZI','NABILA','F','2021/2022',1,'Admis','user2.png'),
	('ETTAOUSSI','KAMAL','M','2022/2023',2,'Admis','user1.png'),
	('EZZAKI','ABDELKARIM','M','2023/2024',3,'Admis','user1.png');


    /*('SAADAOUI','MOHAMMED','M','2019',1,'2 Bac','Admis','Chrysantheme.jpg'),
	('CHAABI','OMAR','M','2020',2,'2 Bac','Admis','Desert.jpg'),
	('SALIM','RACHIDA','F','2020',3,'2 Bac','Admis','Hortensias.jpg'),
	('FAOUZI','NABILA','F','2020',1,'2 Bac','Admis','Koala.jpg'),
	('ETTAOUSSI','KAMAL','M','2019',2,'2 Bac','Admis','Penguins.jpg'),
	('EZZAKI','ABDELKARIM','M','2019',3,'2 Bac','Admis','Tulipes.jpg'),

    ('SAADAOUI','MOHAMMED','M','2019',1,'2 Bac','Admis','Chrysantheme.jpg'),
	('CHAABI','OMAR','M','2020',2,'2 Bac','Admis','Desert.jpg'),
	('SALIM','RACHIDA','F','2020',3,'2 Bac','Admis','Hortensias.jpg'),
	('FAOUZI','NABILA','F','2020',1,'2 Bac','Admis','Koala.jpg'),
	('ETTAOUSSI','KAMAL','M','2019',2,'2 Bac','Admis','Penguins.jpg'),
	('EZZAKI','ABDELKARIM','M','2019',3,'2 Bac','Admis','Tulipes.jpg');

    /*('SAADAOUI','MOHAMMED','M','Chrysantheme.jpg',1),
	('CHAABI','OMAR','M','Desert.jpg',2),
	('SALIM','RACHIDA','F','Hortensias.jpg',3),
	('FAOUZI','NABILA','F','Meduses.jpg',1),
	('ETTAOUSSI','KAMAL','M','Penguins.jpg',2),
	('EZZAKI','ABDELKARIM','M','Tulipes.jpg',3);*/
  

select * from filiere;
select * from etudiant;
select * from paiement;
select * from emplois;
select * from stagiaire;
select * from utilisateur;
select login,pwd from utilisateur;