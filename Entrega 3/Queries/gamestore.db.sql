BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Pessoa" (
	"idPessoa"	INTEGER UNIQUE,
	"nome"	TEXT NOT NULL,
	"dataNascimento"	TEXT NOT NULL,
	"telefone"	INTEGER CHECK(length("telefone") >= 9),
	"email"	TEXT,
	PRIMARY KEY("idPessoa")
);
CREATE TABLE IF NOT EXISTS "ClientePremium" (
	"idCliente"	INTEGER,
	"dataAdesao"	TEXT NOT NULL,
	PRIMARY KEY("idCliente"),
	CONSTRAINT "fkey_clientepremium" FOREIGN KEY("idCliente") REFERENCES "Cliente"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "Morada" (
	"idMorada"	INTEGER,
	"rua"	TEXT NOT NULL,
	"codigoPostal"	INTEGER NOT NULL,
	"cidade"	TEXT,
	"pais"	TEXT,
	PRIMARY KEY("idMorada")
);
CREATE TABLE IF NOT EXISTS "Funcionario" (
	"idPessoa"	INTEGER,
	"ordenado"	REAL,
	"dataContratacao"	TEXT,
	PRIMARY KEY("idPessoa"),
	CONSTRAINT "fkey_functionario_idpessoa" FOREIGN KEY("idPessoa") REFERENCES "Pessoa"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "Loja" (
	"idLoja"	INTEGER,
	"nome"	TEXT NOT NULL UNIQUE,
	"telefone"	INTEGER NOT NULL UNIQUE,
	"email"	TEXT NOT NULL,
	"idGerente"	INTEGER NOT NULL UNIQUE,
	"morada"	INTEGER NOT NULL UNIQUE,
	CONSTRAINT "fkey_loja_idpessoa" PRIMARY KEY("idLoja"),
	FOREIGN KEY("idGerente") REFERENCES "Funcionario"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY("morada") REFERENCES "Morada"("idMorada") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "LojaFuncionario" (
	"idFuncionario"	INTEGER,
	"idLoja"	INTEGER NOT NULL,
	PRIMARY KEY("idFuncionario"),
	FOREIGN KEY("idLoja") REFERENCES "Loja"("idLoja") ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY("idFuncionario") REFERENCES "Funcionario"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "Editor" (
	"idEditor"	INTEGER,
	"nome"	TEXT NOT NULL,
	"idade"	INTEGER,
	PRIMARY KEY("idEditor")
);
CREATE TABLE IF NOT EXISTS "Horario" (
	"idHorario"	INTEGER,
	"diaSemana"	TEXT NOT NULL CHECK("diaSemana" = "SEGUNDA-FEIRA" OR "diaSemana" = "TERCA-FEIRA" OR "diaSemana" = "QUARTA-FEIRA" OR "diaSemana" = "QUINTA-FEIRA" OR "diaSemana" = "SEXTA-FEIRA" OR "diaSemana" = "SABADO" OR "diaSemana" = "DOMINGO"),
	"horaInicial"	NUMERIC NOT NULL CHECK("horaInicial" < "horaFinal"),
	"horaFinal"	NUMERIC NOT NULL,
	PRIMARY KEY("idHorario")
);
CREATE TABLE IF NOT EXISTS "HorarioFuncionario" (
	"idHorario"	INTEGER,
	"idFuncionario"	INTEGER,
	PRIMARY KEY("idHorario","idFuncionario"),
	CONSTRAINT "fk_horariofuncionario_idfuncionario" FOREIGN KEY("idFuncionario") REFERENCES "Funcionario"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT "fkey_horariofuncionario_idhorario" FOREIGN KEY("idHorario") REFERENCES "Horario"("idHorario") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "HorarioLoja" (
	"idLoja"	INTEGER,
	"idHorario"	INTEGER,
	PRIMARY KEY("idLoja","idHorario"),
	CONSTRAINT "fkey_horarioloja_idhorario" FOREIGN KEY("idLoja") REFERENCES "Loja"("idLoja") ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT "fkey_horarioloja_idloja" FOREIGN KEY("idHorario") REFERENCES "Horario"("idHorario") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "Compra" (
	"idCompra"	INTEGER,
	"dataCompra"	TEXT NOT NULL,
	"valor"	REAL NOT NULL CHECK("valor" >= 0),
	"idCliente"	INTEGER DEFAULT 999999999,
	"idLoja"	INTEGER,
	PRIMARY KEY("idCompra"),
	CONSTRAINT "fkey_compra_loja" FOREIGN KEY("idLoja") REFERENCES "Loja"("idLoja") ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT "fkey_compra_cliente" FOREIGN KEY("idCliente") REFERENCES "Pessoa"("idPessoa") ON DELETE SET DEFAULT ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "CompraJogo" (
	"idCompra"	INTEGER,
	"idJogo"	INTEGER,
	PRIMARY KEY("idCompra","idJogo"),
	CONSTRAINT "fkey_comprajogo_compra" FOREIGN KEY("idCompra") REFERENCES "Compra"("idCompra") ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT "fkey_comprajogo_jogo" FOREIGN KEY("idJogo") REFERENCES "Jogo"("idJogo") ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "Cliente" (
	"idPessoa"	INTEGER,
	"dataAdesao"	TEXT,
	PRIMARY KEY("idPessoa"),
	FOREIGN KEY("idPessoa") REFERENCES "Pessoa"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE IF NOT EXISTS "Jogo" (
	"idJogo"	INTEGER,
	"titulo"	TEXT NOT NULL,
	"dalaLancamento"	TEXT,
	"preco"	REAL CHECK("preco" >= 0),
	"genero"	REAL CHECK("genero" = 'ACAO' OR "genero" = 'FPS' OR "genero" = 'MULTIPLAYER' OR "genero" = 'TERROR' OR "genero" = 'RPG' OR "genero" = 'CORIDAS' OR "genero" = 'ESTRATEGIA' OR "genero" = 'CASUAL' OR "genero" = 'ESPORT' OR "genero" = 'INDIE' OR "genero" = 'SIMULADOR'),
	"idioma"	TEXT,
	"rating"	REAL CHECK("rating" >= 0 AND "rating" <= 5),
	"critica"	TEXT,
	"editor"	INTEGER,
	PRIMARY KEY("idJogo"),
	CONSTRAINT "fkey_jogo_editor" FOREIGN KEY("editor") REFERENCES "Editor"("idEditor") ON DELETE CASCADE ON UPDATE CASCADE
);
INSERT INTO "Pessoa" ("idPessoa","nome","dataNascimento","telefone","email") VALUES (1,'Fernando Pessoa','1988-06-13',912885499,'chullo@nonise.com'),
 (2,'Álvaro de Campos','1997-08-24',919585607,'dalebuck@eelrcbl.com'),
 (3,'Alberto Caeiro','2000-01-01',913885884,'mashrafgull@ttlrlie.com'),
 (4,'Ricardo Reis','1979-04-08',939956247,'jeka7826@supo.site'),
 (5,'Bernardo Soares','2002-04-11',923684774,'lanowalker@debb.me'),
 (6,'Alexander Search','1969-04-20',912559570,'dawnwest@gmailni.com'),
 (7,'Charles Robert Anon','1995-05-04',923670412,'meerkatt@eeetivsc.com'),
 (8,'Jean Seul','1997-05-14',938820065,'buddha77@cleverr.site'),
 (9,'Maria José','1989-06-20',911181580,'yuldawidowa@pdfik.site'),
 (10,'António Mora','2000-07-16',925616389,'hobshack@eelrcbl.com'),
 (11,'Vicente Guedes','1975-07-24',934391464,'mdweaver@oygkt.com'),
 (12,'Raphael Baldaya','2002-11-27',968454055,'ljdmillaromanova0@yandex.cfd'),
 (13,'Bruno de Carvalho','1972-02-08',960900051,'xyz@xyz.agency'),
 (999999999,'','',NULL,NULL);
INSERT INTO "ClientePremium" ("idCliente","dataAdesao") VALUES (1,'1993-10-28'),
 (2,'2001-03-10');
INSERT INTO "Morada" ("idMorada","rua","codigoPostal","cidade","pais") VALUES (1,'Rua Doutor Roberto Frias','4200-465','Porto','Portugal'),
 (2,'Avenida dos Aliados','4000-064','Porto','Portugal'),
 (3,'Rua Heróis de França','4450-156','Porto','Portugal'),
 (4,'Avenida dos Donuts','4404-080','Gaia','Portugal'),
 (5,'Travessa Irmãzinha dos Pobres','1020-147','Lisboa','Portugal'),
 (6,'Bairro dos Congregados','4710-427','Braga','Portugal'),
 (7,'Rua Dom Afonso Henriques','4700-030','Braga','Portugal'),
 (8,'Rua Miguel Bombarda','3810-134','Aveiro','Portugal'),
 (9,'Rua General Ferreira Martins','1405-137','Lisboa','Portugal'),
 (10,'Rua Doutor Orlando Oliveira','3800-008','Aveiro','Portugal');
INSERT INTO "Funcionario" ("idPessoa","ordenado","dataContratacao") VALUES (4,1200.0,'2010-12-14'),
 (5,1200.0,'2013-07-29'),
 (6,1200.0,'2015-08-15');
INSERT INTO "Loja" ("idLoja","nome","telefone","email","idGerente","morada") VALUES (1,'4450 store',912121291,'shop4450@epic.com',4,10),
 (2,'aguas santas epic store',123123123,'meilao@epic.com',5,9);
INSERT INTO "LojaFuncionario" ("idFuncionario","idLoja") VALUES (4,1),
 (5,2),
 (6,1);
INSERT INTO "Editor" ("idEditor","nome","idade") VALUES (1,'buggysoft',20),
 (2,'activeblind',16),
 (3,'diskprojectblue',5),
 (4,'ea dlc',3),
 (5,'pineapple studio',14),
 (6,'the eightrpm',18),
 (7,'blitzcrank',12),
 (8,'red finger',21),
 (9,'garden studios',8),
 (10,'dog digital',16),
 (11,'roit',18),
 (12,'evlav',13);
INSERT INTO "Horario" ("idHorario","diaSemana","horaInicial","horaFinal") VALUES (1,'SEGUNDA-FEIRA',9,17),
 (2,'TERCA-FEIRA',9,17),
 (3,'QUARTA-FEIRA',9,17),
 (4,'QUINTA-FEIRA',9,17),
 (5,'SEXTA-FEIRA',9,17),
 (6,'SABADO',9,13);
INSERT INTO "HorarioFuncionario" ("idHorario","idFuncionario") VALUES (1,4),
 (2,4),
 (3,4),
 (4,4),
 (5,4),
 (6,4),
 (1,5),
 (2,5),
 (3,5),
 (4,5),
 (5,5),
 (6,5),
 (1,6),
 (2,6),
 (3,6),
 (4,6),
 (5,6),
 (6,NULL);
INSERT INTO "HorarioLoja" ("idLoja","idHorario") VALUES (1,1),
 (1,2),
 (1,3),
 (1,4),
 (1,5),
 (1,6),
 (2,1),
 (2,2),
 (2,3),
 (2,4),
 (2,5),
 (2,6);
INSERT INTO "Compra" ("idCompra","dataCompra","valor","idCliente","idLoja") VALUES (1,'2021-01-10',49.99,1,1),
 (2,'2021-02-17',33.5,2,2),
 (3,'2021-02-28',39.99,3,1),
 (4,'2021-03-02',67.49,1,1),
 (5,'2021-03-04',29.0,999999999,2),
 (6,'2021-04-11',76.73,3,2),
 (7,'2021-05-05',45.49,7,2),
 (8,'2021-05-24',4.99,7,1),
 (9,'2021-05-26',61.64,2,1),
 (10,'2021-05-28',17.89,999999999,2),
 (11,'2021-06-11',44.49,1,1),
 (12,'2021-06-13',38.99,2,1),
 (13,'2021-07-01',23.5,5,2),
 (14,'2021-11-15',27.89,999999999,2),
 (15,'2017-10-30',9.99,999999999,1),
 (16,'2021-09-16',67.65,1,2),
 (17,'','',999999999,NULL);
INSERT INTO "CompraJogo" ("idCompra","idJogo") VALUES (1,1),
 (2,2),
 (15,6),
 (3,1);
INSERT INTO "Cliente" ("idPessoa","dataAdesao") VALUES (1,'1999-12-25'),
 (2,'1998-06-29'),
 (3,'1984-11-24'),
 (5,'1980-05-10'),
 (7,'2000-09-27'),
 (10,'2020-12-18'),
 (999999999,NULL);
INSERT INTO "Jogo" ("idJogo","titulo","dalaLancamento","preco","genero","idioma","rating","critica","editor") VALUES (1,'piko ancestors','2000-06-18',59.99,'ACAO','portugues',5.0,'very epic',3),
 (2,'epic bros','2009-10-07',79.99,'ESTRATEGIA','ingles',2.2,'meh,  the graphics suck',7),
 (3,'someone stole my!','2008-10-07',19.99,'INDIE','alemao',3.4,'i got hungry while playing this',5),
 (4,'speed for need','2005-08-16',39.99,'CORIDAS','ingles',4.5,'great game',1),
 (5,'liga das legendas','2001-09-03',15.99,'MULTIPLAYER','portugues',4.9,'my teammates are so toxic',11),
 (6,'dolls 4.0','2018-10-06',99.99,'SIMULADOR','ingles',3.5,'this has so many dlcs',4),
 (7,'literature by doki','2015-07-23',12.49,'TERROR','ingles',3.9,'those girls were cute',8),
 (8,'walking alive','2009-03-21',24.99,'TERROR','russo',3.2,'mobsters are cool',10),
 (9,'chester','2011-04-01',14.99,'SIMULADOR','ingles',4.1,'very intuitive',2),
 (10,'let it burn','2016-08-19',26.99,'RPG','espanhol',3.6,'not that much flamie',6),
 (11,'go cs','2018-07-11',13.99,'FPS','ingles',4.6,'i get mad everytime i play this',12),
 (12,'my banana enemy','2019-06-19',16.79,'INDIE','portugues',2.5,'i have bananaphobia',9),
 (13,'bitter nightmares','2014-11-25',26.67,'ESTRATEGIA','ingles',1.7,'i can fix her',6),
 (14,'fake international football agency','2003-12-26',59.99,'ESPORT','ingles',0.5,'this game sucks,  my goalkeeper doesn''t grab any balls',4),
 (15,'no vehicle theft 5.0','2016-07-26',49.99,'CORIDAS','ingles',NULL,NULL,NULL);
COMMIT;
