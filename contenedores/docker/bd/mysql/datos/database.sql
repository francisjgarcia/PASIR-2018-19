CREATE TABLE IF NOT EXISTS alumnos (
	Id_alumno INT(5),
	Nombre CHAR(25),
	Edad INT(2),
	PRIMARY KEY (Id_alumno)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS modulos (
	Id_modulo INT(5),
	Nombre CHAR(25),
	PRIMARY KEY (Id_modulo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS notas (
	Id_notas INT(5),
	Id_alumno INT(5),
	Id_modulo INT(5),
	Nota INT(2),
	PRIMARY KEY (Id_notas)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO alumnos VALUES (1,'Francis',24);
INSERT INTO alumnos VALUES (2,'Manolo',18);
INSERT INTO alumnos VALUES (3,'Ana',26);
INSERT INTO alumnos VALUES (4,'Pepe',21);
INSERT INTO alumnos VALUES (5,'María',35);

INSERT INTO modulos VALUES (1,'SRI');
INSERT INTO modulos VALUES (2,'ASGBD');
INSERT INTO modulos VALUES (3,'SAD');
INSERT INTO modulos VALUES (4,'ASO');
INSERT INTO modulos VALUES (5,'EINEM');

INSERT INTO notas VALUES (1,1,1,10);
INSERT INTO notas VALUES (2,1,2,7);
INSERT INTO notas VALUES (3,1,3,8);
INSERT INTO notas VALUES (4,1,4,10);
INSERT INTO notas VALUES (5,1,5,5);

INSERT INTO notas VALUES (6,2,1,7);
INSERT INTO notas VALUES (7,2,2,5);
INSERT INTO notas VALUES (8,2,3,3);
INSERT INTO notas VALUES (9,2,4,8);
INSERT INTO notas VALUES (10,2,5,7);

INSERT INTO notas VALUES (11,3,1,8);
INSERT INTO notas VALUES (12,3,2,3);
INSERT INTO notas VALUES (13,3,3,6);
INSERT INTO notas VALUES (14,3,4,1);
INSERT INTO notas VALUES (15,3,5,4);

INSERT INTO notas VALUES (16,4,1,4);
INSERT INTO notas VALUES (17,4,2,9);
INSERT INTO notas VALUES (18,4,3,7);
INSERT INTO notas VALUES (19,4,4,5);
INSERT INTO notas VALUES (20,4,5,5);

INSERT INTO notas VALUES (21,5,1,10);
INSERT INTO notas VALUES (22,5,2,10);
INSERT INTO notas VALUES (23,5,3,8);
INSERT INTO notas VALUES (24,5,4,9);
INSERT INTO notas VALUES (25,5,5,8);