
PRAGMA foreign_keys = on;
BEGIN TRANSACTION;

-- Table: Horario
INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        1,
                        'SEGUNDA-FEIRA',
                        '09:00',
                        '17:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        2,
                        'SEGUNDA-FEIRA',
                        '10:30',
                        '13:15'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        3,
                        'SEGUNDA-FEIRA',
                        '17:45',
                        '20:15'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        4,
                        'TERCA-FEIRA',
                        '09:15',
                        '19:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        5,
                        'QUARTA-FEIRA',
                        '14:00',
                        '16:15'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        6,
                        'QUINTA-FEIRA',
                        '07:30',
                        '11:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        7,
                        'QUINTA-FEIRA',
                        '12:30',
                        '18:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        8,
                        'SEXTA-FEIRA',
                        '08:00',
                        '17:00'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        9,
                        'SABADO',
                        '07:00',
                        '15:30'
                    );

INSERT INTO Horario (
                        idHorario,
                        diaSemana,
                        horaInicio,
                        horaFim
                    )
                    VALUES (
                        10,
                        'SABADO',
                        '16:00',
                        '17:30'
                    );

-- Table: Morada
INSERT INTO Morada (
                        idMorada,
                        rua,
                        codigoPostal,
                        cidade,
						pais
                    )
                    VALUES (
                        1,
                        'Rua Calouste Gulbenkian 169 ',
                        '4450',
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
                        2,
                        'Lisboa, Rua do Carmo 89',
                        '4450',
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
                        3,
                        'Praca da Erva 17',
                        '4450',
                        'Viana do Castelo',
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
                        4,
                        'Rua Calouste Gulbenkian 169',
                        '4450',
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
                        5,
                        'Avenida Primeiro de Maio, 271',
                        '4450',
                        'Valongo',
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
                        6,
                        'Rua do Ouro 19',
                        '2450',
                        'Lisboa',
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
                        7,
                        'Alameda do Cedro 189',
                        '3450',
                        'Vila Nova de Gaia',
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
                        8,
                        'Avenida Afonso Domingues 345',
                        '3450',
                        'Vila Nova de Gaia',
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
                        8,
                        'Avenida Afonso Domingues 345',
                        '3450',
                        'Vila Nova de Gaia',
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
                        9,
                        'Rua Julio Dinis 57',
                        '8450',
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
                        10,
                        'Avenida Fontes Pereira de Melo 189',
                        '2450',
                        'Lisboa',
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
                        11,
                        'Rua Calouste Gulbenkian 169',
                        '4450',
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
                        12,
                        'Avenida Fontes Pereira de Melo 190',
                        '2450',
                        'Lisboa',
						'Portugal'
                    );

--Table: Pessoa
INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone,
					   email
                   )
                   VALUES (
                       70653,
                       'Eduardo Carreira Ribeiro',
                       '2000-04-04',
                       1,
                       969533131,
					   'EduardoCarreiraRibeiro@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       74014,
                       'Maria do Carmo Andrade',
                       '1990-01-02',
                       2,
                       960067412,
					   'MariadoCarmoAndrade@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       74717,
                       'Bernardo Carvalho Ramos Pereira',
                       '1989-04-04',
                       3,
                       912742214,
					   'BernardoCarvalhoRamosPereira@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       76624,
                       'Luisa Moreira',
                       '1978-12-12',
                       4,
                       967530539,
					   'LuisaMoreira@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       77138,
                       'Leonor Reis Campos',
                       '1995-12-09',
                       5,
                       917297510,
					   'LeonorReisCampos@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       79184,
                       'Filipa Lemos da Silva',
                       '1991-05-28',
                       6,
                       961378190,
					   'FilipaLemosdaSilva@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       80872,
                       'Beatriz Mafalda Nazareth Almeida',
                       '1999-05-24',
                       7,
                       918371099,
					   'BeatrizMafaldaNazarethAlmeida@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       81238,
                       'Francisco Jose Paiva Goncalves',
                       '1999-10-14',
                       8,
                       912368192,
					   'FranciscoJosePaivaGoncalves@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       84719,
                       'Joana Filipa Costa',
                       '1989-07-27',
                       9,
                       962791600,
					   'JoanaFilipaCosta@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       86177,
                       'Maria Luisa Soares Silva',
                       '1992-11-19',
                       10,
                       963819341,
					   'MariaLuisaSoaresSilva@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       89121,
                       'Abilio Eduardo Soares Ribeiro',
                       '1967-04-10',
                       11,
                       917283013,
					   'AbilioEduardoSoaresRibeiro@gmail.com'
                   );

