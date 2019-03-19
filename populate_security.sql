SET SQL_SAFE_UPDATES = 0;

insert into tb_user (id, username ,name, pat_lastname, mat_lastname, email, password, image, created_date, updated_date, status, description) values
('1', 'zazu', 'Herbert', 'Quinto', 'Espinoza', 'hee@gmail.com', '$2a$10$ajxn78E420m6KbvQjcIh2egiucduD9DX7xOuTrHCKQvaqM6MVUpaK', '../../assets/img/lienzo.png', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', 'Ilustrador amateur. Estoy Iniciándome como ilustrador, quiero crear personajes y mostrar como es el mundo de cada uno de ellos. Por el momento hago fanarts, y pequeñas vistas de algunos personajes aleatorios que voy haciendo.'),
('2', '1159', 'Cristhian Martin', 'Chacalcaje', 'Lopez', 'cristhianmartin12@gmail.com', '$2a$10$FR9kNK.LeWgEGggSmVBU7e3JQTuc440e2M5YUBmgmh.27l3AGKst6', '../../assets/img/lienzo.png', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', 'Soy titulado de la carrera de Computación e Informática y tengo como principal meta formar una empresa híbrida (Social y Económica).'),
('3', 'day', 'Dayanne', 'Hernandez', 'Calla', 'daynnnaz@gmail.com', '$2a$10$3OOy.upu8NsMTDYmNEffROh18pGaNFXh90pwA0t0qlo6eIP6WWrfu', '../../assets/img/lienzo.png', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', ''),
('4', 'dnpoe', 'Jose', 'Chávez', 'Loli', 'jmchavezl@hotmail.com', '$2a$10$aXlH9VkA0ajwKW.CHC.wveoHh8X2ai.mUBnerRUO.013YjvoqqyRy', '../../assets/img/lienzo.png', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', 'Soy un Chico Creativo y muy desplayado a la hora de generar ideas para cualquier cosa que pueda venir :3 \n\nResponsable :3'),
('5', 'indigart', 'Jeremy', 'Llerena', 'Urbina', 'jeremyub@gmail.com', '$2a$10$LDhSGjBGWsNhBaMSCzJz.uv/moakubIFD.k7AnWSaEZZZrr9H19Q2', '../../assets/img/lienzo.png', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', ''),
('6', 'mafer1006', 'Mafer', 'Sanchez', 'Salgado', 'mariadelpilarsalgador@hotmail.com', '$2a$10$jmus0qOO3UAxLeIQ/2OmEeHSZWFjljAilOazqG1znfh3CN7rlXSFK', '../../assets/img/lienzo.png', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', ''),
('7', 'karen', 'Karen', 'Mello', 'Inofuente', 'touka_666@outlook.com', '$2a$10$2lBTRiBW/WmlXXbVXhqlqeTf68/c25QwqNu.EPnT33YXqi0Bmxb0G', 'https://66.media.tumblr.com/928684e55d66c988923a38191442496b/tumblr_pgok8tva1l1uhcwhx_540.jpg', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', 'Artista en entrenamiento. Dibujo/fotografìa.'),
('8', 'that_ignostic_douchebag', 'Danilo', 'Campi', 'Zambrano', 'danilocampi_28@hotmail.com', '$2a$10$ASpXwowT/ZKWppeGbmvtauy55kEEtk7qzot/Krszu69UXDQ03gHpq', 'https://66.media.tumblr.com/902c3a137203d2c1610e69c52fd8291f/tumblr_pgokdg3l5h1w82rz9o1_400.jpg', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', 'ilustrador novato.'),
('9', 'fran', 'Alexa', 'Misajel', 'Lino', 'franm@hotmail.com', '$2a$10$G.KRKUwpH7qQFcKYA.xAqen1R6lkgRDAjvQ1nDNa42B94468bxV52', '../../assets/img/lienzo.png', '2019-02-24 22:26:49', '2019-02-24 22:26:49', '1', '');

insert into tb_role(id, rolename, description, created_date, updated_date, created_user, updated_user) values 
(1, 'USER', 'Common user.', current_timestamp(), current_timestamp(), '1159', ''),
(2, 'ADMIN', 'System administrator.', current_timestamp(), current_timestamp(), '1159', ''),
(3, 'PARTNER', 'Partner.', current_timestamp(), current_timestamp(), '1159', '');

insert into tb_user_role(user_id, role_id) values 
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1);