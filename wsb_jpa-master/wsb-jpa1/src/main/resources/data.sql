insert into address (id, address_line1, address_line2, city, postal_code)
            values
            (1, 'Jagodowa', '4', 'Zielona Góra', '65-001'),
            (2, 'Dluga', '15', 'Olsztyn', '10-123'),
            (3, 'Brzozowa', '7', 'Rzeszów', '35-215'),
            (4, 'Lesna', '18', 'Kielce', '25-300'),
            (5, 'Polna', '33', 'Gorzów', '66-400'),
            (6, 'Wiosenna', '12', 'Radom', '26-600'),
            (7, 'Zimowa', '8B', 'Opole', '45-120'),
            (8, 'Lipowa', '1', 'Sopot', '81-850'),
            (9, 'Modrzewiowa', '5', 'Elbląg', '82-300'),
            (10, 'Jesienna', '9', 'Zamość', '22-400'),
            (11, 'Letnia', '6', 'Tarnów', '33-100'),
            (12, 'Kasztanowa', '11', 'Legnica', '59-220'),
            (13, 'Bukowa', '13', 'Płock', '09-400')
            ;
insert into doctor(id, doctor_number, email, first_name, last_name, specialization, telephone_number, doctor_address_id)
            values
            (1, '51001', 'lucjan.wojcik@lekarz.pl', 'Lucjan', 'Wojcik', 'CARDIOLOGIST', '601001001', 2),
            (2, '51002', 'aleksandra.bialek@lekarz.pl', 'Aleksandra', 'Bialek', 'NEUROLOGIST', '601002002', 3),
            (3, '51003', 'marek.sobczak@lekarz.pl', 'Marek', 'Sobczak', 'SURGEON', '601003003', 4),
            (4, '51004', 'anna.rybak@lekarz.pl', 'Anna', 'Rybak', 'GP', '601004004', 5),
            (5, '51005', 'jan.kaczmarek@lekarz.pl', 'Jan', 'Kaczmarek', 'DERMATOLOGIST', '601005005', 6),
            (6, '51006', 'ewa.krol@lekarz.pl', 'Ewa', 'Krol', 'GP', '601006006', 7),
            (7, '51007', 'tomasz.baran@lekarz.pl', 'Tomasz', 'Baran', 'OCULIST', '601007007', 8),
            (8, '51008', 'paulina.maj@lekarz.pl', 'Paulina', 'Maj', 'OCULIST', '601008008', 9),
            (9, '51009', 'karol.zak@lekarz.pl', 'Karol', 'Zak', 'GP', '601009009', 10),
            (10, '51010', 'agnieszka.nowak@lekarz.pl', 'Agnieszka', 'Nowak', 'NEUROLOGIST', '601010010', 11),
            (11, '51011', 'mateusz.olek@lekarz.pl', 'Mateusz', 'Olek', 'DERMATOLOGIST', '601011011', 12),
            (12, '51012', 'zofia.mucha@lekarz.pl', 'Zofia', 'Mucha', 'CARDIOLOGIST', '601012012', 13)
            ;
INSERT INTO patient(id, date_of_birth, date_of_joining_the_clinic, email, first_name, last_name, patient_number, telephone_number, patient_address_id)
            VALUES
            (1, '1975-01-12', '2001-01-01', 'anna.mazur@pacjent.pl', 'Anna', 'Mazur', '501001', '501001001', 1),
            (2, '1982-03-14', '2004-02-11', 'piotr.kot@pacjent.pl', 'Piotr', 'Kot', '501002', '501002002', 2),
            (3, '1995-06-21', '2010-05-06', 'agnieszka.pakulska@pacjent.pl', 'Agnieszka', 'Pakulska', '501003', '501003003', 3),
            (4, '1979-11-30', '2007-03-17', 'jerzy.wojtas@pacjent.pl', 'Jerzy', 'Wojtas', '501004', '501004004', 4),
            (5, '1988-09-15', '2009-08-12', 'magdalena.janik@pacjent.pl', 'Magdalena', 'Janik', '501005', '501005005', 5),
            (6, '1990-04-01', '2011-01-18', 'kamil.groch@pacjent.pl', 'Kamil', 'Groch', '501006', '501006006', 6),
            (7, '1977-07-09', '2005-06-11', 'jolanta.krolik@pacjent.pl', 'Jolanta', 'Krolik', '501007', '501007007', 7),
            (8, '1965-12-24', '2002-04-30', 'grzegorz.mika@pacjent.pl', 'Grzegorz', 'Mika', '501008', '501008008', 8),
            (9, '1981-02-18', '2012-02-25', 'jakub.ziemek@pacjent.pl', 'Jakub', 'Ziemek', '501009', '501009009', 9),
            (10, '1993-10-11', '2014-11-01', 'zuzanna.lipka@pacjent.pl', 'Zuzanna', 'Lipka', '501010', '501010010', 10),
            (11, '2001-06-05', '2019-03-03', 'hubert.sliwa@pacjent.pl', 'Hubert', 'Sliwa', '501011', '501011011', 11),
            (12, '1987-08-23', '2008-07-07', 'elzbieta.zurek@pacjent.pl', 'Elzbieta', 'Zurek', '501012', '501012012', 12)
            ;

INSERT INTO visit(id, description, time, patient_id, doctor_id)
            VALUES
            (1, 'Kontrola po zabiegu', '2024-06-01 10:00:00', 1, 1),
            (2, 'Ból głowy', '2024-06-02 12:00:00', 2, 2),
            (3, 'Zawroty głowy', '2024-06-03 14:00:00', 2, 3),
            (4, 'Kontrola okresowa', '2024-06-04 09:00:00', 4, 4),
            (5, 'Problemy skórne', '2024-06-05 11:30:00', 5, 5),
            (6, 'Kaszel', '2024-06-06 15:00:00', 6, 6),
            (7, 'Problemy ze wzrokiem', '2024-06-07 08:15:00', 7, 7),
            (8, 'Zaburzenia widzenia', '2024-06-08 13:45:00', 8, 8),
            (9, 'Zawroty głowy', '2024-06-09 10:20:00', 9, 9),
            (10, 'Migrena', '2024-06-10 12:50:00', 9, 10),
            (11, 'Wysypka', '2024-06-11 14:10:00', 11, 11),
            (12, 'Kontrola serca', '2024-06-12 16:00:00', 12, 12)
            ;

INSERT INTO medical_treatment(id, description, type, visit_id)
            VALUES
            (1, 'USG brzucha', 'USG', 1),
            (2, 'Tomografia głowy', 'CT', 2),
            (3, 'EKG mózgu', 'EKG', 3),
            (4, 'EKG kontrolne', 'EKG', 4),
            (5, 'Maść dermatologiczna', 'LOCAL', 5),
            (6, 'Syrop na kaszel', 'LOCAL', 6),
            (7, 'Badanie wzroku', 'EYE', 7),
            (8, 'Laseroterapia oka', 'EYE', 8),
            (9, 'Zastrzyk', 'INJECTION', 9),
            (10, 'Tabletki przeciwbólowe', 'LOCAL', 10),
            (11, 'Maść na skórę', 'LOCAL', 11),
            (12, 'EKG serca', 'EKG', 12)
            ;
