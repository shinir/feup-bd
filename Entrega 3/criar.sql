BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Pessoa";
CREATE TABLE IF NOT EXISTS "Pessoa" (
	"idPessoa"	INTEGER UNIQUE,
	"nome"	TEXT NOT NULL,
	"dataNascimento"	TEXT NOT NULL,
	"telefone"	INTEGER CHECK(length("telefone") >= 9),
	"email"	TEXT,
	PRIMARY KEY("idPessoa")
);
DROP TABLE IF EXISTS "ClientePremium";
CREATE TABLE IF NOT EXISTS "ClientePremium" (
	"idCliente"	INTEGER,
	"dataAdesao"	TEXT NOT NULL,
	PRIMARY KEY("idCliente"),
	CONSTRAINT "fkey_clientepremium" FOREIGN KEY("idCliente") REFERENCES "Cliente"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "Morada";
CREATE TABLE IF NOT EXISTS "Morada" (
	"idMorada"	INTEGER,
	"rua"	TEXT NOT NULL,
	"codigoPostal"	INTEGER NOT NULL,
	"cidade"	TEXT,
	"pais"	TEXT,
	PRIMARY KEY("idMorada")
);
DROP TABLE IF EXISTS "Funcionario";
CREATE TABLE IF NOT EXISTS "Funcionario" (
	"idPessoa"	INTEGER,
	"ordenado"	REAL,
	"dataContratacao"	TEXT,
	PRIMARY KEY("idPessoa"),
	CONSTRAINT "fkey_functionario_idpessoa" FOREIGN KEY("idPessoa") REFERENCES "Pessoa"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "Loja";
CREATE TABLE IF NOT EXISTS "Loja" (
	"idLoja"	INTEGER,
	"nome"	TEXT NOT NULL UNIQUE,
	"telefone"	INTEGER NOT NULL UNIQUE,
	"email"	TEXT NOT NULL,
	"idGerente"	INTEGER NOT NULL UNIQUE,
	"morada"	INTEGER NOT NULL UNIQUE,
	FOREIGN KEY("morada") REFERENCES "Morada"("idMorada") ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT "fkey_loja_idpessoa" PRIMARY KEY("idLoja"),
	FOREIGN KEY("idGerente") REFERENCES "Funcionario"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "LojaFuncionario";
CREATE TABLE IF NOT EXISTS "LojaFuncionario" (
	"idFuncionario"	INTEGER,
	"idLoja"	INTEGER NOT NULL,
	FOREIGN KEY("idFuncionario") REFERENCES "Funcionario"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY("idFuncionario"),
	FOREIGN KEY("idLoja") REFERENCES "Loja"("idLoja") ON DELETE CASCADE ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "Editor";
CREATE TABLE IF NOT EXISTS "Editor" (
	"idEditor"	INTEGER,
	"nome"	TEXT NOT NULL,
	"idade"	INTEGER,
	PRIMARY KEY("idEditor")
);
DROP TABLE IF EXISTS "Horario";
CREATE TABLE IF NOT EXISTS "Horario" (
	"idHorario"	INTEGER,
	"diaSemana"	TEXT NOT NULL CHECK("diaSemana" = "SEGUNDA-FEIRA" OR "diaSemana" = "TERCA-FEIRA" OR "diaSemana" = "QUARTA-FEIRA" OR "diaSemana" = "QUINTA-FEIRA" OR "diaSemana" = "SEXTA-FEIRA" OR "diaSemana" = "SABADO" OR "diaSemana" = "DOMINGO"),
	"horaInicial"	NUMERIC NOT NULL CHECK("horaInicial" < "horaFinal"),
	"horaFinal"	NUMERIC NOT NULL,
	PRIMARY KEY("idHorario")
);
DROP TABLE IF EXISTS "HorarioFuncionario";
CREATE TABLE IF NOT EXISTS "HorarioFuncionario" (
	"idHorario"	INTEGER,
	"idFuncionario"	INTEGER,
	CONSTRAINT "fk_horariofuncionario_idfuncionario" FOREIGN KEY("idFuncionario") REFERENCES "Funcionario"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY("idHorario","idFuncionario"),
	CONSTRAINT "fkey_horariofuncionario_idhorario" FOREIGN KEY("idHorario") REFERENCES "Horario"("idHorario") ON DELETE CASCADE ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "HorarioLoja";
CREATE TABLE IF NOT EXISTS "HorarioLoja" (
	"idLoja"	INTEGER,
	"idHorario"	INTEGER,
	CONSTRAINT "fkey_horarioloja_idloja" FOREIGN KEY("idHorario") REFERENCES "Horario"("idHorario") ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT "fkey_horarioloja_idhorario" FOREIGN KEY("idLoja") REFERENCES "Loja"("idLoja") ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY("idLoja","idHorario")
);
DROP TABLE IF EXISTS "Compra";
CREATE TABLE IF NOT EXISTS "Compra" (
	"idCompra"	INTEGER,
	"dataCompra"	TEXT NOT NULL,
	"valor"	REAL NOT NULL CHECK("valor" >= 0),
	"idCliente"	INTEGER DEFAULT 999999999,
	"idLoja"	INTEGER,
	CONSTRAINT "fkey_compra_loja" FOREIGN KEY("idLoja") REFERENCES "Loja"("idLoja") ON DELETE CASCADE ON UPDATE CASCADE,
	PRIMARY KEY("idCompra"),
	CONSTRAINT "fkey_compra_cliente" FOREIGN KEY("idCliente") REFERENCES "Pessoa"("idPessoa") ON DELETE SET DEFAULT ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "CompraJogo";
CREATE TABLE IF NOT EXISTS "CompraJogo" (
	"idCompra"	INTEGER,
	"idJogo"	INTEGER,
	PRIMARY KEY("idCompra","idJogo"),
	CONSTRAINT "fkey_comprajogo_jogo" FOREIGN KEY("idJogo") REFERENCES "Jogo"("idJogo") ON DELETE RESTRICT ON UPDATE CASCADE,
	CONSTRAINT "fkey_comprajogo_compra" FOREIGN KEY("idCompra") REFERENCES "Compra"("idCompra") ON DELETE RESTRICT ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "Cliente";
CREATE TABLE IF NOT EXISTS "Cliente" (
	"idPessoa"	INTEGER,
	"dataAdesao"	TEXT,
	PRIMARY KEY("idPessoa"),
	FOREIGN KEY("idPessoa") REFERENCES "Pessoa"("idPessoa") ON DELETE CASCADE ON UPDATE CASCADE
);
DROP TABLE IF EXISTS "Jogo";
CREATE TABLE IF NOT EXISTS "Jogo" (
	"idJogo"	INTEGER,
	"titulo"	TEXT NOT NULL,
	"dalaLancamento"	TEXT,
	"preco"	REAL CHECK("preco" >= 0),
	"genero"	REAL CHECK("genero" = 'ACAO' OR "genero" = 'FPS' OR "genero" = 'MULTIPLAYER' OR "genero" = 'TERROR' OR "genero" = 'RPG' OR "genero" = 'CORRIDAS' OR "genero" = 'ESTRATEGIA' OR "genero" = 'CASUAL' OR "genero" = 'ESPORT' OR "genero" = 'INDIE' OR "genero" = 'SIMULADOR'),
	"idioma"	TEXT,
	"rating"	REAL CHECK("rating" >= 0 AND "rating" <= 5),
	"critica"	TEXT,
	"editor"	INTEGER,
	PRIMARY KEY("idJogo"),
	CONSTRAINT "fkey_jogo_editor" FOREIGN KEY("editor") REFERENCES "Editor"("idEditor") ON DELETE CASCADE ON UPDATE CASCADE
);
COMMIT;
