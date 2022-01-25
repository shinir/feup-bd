--
-- File generated with SQLiteStudio v3.3.3 on dom dez 12 23:51:08 2021
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Cliente
DROP TABLE IF EXISTS Cliente;

CREATE TABLE Cliente (
    idPessoa   INTEGER PRIMARY KEY
                       REFERENCES Pessoa (idPessoa),
    dataAdesao DATE    NOT NULL
);


-- Table: ClientePremium
DROP TABLE IF EXISTS ClientePremium;

CREATE TABLE ClientePremium (
    idCliente  INTEGER PRIMARY KEY
                       REFERENCES Cliente (idPessoa) ON DELETE CASCADE
                                                     ON UPDATE CASCADE,
    dataAdesao DATE    NOT NULL
);


-- Table: Compra
DROP TABLE IF EXISTS Compra;

CREATE TABLE Compra (
    idCompra   INTEGER PRIMARY KEY,
    dataCompra DATE    NOT NULL,
    valor      FLOAT    NOT NULL
                       CHECK (valor >= 0),
    idCliente  INTEGER REFERENCES Cliente (idPessoa) ON DELETE SET DEFAULT
                                                     ON UPDATE CASCADE
                       DEFAULT (999999999),
    loja       INTEGER REFERENCES Loja (idLoja) ON DELETE CASCADE
                                                ON UPDATE CASCADE
);


-- Table: CompraJogo
DROP TABLE IF EXISTS CompraJogo;

CREATE TABLE CompraJogo (
    idCompra INTEGER REFERENCES Compra (idCompra) ON DELETE CASCADE
                                                  ON UPDATE CASCADE,
    idJogo   INTEGER REFERENCES Jogo (idJogo) ON DELETE CASCADE
                                              ON UPDATE CASCADE,
    PRIMARY KEY (
        idCompra,
        idJogo
    )
);


-- Table: Editor
DROP TABLE IF EXISTS Editor;

CREATE TABLE Editor (
    idEditor INTEGER PRIMARY KEY,
    nome     TEXT  NOT NULL,
    idade    INTEGER
);


-- Table: Funcionario
DROP TABLE IF EXISTS Funcionario;

CREATE TABLE Funcionario (
    idPessoa        INTEGER PRIMARY KEY
                            REFERENCES Pessoa (idPessoa) ON DELETE CASCADE
                                                         ON UPDATE CASCADE,
    ordenado        FLOAT    NOT NULL,
    dataContratacao DATE
);


-- Table: Horario
DROP TABLE IF EXISTS Horario;

CREATE TABLE Horario (
    idHorario   INTEGER PRIMARY KEY,
    diaSemana   TEXT  NOT NULL
                        CHECK ( (diaSemana = "SEGUNDA-FEIRA" OR 
                                 diaSemana = "TERCA-FEIRA" OR 
                                 diaSemana = "QUARTA-FEIRA" OR 
                                 diaSemana = "QUINTA-FEIRA" OR 
                                 diaSemana = "SEXTA-FEIRA" OR 
                                 diaSemana = "SABADO" OR 
                                 diaSemana = "DOMINGO") ),
    horaInicial TIME    NOT NULL
                        CHECK (horaInicial < horaFinal),
    horaFinal   TIME    NOT NULL
);

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicial,
                        horaFinal
                    )
                    VALUES (
                        2,
                        'SEGUNDA-FEIRA',
                        '12:00',
                        '17:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicial,
                        horaFinal
                    )
                    VALUES (
                        3,
                        'TERCA-FEIRA',
                        '09:00',
                        '17:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicial,
                        horaFinal
                    )
                    VALUES (
                        4,
                        'QUARTA-FEIRA',
                        '09:00',
                        '13:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicial,
                        horaFinal
                    )
                    VALUES (
                        5,
                        'QUINTA-FEIRA',
                        '09:00',
                        '17:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicial,
                        horaFinal
                    )
                    VALUES (
                        6,
                        'SEXTA-FEIRA',
                        '09:00',
                        '17:00'
                    );


-- Table: HorarioFuncionario
DROP TABLE IF EXISTS HorarioFuncionario;

CREATE TABLE HorarioFuncionario (
    idHorario     INTEGER CONSTRAINT fkey_horariofunc_idfuncionario REFERENCES Horario (idHorario) ON DELETE CASCADE
                                                                                                   ON UPDATE CASCADE,
    idFuncionario INTEGER CONSTRAINT fkey_horariofunc_idfuncionario REFERENCES Funcionario (idPessoa) ON DELETE CASCADE
                                                                                                      ON UPDATE CASCADE,
    PRIMARY KEY (
        idHorario,
        idFuncionario
    )
);