INSERT INTO Pessoa (
                       idPessoa,
                       nome,
                       dataNascimento,
                       morada,
                       telefone
                   )
                   VALUES (
                       89182,
                       'Mario Antunes Carvalhal',
                       '2000-01-02',
                       12,
                       912371900,
					   'MarioAntunesCarvalhal@gmail.com'
                   );

-- Table: Funcionario
INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            70653,
                            712.9,
                            '2019-01-23'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            74014,
                            1004.1,
                            '2008-05-23'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            74717,
                            891,
                            '2015-04-04'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            76624,
                            1202.3,
                            '2004-09-10'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            77138,
                            684.5,
                            '2015-07-20'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            79184,
                            819.7,
                            '2010-10-12'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            80872,
                            569.1,
                            '2018-06-09'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            81238,
                            580.6,
                            '2017-06-06'
                        );

INSERT INTO Funcionario (
                            idPessoa,
                            salario,
                            dataContratacao
                        )
                        VALUES (
                            84719,
                            972.2,
                            '2013-12-17'
                        );
-- Table: Loja
INSERT INTO Loja (
                     idLoja,
                     morada,
                     telefone,
                     idGerente,
					 email
                 )
                 VALUES (
                     71231,
                     'Porto, Avenida da Franca 189',
                     228561391,
                     70653,
					 'lojajogosgeral@gmail.com'
                 );

INSERT INTO Loja (
                     idLoja,
                     morada,
                     telefone,
                     idGerente,
					 email
                 )
                 VALUES (
                     71931,
                     'Lisboa, Rua do Carmo 71',
                     216491121,
                     74014,
					 'lojajogosgeral@gmail.com'
                 );

INSERT INTO Loja (
                     idLoja,
                     morada,
                     telefone,
                     idGerente,
					 email
                 )
                 VALUES (
                     75621,
                     'Lisboa, Rua da Prata 11',
                     217401766,
                     79184,
					 'lojajogosgeral@gmail.com'
                 );

INSERT INTO Loja (
                     idLoja,
                     morada,
                     telefone,
                     idGerente,
					 email
                 )
                 VALUES (
                     76423,
                     'Porto, Rua Faria Guimaraes 761',
                     225687147,
                     76624,
					 'lojajogosgeral@gmail.com'
                 );

INSERT INTO Loja (
                     idLoja,
                     morada,
                     telefone,
                     idGerente,
					 email
                 )
                 VALUES (
                     76452,
                     'Porto, Rua Julio Dinis 254',
                     224600163,
                     76624,
					 'lojajogosgeral@gmail.com'
                 );

INSERT INTO Loja (
                     idLoja,
                     morada,
                     telefone,
                     idGerente,
					 email
                 )
                 VALUES (
                     80121,
                     'Viana do Castelo, Praca da Erva 62',
                     258619146,
                     74717,
					 'lojajogosgeral@gmail.com'
                 );

-- Table: LojaFuncionario
INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                70653,
                                80121
                            );

INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                74014,
                                71931
                            );

INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                74717,
                                80121
                            );


INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                76624,
                                76423
                            );

INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                77138,
                                71231
                            );

INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                79184,
                                75621
                            );

INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                80872,
                                76423
                            );

INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                81238,
                                76452
                            );

INSERT INTO LojaFuncionario (
                                idFuncionario,
                                idLoja
                            )
                            VALUES (
                                84719,
                                80121
                            );
-- Table: Cliente

INSERT INTO Cliente (
                        idPessoa,
                        dataAdesao
                    )
                    VALUES (
                        86177,
                        '2017-12-02'
                    );

INSERT INTO Cliente (
                        idPessoa,
                        dataAdesao
                    )
                    VALUES (
                        89121,
                        '2010-01-23'
                    );

INSERT INTO Cliente (
                        idPessoa,
                        dataAdesao
                    )
                    VALUES (
                        89182,
                        '2004-06-29'
                    );


-- Table: ClientePremium
INSERT INTO ClientePremium (
                              idCliente,
                              dataAdesao
                          )
                          VALUES (
                              89182,
                              '2011-03-09'
                          );


-- Table: HorarioFunc
INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            70653,
                            1
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            84719,
                            4
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            74717,
                            4
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            74717,
                            7
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            70653,
                            9
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            77138,
                            9
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            77138,
                            8
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            77138,
                            1
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            74014,
                            5
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            74014,
                            3
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            74014,
                            2
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            76624,
                            1
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            79184,
                            7
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            79184,
                            4
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            79184,
                            1
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            80872,
                            7
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            80872,
                            4
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            76624,
                            10
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            81238,
                            9
                        );

