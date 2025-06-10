insert into address (id, address_line1, address_line2, city, postal_code)
            values
            (1, 'xx', 'yy', 'city', '62-030'),
            (2, 'Reymonta', '21', 'Wroclaw', '54-216'),
            (3, 'Mickiewicza', '10', 'Warszawa', '00-364'),
            (4, 'Sienkiewicza', '5A', 'Krakow', '31-156'),
            (5, 'Kosciuszki', '22', 'Poznan', '60-892'),
            (6, 'Pilsudskiego', '7', 'Gdansk', '80-803'),
            (7, 'Chopina', '3B', 'Lodz', '90-123'),
            (8, 'Slowackiego', '19', 'Szczecin', '70-355'),
            (9, 'Kopernika', '11', 'Bydgoszcz', '85-001'),
            (10, 'Zeromskiego', '14', 'Lublin', '20-123'),
            (11, 'Norwida', '8', 'Katowice', '40-025'),
            (12, 'Konopnickiej', '12', 'Bialystok', '15-444'),
            (13, 'Orzeszkowej', '6', 'Torun', '87-100')
            ;
insert into doctor(id, doctor_number, email, first_name, last_name, specialization, telephone_number, doctor_address_id)
            values
            (1, '43783', 'jankowalski@lekarz.pl', 'Jan', 'Kowalski', 'OCULIST', '387648972', 2),
            (2, '68473', 'joannanowak@lekarz.pl', 'Joanna', 'Nowak', 'GP', '458715456', 1),
            (3, '23897', 'adamczykpawel@lekarz.pl', 'Pawel', 'Adamczyk', 'DERMATOLOGIST', '687123654', 3),
            (4, '57291', 'malgorzatadabrowska@lekarz.pl', 'Malgorzata', 'Dabrowska', 'SURGEON', '598742365', 5),
            (5, '81346', 'piotrzielinski@lekarz.pl', 'Piotr', 'Zielinski', 'GP', '756489321', 6),
            (6, '39487', 'katarzynawisniewska@lekarz.pl', 'Katarzyna', 'Wisniewska', 'DERMATOLOGIST', '985632147', 7),
            (7, '64923', 'adamgorski@lekarz.pl', 'Adam', 'Gorski', 'OCULIST', '874123698', 8),
            (8, '52874', 'ewawojcik@lekarz.pl', 'Ewa', 'Wojcik', 'GP', '745896123', 9),
            (9, '78632', 'robertkowalczyk@lekarz.pl', 'Robert', 'Kowalczyk', 'OCULIST', '632587419', 10),
            (10, '37592', 'annaszmidt@lekarz.pl', 'Anna', 'Schmidt', 'DERMATOLOGIST', '854712369', 11),
            (11, '93185', 'michalzielinski@lekarz.pl', 'Michal', 'Zielinski', 'GP', '987456321', 12),
            (12, '46239', 'agatakaczmarek@lekarz.pl', 'Agata', 'Kaczmarek', 'OCULIST', '632587419', 13)
            ;
INSERT INTO patient(id, date_of_birth, date_of_joining_the_clinic, email, first_name, last_name, patient_number, telephone_number, patient_address_id)
            VALUES
            (1, '1956-03-14', '2007-05-12', 'janinamaj@pacjent.pl', 'Janina', 'Maj', '237832', '878649497', 1),
            (2, '1980-07-22', '2003-02-05', 'andrzejnowak@pacjent.pl', 'Andrzej', 'Nowak', '345678', '579842315', 2),
            (3, '1992-05-10', '2002-09-22', 'katarzynakowalska@pacjent.pl', 'Katarzyna', 'Kowalska', '456789', '698743512', 3),
            (4, '1985-11-30', '2010-12-29', 'piotrwilk@pacjent.pl', 'Piotr', 'Wilk', '567890', '789654123', 4),
            (5, '1973-04-18', '2003-04-12', 'annakwiatkowska@pacjent.pl', 'Anna', 'Kwiatkowska', '678901', '852369741', 5),
            (6, '2000-01-15', '2012-05-28', 'paweladamczyk@pacjent.pl', 'Pawel', 'Adamczyk', '789012', '963258741', 6),
            (7, '1995-09-05', '2014-07-01', 'joannaszymanska@pacjent.pl', 'Joanna', 'Szymanska', '890123', '741852963', 7),
            (8, '1988-02-25', '2008-06-13', 'marekkaczmarek@pacjent.pl', 'Marek', 'Kaczmarek', '901234', '852741369', 8),
            (9, '1967-12-12', '1999-03-15', 'aleksandrawisniewska@pacjent.pl', 'Aleksandra', 'Wisniewska', '012345', '963147852', 9),
            (10, '1999-06-07', '2001-04-11', 'grzegorzlewandowski@pacjent.pl', 'Grzegorz', 'Lewandowski', '123456', '789321654', 10),
            (11, '1976-08-19', '2017-11-07', 'martajankowska@pacjent.pl', 'Marta', 'Jankowska', '234567', '456987123', 11),
            (12, '1983-03-23', '2002-10-17', 'tomaszwojcik@pacjent.pl', 'Tomasz', 'Wojcik', '345678', '123456789', 12)
            ;

INSERT INTO visit(id, description, time, patient_id, doctor_id)
            VALUES
            (1, 'Niewydolnosc nerek', '2024-05-10 12:15:00', 1, 1),
            (2, 'Kontrola po operacji', '2023-11-11 09:30:00', 2, 2),
            (3, 'Bol plecow', '2024-02-12 14:00:00', 3, 3),
            (4, 'Zapalenie oskrzeli', '2025-01-13 11:45:00', 4, 4),
            (5, 'Badanie dermatologiczne', '2024-08-14 10:20:00', 5, 5),
            (6, 'Badanie kontrolne', '2023-07-15 15:30:00', 6, 6),
            (7, 'Badanie neurologiczne', '2024-03-16 08:45:00', 7, 7),
            (8, 'Problemy ze wzrokiem', '2024-04-17 13:10:00', 8, 8),
            (9, 'Bol w klatce piersiowej', '2024-06-18 10:50:00', 9, 9),
            (10, 'Problemy z nerkami', '2025-09-19 12:00:00', 10, 1),
            (11, 'Konsultacja psychiatryczna', '2023-10-20 16:00:00', 11, 10),
            (12, 'Kontrola urologiczna', '2024-12-21 11:00:00', 12, 11),
            (13, 'Zapalenie zatok', '2023-05-22 09:15:00', 3, 12),
            (14, 'Badanie tarczycy', '2022-07-11 15:00:00', 6, 4)
            ;

INSERT INTO medical_treatment(id, description, type, visit_id)
            VALUES
            (1, 'Niewydolnosc nerek', 'USG', 1),
            (2, 'Kontrola po operacji', 'RTG', 2),
            (3, 'Bol plecow', 'USG', 3),
            (4, 'Zapalenie oskrzeli', 'RTG', 4),
            (5, 'Badanie dermatologiczne', 'USG', 5),
            (6, 'Badanie kontrolne', 'EKG', 6),
            (7, 'Badanie neurologiczne', 'EKG', 7),
            (8, 'Problemy ze wzrokiem', 'USG', 8),
            (9, 'Bol w klatce piersiowej', 'EKG', 9),
            (10, 'Problemy z nerkami', 'USG', 10),
            (11, 'Konsultacja psychiatryczna', 'RTG', 11),
            (12, 'Kontrola urologiczna', 'USG', 12),
            (13, 'Zapalenie zatok', 'RTG', 13)
            ;