-- Table: HorarioLoja
DROP TABLE IF EXISTS HorarioLoja;

CREATE TABLE HorarioLoja (
    idLoja    INTEGER REFERENCES Loja (idLoja) ON DELETE CASCADE
                                               ON UPDATE CASCADE,
    idHorario INTEGER REFERENCES Horario (idHorario) ON DELETE CASCADE
                                                     ON UPDATE CASCADE,
    PRIMARY KEY (
        idLoja,
        idHorario
    )
);


-- Table: Jogo
DROP TABLE IF EXISTS Jogo;

CREATE TABLE Jogo (
    idJogo         INTEGER PRIMARY KEY,
    titulo         TEXT  NOT NULL,
    dataLancamento DATE,
    preco          FLOAT    CHECK (preco >= 0) 
                           NOT NULL,
    genero         TEXT  CHECK (genero = 'ACAO' OR 
                                  genero = 'FPS' OR 
                                  genero = 'MULTIPLAYER' OR 
                                  genero = 'TERROR' OR 
                                  genero = 'RPG' OR 
                                  genero = 'CORIDAS' OR 
                                  genero = 'ESTRATEGIA' OR 
                                  genero = 'CASUAL' OR 
                                  genero = 'ESPORT' OR 
                                  genero = 'INDIE' OR 
                                  genero = 'SIMULADOR'),
    idioma         TEXT,
    rating         FLOAT    CHECK (rating >= 0 AND 
                                  rating <= 5),
    critica        TEXT,
    editor         INTEGER REFERENCES Editor (idEditor) ON DELETE CASCADE
                                                        ON UPDATE CASCADE,
    idadeMinima    INTEGER CHECK (idadeMinima >= 0) 
                           DEFAULT (0) 
);


-- Table: Loja
DROP TABLE IF EXISTS Loja;

CREATE TABLE Loja (
    idLoja    INTEGER PRIMARY KEY,
    nome      TEXT  UNIQUE
                      NOT NULL,
    telefone  INTEGER NOT NULL
                      UNIQUE,
    email     TEXT  NOT NULL,
    idGerente INTEGER UNIQUE
                      NOT NULL
                      REFERENCES Funcionario (idPessoa) ON DELETE CASCADE
                                                        ON UPDATE CASCADE,
    morada    INTEGER REFERENCES Morada (idMorada) ON DELETE CASCADE
                                                   ON UPDATE CASCADE
                      NOT NULL
);


-- Table: LojaFuncionario
DROP TABLE IF EXISTS LojaFuncionario;

CREATE TABLE LojaFuncionario (
    idFuncionario INTEGER PRIMARY KEY
                          REFERENCES Funcionario (idPessoa) ON DELETE CASCADE
                                                            ON UPDATE CASCADE,
    idLoja        INTEGER REFERENCES Loja (idLoja) ON DELETE CASCADE
                                                   ON UPDATE CASCADE
                          NOT NULL
);


-- Table: Morada
DROP TABLE IF EXISTS Morada;

CREATE TABLE Morada (
    idMorada     INTEGER PRIMARY KEY,
    rua          TEXT  NOT NULL,
    codigoPostal INTEGER NOT NULL,
    cidade       TEXT,
    pais         TEXT
);

INSERT INTO Morada (
                       idMorada,
                       rua,
                       codigoPostal,
                       cidade,
                       pais
                   )
                   VALUES (
                       70653,
                       'Rua Calouste Gulbenkian 169',
                       4450,
                       'Porto',
                       'Portugal'
                   );

INSERT INTO Morada (
                       idMorada,
                       rua,
                       codigoPostal,
                       cidade,
                       pais
                   )
                   VALUES (
                       74014,
                       'Rua do Carmo 89',
                       4450,
                       'Porto',
                       'Portugal'
                   );


-- Table: Pessoa
DROP TABLE IF EXISTS Pessoa;

CREATE TABLE Pessoa (
    idPessoa       INTEGER PRIMARY KEY,
    nome           TEXT  NOT NULL,
    dataNascimento DATE    NOT NULL,
    email          TEXT,
    telefone       INTEGER NOT NULL,
    morada         INTEGER REFERENCES Morada (idMorada) ON DELETE CASCADE
                                                        ON UPDATE CASCADE
                           NOT NULL
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