INSERT INTO HorarioFunc (
                            idFuncionario,
                            idHorario
                        )
                        VALUES (
                            81238,
                            7
                        );

-- Table: HorarioLoja
INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71231,
                            9
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71231,
                            8
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71231,
                            4
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71931,
                            3
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71931,
                            2
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71231,
                            3
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71231,
                            1
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71931,
                            8
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71931,
                            6
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71931,
                            5
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            71931,
                            4
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            75621,
                            7
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            75621,
                            4
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            75621,
                            1
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            80121,
                            9
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            80121,
                            7
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            80121,
                            4
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            80121,
                            1
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76452,
                            9
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76452,
                            7
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76452,
                            4
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76452,
                            1
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76423,
                            10
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76423,
                            7
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76423,
                            4
                        );

INSERT INTO HorarioLoja (
                            idLoja,
                            idHorario
                        )
                        VALUES (
                            76423,
                            1
                        );
						
-- Table: Editor
INSERT INTO Editor (
                        idEditor,
                        nome,
                        idade
                    )
                    VALUES (
                        1,
                        'EA-Dlc',
						30
                    );

INSERT INTO Editor (
                        idEditor,
                        nome,
                        idade
                    )
                    VALUES (
                        2,
                        'BUbisoft',
                        3
                    );
					
INSERT INTO Editor (
                        idEditor,
                        nome,
                        idade
                    )
                    VALUES (
                        3,
                        'MediaTothic',
                        5
                    );

INSERT INTO Editor (
                        idEditor,
                        nome,
                        idade
                    )
                    VALUES (
                        4,
                        'CD Projeckt Blue',
                        19
                    );

-- Table: Jogo
INSERT INTO Jogo (
                      idJogo,
                      titulo,
					  dataLancamento,
					  preco,
                      genero,
                      idioma,
                      rating,
                      critica,
					  editor,
					  idadeMinima
                  )
                  VALUES (
                      1,
					  'Fall Boys',
					  '2019-04-09',
					  19,
					  MULTIPLAYER,
					  ingles,
					  4,
					  'Very nice'
					  3,
					  0
                  );

INSERT INTO Jogo (
                      idJogo,
                      titulo,
					  dataLancamento,
					  preco,
                      genero,
                      idioma,
                      rating,
                      critica,
					  editor,
					  idadeMinima
                  )
                  VALUES (
                      2,
					  'Dokidoki artclub',
					  '2012-12-09',
					  19,
					  'HORROR',
					  INGLES,
					  3,
					  'è muito fun, gostei, vou jogar cs'
					  2,
					  0
                  );
				  
INSERT INTO Jogo (
                      idJogo,
                      titulo,
					  dataLancamento,
					  preco,
                      genero,
                      idioma,
                      rating,
                      critica,
					  editor,
					  idadeMinima
                  )
                  VALUES (
                      3,
					  'League of Legendas',
					  '2012-12-09',
					  19,
					  'COOPERATIVO',
					  ESPANHOL,
					  1,
					  'legendar é seca'
					  1,
					  0
                  );
				  
-- Table: Compra
INSERT INTO Compra (
                        idCompra,
                        dataCompra,
                        valor,
                        loja,
                        Cliente,
                        dataLimite
                    )
                    VALUES (
                        113,
                        '2018-12-10',
                        4.1,
                        76452,
                        89121
                    );


INSERT INTO Compra (
                        idCompra,
                        dataCompra,
                        valor,
                        loja,
                        idCliente
                    )
                    VALUES (
                        157,
                        '2018-01-29',
                        5.2,
                        80121,
                        89182
                    );

INSERT INTO Compra (
                        idCompra,
                        dataCompra,
                        valor,
                        loja,
                        idCliente
                    )
                    VALUES (
                        187,
                        '2019-04-23',
                        8.5,
                        71931,
                        86177
                    );				  

-- Table: CompraJogo
INSERT INTO CompraJogo (
                        idCompra,
                        idJogo
                    )
                    VALUES (
						113,
						1
                    );

INSERT INTO CompraJogo (
                        idCompra,
                        idJogo
                    )
                    VALUES (
						157,
						2
                    );
					
INSERT INTO CompraJogo (
                        idCompra,
                        idJogo
                    )
                    VALUES (
						187,
						3
                    );

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;