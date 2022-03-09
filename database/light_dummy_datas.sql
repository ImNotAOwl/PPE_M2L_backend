USE M2L_DB;

INSERT INTO USERS (nom, prenom, email, tel, password, ddn, adresse)
VALUES
('test1_nom', 'test1_prenom', 'test1@email.com','0123456789', SHA1('test1'), '1981-01-01', 'test1_adresse'),
('test2_nom', 'test2_prenom', 'test2@email.com','0234567891', SHA1('test2'), '1982-01-01', 'test2_adresse'),
('test3_nom', 'test3_prenom', 'test3@email.com','0345678912', SHA1('test3'), '1983-01-01', 'test3_adresse'),
('test4_nom', 'test4_prenom', 'test4@email.com','0456789123', SHA1('test4'), '1984-01-01', 'test4_adresse'),
('test5_nom', 'test5_prenom', 'test5@email.com','0567891234', SHA1('test5'), '1985-01-01', 'test5_adresse'),
('test6_nom', 'test6_prenom', 'test6@email.com','0678912345', SHA1('test6'), '1986-01-01', 'test6_adresse');

INSERT INTO SALLES VALUES (1, 'N.A.', 'N.A.', 0, 0, 0); --Première "vide" pour les tickets sans id_produit
INSERT INTO SALLES (nom, description, capacite, prix)
VALUES 
('Majorelle', 'Service de sonorisation et vidéo projecteur disponible', 30, 2000),
('Restauration et convivialité', 'Service de sonorisation et vidéo projecteur disponible', 50, 3000),
('Grüber', 'Vidéo projecteur disponible', 20, 1000),
('Lamour', 'Service de sonorisation et vidéo projecteur disponible', 25, 1500),
('Amphithéâtre', 'Service de sonorisation et vidéo projecteur disponible', 100, 3500),
('Longwy', 'Vidéo projecteur disponible', 15, 800),
('Daum', 'Vidéo projecteur disponible', 20, 1000),
('Gallé', 'Vidéo projecteur disponible', 20, 1000),
('Corbin', 'Vidéo projecteur disponible', 20, 1000),
('Baccarat', 'Vidéo projecteur disponible', 20, 1000);

INSERT INTO PRODUITS VALUES (1, 'N.A.', 'N.A.', 0, 0, 0); --Première "vide" pour les tickets sans id_produit
INSERT INTO PRODUITS (nom_produit, description, qte_dispo, prix)
VALUES 
('Paiement salle', 'Paiement de réservation', 1, '1'),
('Vidéoprojecteur', 'Paiement de location d\'un vidéoprojecteur', 1, '50'),
('Sandwich poulet', 'Sandwich au poulet avec crudités', 500, '5.60'),
('Sandwich jambon', 'Sandwich au jambon avec crudités', 500, '5.60'),
('Evian', 'Bouteille d\'eau plate 50cl', 500, '2.30'),
('Perrier', 'Bouteille d\'eau gazeuse 50cl', 500, '2.30'),
('Coca-cola', 'Canette de soda 33cl', 500, '2.30'),
('Minute maid orange', 'Canette de jus d\'orange 33cl', 500, '2.30');


UPDATE USERS SET is_admin=1 WHERE id=1;


INSERT INTO RESERVATIONS (date_resa, is_paid, id_user, id_salle)
VALUES
('1986-01-01', 1, 1, 7),
('2023-01-01', 1, 1, 7),
('1986-01-01', 2, 2, 2),
('2022-03-09', 0, 2, 5),
('2022-03-10', 0, 1, 4),
('2022-03-11', 0, 1, 5),
('2022-03-23', 0, 1, 4);


INSERT INTO PARTICIPANTS (covid_positive, id_user, id_reservation)
VALUES
(0, 1, 1),
(0, 2, 1),
(1, 1, 2),
(0, 2, 2);