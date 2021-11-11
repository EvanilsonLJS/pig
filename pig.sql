#DDL
use pig;
CREATE table Supervisor(
					Cpf VARCHAR(20) NOT NULL,
					Nome VARCHAR(20) NOT NULL,
					CodSupervisor VARCHAR(20) NOT NULL,
					PRIMARY KEY(CodSupervisor));
				
CREATE table Incubação(
					CodPrograma VARCHAR(20) NOT NULL,
					PRIMARY KEY(CodPrograma));

CREATE table Startup(
				Equipe VARCHAR(20) NOT NULL,
				Nome VARCHAR(20) NOT NULL,
				Area  VARCHAR(20) NOT NULL,
				CodStartup VARCHAR(20) NOT NULL,
				PRIMARY KEY(CodStartup));
			
				
CREATE table Avaliação(
				Programa VARCHAR(20) NOT NULL,
				CodAvaliação VARCHAR(20) NOT NULL,
				PRIMARY KEY(CodAvaliação));
			
CREATE table StartupAvaliação(
				CodAvaliação VARCHAR(20) NOT NULL,
				CodStartup VARCHAR(20) NOT NULL,
				FOREIGN KEY(CodAvaliação)
				REFERENCES Avaliação(CodAvaliação),
				FOREIGN KEY(CodStartup)
				REFERENCES Startup(CodStartup));
			

CREATE table Capital(
				Indicador1 INT NOT NULL,
				Indicador2 INT NOT NULL,
				Indicador3 INT NOT NULL,
				Indicador4 INT NOT NULL,
				Indicador5 INT NOT NULL,
				Indicador6 INT NOT NULL,
				Indicador7 INT NOT NULL);

CREATE table Gestão(
				Indicador1 INT NOT NULL,
				Indicador2 INT NOT NULL,
				Indicador3 INT NOT NULL,
				Indicador4 INT NOT NULL,
				Indicador5 INT NOT NULL,
				Indicador6 INT NOT NULL,
				Indicador7 INT NOT NULL);

CREATE table Solução(
				Indicador1 INT NOT NULL,
				Indicador2 INT NOT NULL,
				Indicador3 INT NOT NULL,
				Indicador4 INT NOT NULL,
				Indicador5 INT NOT NULL,
				Indicador6 INT NOT NULL,
				Indicador7 INT NOT NULL);

CREATE table Mercado(
				Indicador1 INT NOT NULL,
				Indicador2 INT NOT NULL,
				Indicador3 INT NOT NULL,
				Indicador4 INT NOT NULL,
				Indicador5 INT NOT NULL,
				Indicador6 INT NOT NULL,
				Indicador7 INT NOT NULL);

CREATE table Tecnologia(
				Indicador1 INT NOT NULL,
				Indicador2 INT NOT NULL,
				Indicador3 INT NOT NULL,
				Indicador4 INT NOT NULL,
				Indicador5 INT NOT NULL,
				Indicador6 INT NOT NULL,
				Indicador7 INT NOT NULL);

CREATE table Empreendedor(
				Indicador1 INT NOT NULL,
				Indicador2 INT NOT NULL,
				Indicador3 INT NOT NULL,
				Indicador4 INT NOT NULL,
				Indicador5 INT NOT NULL,
				Indicador6 INT NOT NULL,
				Indicador7 INT NOT NULL);

#DML
INSERT INTO Avaliação (programa, CodAvaliação) 
values 
		('01', '000001');
		('01', '000002');
 		('02', '000003');
		('02', '000004');
		('03', '000005');

INSERT INTO Startup (Equipe, Nome, Area, CodStartup)
values
		('Pig','Pedro','Saude', '0001'),
		('Cannect','Eduardo','Saude','0005'),
		('CIA', 'Lucas', 'Tecnologia','0008');

INSERT INTO Supervisor (Cpf, Nome, CodSupervisor) 
values 
		('123456789-10', 'Fulano', '2021101'),
		('012345678-09', 'Cicrano', '2021202');

INSERT INTO Incubação (CodPrograma) 
values 
		('INC202102'),
		('INC202103');

INSERT INTO Capital(Indicador1,Indicador2,Indicador3,Indicador4,Indicador5,Indicador6,Indicador7)
values
		(0,1,2,3,4,5,6),
		(6,5,4,3,2,1,0),
		(4,5,6,1,2,3,0);
	
INSERT INTO Empreendedor (Indicador1,Indicador2,Indicador3,Indicador4,Indicador5,Indicador6,Indicador7)
values
		(0,1,2,3,4,5,6),
		(6,5,4,3,2,1,0),
		(4,5,6,1,2,3,0);

INSERT INTO Gestão (Indicador1,Indicador2,Indicador3,Indicador4,Indicador5,Indicador6,Indicador7)
values
		(0,1,2,3,4,5,6),
		(6,5,4,3,2,1,0),
		(4,5,6,1,2,3,0);
	
INSERT INTO Mercado (Indicador1,Indicador2,Indicador3,Indicador4,Indicador5,Indicador6,Indicador7)
values
		(0,1,2,3,4,5,6),
		(6,5,4,3,2,1,0),
		(4,5,6,1,2,3,0);
	
INSERT INTO Solução (Indicador1,Indicador2,Indicador3,Indicador4,Indicador5,Indicador6,Indicador7)
values
		(0,1,2,3,4,5,6),
		(6,5,4,3,2,1,0),
		(4,5,6,1,2,3,0);

INSERT INTO Tecnologia (Indicador1,Indicador2,Indicador3,Indicador4,Indicador5,Indicador6,Indicador7)
values
		(0,1,2,3,4,5,6),
		(6,5,4,3,2,1,0),
		(4,5,6,1,2,3,0);
	

# Consulta simples
SELECT Equipe FROM Startup WHERE (Equipe = 'Cannect');

SELECT Nome FROM Startup WHERE (Equipe = 'Cannect');

SELECT * FROM Gestão WHERE (Indicador1 >= 4);

# Order By
SELECT * FROM Capital ORDER BY Indicador1 ASC;
SELECT * FROM Capital ORDER BY Indicador1 DESC;

# Seleção com função de agregação Group By

SELECT Programa, MAX(CodAvaliação)FROM Avaliação GROUP BY Programa;
SELECT Programa, MIN(CodAvaliação)FROM Avaliação GROUP BY Programa;

SELECT Programa, COUNT(*) FROM Avaliação GROUP BY Programa  HAVING COUNT(*) > 1; 


