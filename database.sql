CREATE DATABASE projetoQuiz;
USE projetoQuiz;

CREATE TABLE Usuario(
id INT AUTO_INCREMENT PRIMARY KEY,
login VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE,
senha VARCHAR(100) NOT NULL,
pontuacao INT DEFAULT 0
);

CREATE TABLE Curso(
id INT AUTO_INCREMENT PRIMARY KEY,
curso VARCHAR(100) NOT NULL,
sigla VARCHAR(10)
);

CREATE TABLE Disciplina(
id INT AUTO_INCREMENT PRIMARY KEY,
disciplina VARCHAR(100) NOT NULL,
idCurso INT,
sigla VARCHAR(10),
FOREIGN KEY (idCurso) REFERENCES Curso(id)
ON UPDATE CASCADE
ON DELETE SET NULL
);



CREATE TABLE Questoes(
id INT AUTO_INCREMENT PRIMARY KEY,
enunciado VARCHAR(255) NOT NULL,
pontuacao INT,
idDisciplina INT,
FOREIGN KEY (idDisciplina) REFERENCES Disciplina(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

CREATE TABLE Quiz(
id INT AUTO_INCREMENT PRIMARY KEY,
data_quiz DATE NOT NULL,
idCurso INT,
idDisciplina INT,
idUsuario INT,
idQuestao01 INT,
idQuestao02 INT,
idQuestao03 INT,
idQuestao04 INT,
idQuestao05 INT,
pontuacao int default 0,
FOREIGN KEY (idCurso) REFERENCES Curso(id)
ON UPDATE CASCADE
ON DELETE SET NULL,
FOREIGN KEY (idDisciplina) REFERENCES Disciplina(id)
ON UPDATE CASCADE
ON DELETE SET NULL,
FOREIGN KEY (idQuestao01) REFERENCES Questoes(id)
ON UPDATE CASCADE
ON DELETE SET NULL,
FOREIGN KEY (idQuestao02) REFERENCES Questoes(id)
ON UPDATE CASCADE
ON DELETE SET NULL,
FOREIGN KEY (idQuestao03) REFERENCES Questoes(id)
ON UPDATE CASCADE
ON DELETE SET NULL,
FOREIGN KEY (idQuestao04) REFERENCES Questoes(id)
ON UPDATE CASCADE
ON DELETE SET NULL,
FOREIGN KEY (idQuestao05) REFERENCES Questoes(id)
ON UPDATE CASCADE
ON DELETE SET NULL
);

CREATE TABLE Alternativa(
id INT AUTO_INCREMENT PRIMARY KEY,
idQuestao INT,
enunciado VARCHAR(255) NOT NULL,
correta TINYINT(1) DEFAULT 0,
FOREIGN KEY (idQuestao) REFERENCES Questoes(id)
ON UPDATE CASCADE
ON DELETE CASCADE
);

################# CURSO ##########################################
DELIMITER //
CREATE PROCEDURE InsertCurso(
IN xCurso VARCHAR(100), 
IN xSigla VARCHAR(10))
BEGIN
INSERT INTO Curso (Curso, sigla)  VALUES (xCurso, xSigla);
END//

CREATE PROCEDURE UpdateCurso(
IN pId INT, 
IN xCurso VARCHAR(100),
IN xSigla VARCHAR(10))
BEGIN
UPDATE Curso SET Curso = xCurso, sigla = xSigla WHERE ID = pId;
END//

CREATE PROCEDURE DeleteCurso(
IN pId INT)
BEGIN
DELETE FROM Curso WHERE id = pId;
END//

CREATE PROCEDURE SelectCurso()
BEGIN
SELECT * FROM Curso;
END//

DELIMITER ;

################# USUÁRIO ################################
DELIMITER //
CREATE PROCEDURE InsertUsuario(
IN xLogin VARCHAR(100), 
IN xEmail VARCHAR(100), 
IN xSenha VARCHAR(100))
BEGIN
INSERT INTO Usuario (login, email, senha) VALUES (xLogin, xEmail, xSenha);
END //

CREATE PROCEDURE UpdateUsuario(
IN pId INT, 
IN xLogin VARCHAR(100),
IN xEmail VARCHAR(100),
IN xSenha VARCHAR(100),
IN xPontuacao INT)
BEGIN
UPDATE Usuario SET login = xLogin, email = xEmail, senha = xSenha, pontuacao = xPontuacao WHERE id = pId;
END //

CREATE PROCEDURE DeleteUsuario(IN pId INT)
BEGIN
DELETE FROM Usuario WHERE id = pId;
END //

CREATE PROCEDURE SelectUsuario()
BEGIN
SELECT * FROM Usuario;
END //
DELIMITER ;


############# ALTERNATIVA ######################################
DELIMITER //
CREATE PROCEDURE InsertAlternativa(
IN xIdQuestao INT, 
IN xEnunciado VARCHAR(255), 
IN xCorreta TINYINT(1))
BEGIN
INSERT INTO Alternativa ( idQuestao, enunciado, correta) VALUES (xIdQuestao, xEnunciado, xCorreta);
END //

CREATE PROCEDURE UpdateAlternativa(
IN pId INT,
IN xidQuestao INT,
IN xEnunciado VARCHAR(255),
IN xCorreta TINYINT(1))
BEGIN
UPDATE Alternativa SET idQuestao = xidQuestao, enunciado = xEnunciado, correta = xCorreta WHERE id = pId;
END //

CREATE PROCEDURE DeleteAlternativa(IN pID INT)
BEGIN
DELETE FROM Alternativa Where id = pId;
END //

CREATE PROCEDURE SelectAlternativa()
BEGIN
SELECT * FROM Alternativa;
END //
DELIMITER ;

############### DISCIPLINA #####################
DELIMITER //
CREATE PROCEDURE InsertDisciplina(
IN xDisciplina VARCHAR(100),
IN xIdCurso INT,
IN xSigla VARCHAR(10)
)
BEGIN
INSERT INTO Disciplina (disciplina, idCurso, sigla) VALUES (xDisciplina, xIdCurso, xSigla);
END //

CREATE PROCEDURE UpdateDisciplina(
IN pId INT, 
IN xDisciplina VARCHAR(100),
IN xIdCurso INT,
IN xSigla VARCHAR(10))
BEGIN
UPDATE Disciplina SET Disciplina = xDisciplina, idCurso = xIdCurso, sigla = xSigla where id =pId;
END //

CREATE PROCEDURE DeleteDisciplina(
IN pId INT)
BEGIN
DELETE FROM Disciplina WHERE id = pId;
END //

CREATE PROCEDURE SelectDisciplina()
BEGIN
SELECT * FROM Disciplina;
END //

DELIMITER ;

###################### QUESTÕES #######################
DELIMITER //
CREATE PROCEDURE InsertQuestoes(
IN xEnunciado VARCHAR(255),
IN xPontuacao INT,
IN xIdDisciplina INT)
BEGIN
INSERT INTO Questoes (enunciado, pontuacao, idDisciplina) VALUES (xEnunciado, xPontuacao, xIdDisciplina);
END //

 CREATE PROCEDURE UpdateQuestoes(
 IN pId INT,
 IN xEnunciado VARCHAR(255),
 IN xPontuacao INT,
 IN xIdDisciplina INT)
BEGIN
UPDATE Questoes SET enunciado = xEnunciado, pontuacao = xPontuacao, idDisciplina = xIdDisciplina WHERE id = pId;
END //

CREATE PROCEDURE DeleteQuestoes(IN pId INT)
BEGIN
DELETE FROM Questoes WHERE id = pId;
END //

CREATE PROCEDURE SelectQuestoes()
BEGIN
SELECT * FROM Questoes;
END //
DELIMITER ;

######################## QUIZ #####################################
DELIMITER //
CREATE PROCEDURE InsertQUiz(
IN xData_quiz DATE,
IN xIdCurso INT,
IN xIdDisciplina INT,
IN xIdUsuario INT,
IN xIdQuestao01 INT,
IN xIdQuestao02 INT,
IN xIdQuestao03 INT,
IN xIdQuestao04 INT,
IN xIdQuestao05 INT,
IN xPontuacao INT
)
BEGIN
INSERT INTO Quiz (data_quiz, idCurso, idDisciplina, idUsuario, idQuestao01,
idQuestao02, idQuestao03, idQuestao04, idQuestao05, pontuacao) VALUES (
xData_quiz, xIdCurso, xIdDisciplina, xIdUsuario, xIdQuestao01, xIdQuestao02, xIdQuestao03,
xIdQuestao04, xIdQuestao05, xPontuacao);
END //

CREATE PROCEDURE UpdateQuiz (
IN pId INT,IN xData_quiz DATE,IN xIdCurso INT,IN xIdDisciplina INT,IN xIdUsuario INT, 
IN xIdQuestao01 INT,IN xIdQuestao02 INT,IN xIdQuestao03 INT,
IN xIdQuestao04 INT,IN xIdQuestao05 INT,IN xPontuacao INT)
BEGIN
UPDATE Quiz SET data_quiz = xData_quiz, idCurso = xIdCurso, idDisciplina = xIdDisciplina, 
idUsuario = xIdUsuario, idQuestao01 = xIdQuestao01, idQuestao02 = xIdQuestao02,
idQuestao03 = xIdQuestao03, idQuestao04 = xIdQuestao04, idQuestao05 = xIdQuestao05,
pontuacao = xPontuacao WHERE id = pId;
END //

CREATE PROCEDURE DeleteQuiz (IN pId INT)
BEGIN
DELETE FROM Quiz WHERE id = pId;
END //

CREATE PROCEDURE SelectQuiz()
BEGIN
SELECT * FROM Quiz;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE Escolher_Disciplina_por_Curso(IN xIdCurso INT)
BEGIN
SELECT * FROM Disciplina WHERE idCurso = xIdCurso;
END //

CREATE PROCEDURE Escolher_uma_Alternativa_Questao(IN xIdQuestao INT)
BEGIN
SELECT * FROM Alternativa WHERE idQuestao = xIdQuestao;
END //

CREATE PROCEDURE Escolher_cinco_questoes_Aleatoria_Disciplina(IN xIdDisciplina INT)
BEGIN
SELECT * FROM Questoes WHERE idDisciplina = xIdDisciplina
ORDER BY RAND()
LIMIT 5;
END //

CREATE PROCEDURE Escolher_Quizes_de_Usuario(IN xIdUsuario INT)
BEGIN
SELECT * FROM Quiz WHERE idUsuario = xIdUsuario;
END //

CREATE PROCEDURE Escolher_Usuario_ordenados_por_pontos()
BEGIN
SELECT login, pontuacao
FROM Usuario
ORDER BY pontuacao DESC;
END //

CREATE PROCEDURE Verificar_Se_Login_Existe_e_Senha_Bate(IN xLogin VARCHAR(100))
BEGIN
SELECT * FROM Usuario
WHERE login = xLogin;
END //
DELIMITER ;


DELIMITER //
CREATE PROCEDURE Verificar_Login_Existente(IN xLogin VARCHAR(100))
BEGIN
SELECT COUNT(*) AS existe
FROM Usuario
WHERE login = xLogin;
END // 
DELIMITER ;

DELIMITER //
CREATE PROCEDURE AtualizarPontuacaoUsuario(IN xIdUsuario INT)
BEGIN
DECLARE total INT;
SELECT IFNULL(SUM(pontuacao), 0)
INTO total
FROM Quiz
WHERE idUsuario = xIdUsuario;

UPDATE Usuario
SET pontuacao = total
WHERE id = xIdUsuario;
END //
DELIMITER ;

DELIMITER //
CREATE TRIGGER AtualizaPontuacao AFTER INSERT ON Quiz
FOR EACH ROW
BEGIN
  CALL AtualizarPontuacaoUsuario(NEW.idUsuario);
END //
DELIMITER ;


DELIMITER //

CREATE PROCEDURE RankingUsuarios()
BEGIN
    SELECT 
        ROW_NUMBER() OVER (ORDER BY pontuacao DESC) AS posicao,
        login,
        pontuacao
    FROM Usuario
    ORDER BY pontuacao DESC;
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE RankingUsuariosComInsignia()
BEGIN
    SELECT 
        ROW_NUMBER() OVER (ORDER BY pontuacao DESC) AS posicao,
        login,
        pontuacao,
        CASE
            WHEN ROW_NUMBER() OVER (ORDER BY pontuacao DESC) = 1 THEN 'Ouro'
            WHEN ROW_NUMBER() OVER (ORDER BY pontuacao DESC) = 2 THEN 'Prata'
            WHEN ROW_NUMBER() OVER (ORDER BY pontuacao DESC) = 3 THEN 'Bronze'
            ELSE NULL
        END AS insignia
    FROM Usuario
    ORDER BY pontuacao DESC;
END //
DELIMITER ;

INSERT INTO Curso (curso, sigla) VALUES ('Desenvolvimento de Sistemas', 'DS');
INSERT INTO Disciplina( disciplina, idCurso, sigla) VALUES 
('Análise e Projeto de Sistemas', 1, 'APS'),
('Banco de Dados', 1, 'BD'),
('Desenvolvimento de Sistemas', 1, 'DS'),
('Programação de Aplicativos Mobile', 1, 'PAM'),
('Programação Web', 1, 'PW');

