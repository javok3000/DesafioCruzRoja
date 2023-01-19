DROP DATABASE dbTest;
    CREATE DATABASE dbTest;
    USE dbTest;
      CREATE TABLE users(
        user_id INT AUTO_INCREMENT,
        user_name VARCHAR(50),
        usersurname VARCHAR(50),
        email VARCHAR(50) UNIQUE,
        password CHAR(64) NOT NULL,
        year_birth INT,
        gender VARCHAR(15),
        mother_tongue VARCHAR(50),
        years_in VARCHAR(50),
        studies VARCHAR(50),
        working VARCHAR(50),
        support_type VARCHAR(50),
        expert BOOLEAN,
        area VARCHAR(50),
        about_me VARCHAR(250),
        created_at datetime DEFAULT NULL COMMENT 'created time',
        updated_at datetime DEFAULT NULL COMMENT 'updated time',
        country VARCHAR(30),
        pic VARCHAR(50),
        PRIMARY KEY(user_id)
    );


    CREATE TABLE  IF NOT EXISTS channels(
        id INT AUTO_INCREMENT,
        user_id_sender INT,
    pic_sender VARCHAR(50),
        user_name_sender  VARCHAR(50),
        user_id_recipient INT,
        pic_recipient VARCHAR(50),
        user_name_recipient  VARCHAR(50),
        state VARCHAR(10),
        createdat datetime DEFAULT NULL COMMENT 'created time',
    updatedat datetime DEFAULT NULL COMMENT 'updated time',
        PRIMARY KEY(id)
    );

    CREATE TABLE messages(
        id INT AUTO_INCREMENT,
        fk_user_id_sender INT,
        fk_user_id_recipient INT,
        fk_channel_id INT,
    #title VARCHAR(50),
        message VARCHAR(250),
        createdat datetime DEFAULT NULL COMMENT 'created time',
    updatedat datetime DEFAULT NULL COMMENT 'updated time',
        PRIMARY KEY(id),
        FOREIGN KEY (fk_channel_id) REFERENCES channels(id)
    );

    CREATE TABLE  IF NOT EXISTS reviews(
        id INT AUTO_INCREMENT,
        fk_user_id_sender INT,
        fk_user_id_recipient INT,
        review VARCHAR(250),
        stars INT,
         created_at datetime DEFAULT NULL COMMENT 'created time',
    updated_at datetime DEFAULT NULL COMMENT 'updated time',
        PRIMARY KEY(id),
    FOREIGN KEY (fk_user_id_sender) REFERENCES users(user_id),
        FOREIGN KEY (fk_user_id_recipient) REFERENCES users(user_id)
    );

     CREATE TABLE  IF NOT EXISTS favs(
        id INT AUTO_INCREMENT,
        fk_user_id_sender INT,
        fk_user_id_recipient INT,
         created_at datetime DEFAULT NULL COMMENT 'created time',
    updated_at datetime DEFAULT NULL COMMENT 'updated time',
        PRIMARY KEY(id),
    FOREIGN KEY (fk_user_id_sender) REFERENCES users(user_id),
        FOREIGN KEY (fk_user_id_recipient) REFERENCES users(user_id)
    );

    CREATE TABLE  IF NOT EXISTS frequent_questions(
        id INT AUTO_INCREMENT,
        fk_user_id INT,
        question VARCHAR(200),
        created_at datetime DEFAULT NULL COMMENT 'created time',
    updated_at datetime DEFAULT NULL COMMENT 'updated time',
        PRIMARY KEY(id),
        FOREIGN KEY (fk_user_id) REFERENCES users(user_id)
    );

     CREATE TABLE  IF NOT EXISTS answers (
    id INT AUTO_INCREMENT,
    fk_user_id_user INT,
    fk_frequent_questions_id INT,
    answer VARCHAR(200),
     created_at datetime DEFAULT NULL COMMENT 'created time',
    updated_at datetime DEFAULT NULL COMMENT 'updated time',
    PRIMARY KEY (id),
    FOREIGN KEY (fk_frequent_questions_id)
    REFERENCES frequent_questions (id),
    FOREIGN KEY (fk_user_id_user)
    REFERENCES users (user_id)
    );
    insert into users VALUES (null, 'Gerardo', 'Mir', 'gerardo@gmail.com',  '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy Gerardo',"2021-01-12", "2021-01-12",'Spain','image2.jpg');

    insert into users VALUES (null, 'Jorge', 'Coronilla','jorge@gmail.com',  '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy Jorge',"2021-01-12", "2021-01-12",'Spain','image2.jpg');

    insert into users VALUES (null, 'Henalu', 'Paes', 'henalu@gmail.com', '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy Henalu',"2021-01-12", "2021-01-12",'Spain','image2.jpg');

    insert into users VALUES (null, 'Sergio', 'Ovejero',  'sergio@gmail.com',  '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy Sergio',"2021-01-12", "2021-01-12",'Spain','image2.jpg');

    insert into users VALUES (null, 'María', 'De la Verde',  'maria@gmail.com',  '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy María',"2021-01-12", "2021-01-12",'Spain','image3.jpg');

    insert into users VALUES (null, 'Lydia', 'Vega',  'lydia@gmail.com',  '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy Lydia',"2021-01-12", "2021-01-12",'Spain','image1.jpg');

    insert into users VALUES (null, 'Jose Angel', 'Contreras',  'joseangel@gmail.com',  '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy Jose Ángel',"2021-01-12", "2021-01-12",'Spain','image2.jpg');

    insert into users VALUES (null, 'Elena', 'Contreras',  'elena@gmail.com',  '$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK', 1979,
    "Masculino",'Spanish','Más de dos años','Master','Sí', 'Emocional', false,'Sierra de la Cabrera','Hola, soy Elena',"2021-01-12", "2021-01-12",'Spain','image3.jpg');

select * from users;

select * from channels;
select * from messages;
insert into messages VALUES (null, 1, 2, 1, "Buenos días!","2021-01-12", "2021-01-12");
    insert into messages VALUES (null, 2, 1, 1, "Hola, en qué puedo ayudarte","2021-01-12", "2021-01-12");
    insert into messages VALUES (null, 1, 2, 1, "Gracias por tu rápida respuesta. Estoy con el proceso de empadronamiento pero tengo muchas dudas con los papeles que me están pidiendo. Ya sabes que el consulado tampoco es muy claro.","2021-01-12", "2021-01-12");
    insert into messages VALUES (null, 2, 1, 1, "Sí, te entiendo perfectamente. Envíame una lista con lo que tienes. A ver cómo puedo ayudarte.","2021-01-12", "2021-01-12");
    
	insert into messages VALUES (null, 1, 6, 2, "Hola!","2021-01-12", "2021-01-12");
	insert into messages VALUES (null, 6, 1, 2, "Qué tal, otra vez por aquí. En que puedo ayudarte esta vez.","2021-01-12", "2021-01-12");
	insert into messages VALUES (null, 1, 6, 2, "Sigo con el trámite para la nacionalida. ¡Ya me han contestado! Pero ahora me piden de nuevo la partida de nacimiento. ¿Sabes si es posible enviarla por email?","2021-01-12", "2021-01-12");
	insert into messages VALUES (null, 6, 1, 2, "CLaro, que sñi. Estoy liado con el trabajo ahora pero te lo busco esta tarde.","2021-01-12", "2021-01-12");
    insert into messages VALUES (null, 1, 6, 2, "¡Mil gracias!","2021-01-12", "2021-01-12");
    
    insert into messages VALUES (null, 1, 5, 3, "Buenas","2021-01-12", "2021-01-12");
    insert into messages VALUES (null, 5, 1, 3, "Hola, justo contigo quería hablar. ¿Cómo van los trámites?","2021-01-12", "2021-01-12");
    
    insert into messages VALUES (null, 1, 4, 4, "Bunos días, me encantaría explicarte contigo para ver si me puedes ayudar con la cita al consulado. Veo que tienes experiencia y muy buenas reseñas.","2021-01-12", "2021-01-12");
	insert into messages VALUES (null, 4, 1, 4, "Hola, en este momento no estoy en España. Vuelvo la próxima semana, hablamos entonces.","2021-01-12", "2021-01-12");
	insert into messages VALUES (null, 1, 4, 4, "Perfecto. Hablamos entonces.","2021-01-12", "2021-01-12");
    
    insert into messages VALUES (null, 5, 1, 4, "Hola. Qué tal? Quería contactar contigo sobre el tema del pasaporte. ¿Lo has sacado aquí en Madrid?","2021-01-12", "2021-01-12");
	insert into messages VALUES (null, 1, 5, 4, "No, perdona. No tengo ni idea.","2021-01-12", "2021-01-12");
	insert into messages VALUES (null, 1, 5, 5, "Ok, si sabes de akguien que me pueda ayuda te lo agradecería.","2021-01-12", "2021-01-12");

insert into users VALUES (null,"Robert","Daniel","robert.daniel2@outlook.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1988,"Masculino","Español","De 6 meses a 1 año","Con graduado escolar","Si","Orientacion sobre temas legales",true,"Sierra de la Cabrera","Baile , Deportes , Juegos","2022-04-19","2022-04-19",null,"946.jpg");
insert into users VALUES (null,"Trenton","Mark","trenton.mark9@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1965,"Masculino","Ingles","De 1 año a 2 años","Master","Si","Orientacion sobre temas legales",true,"Valle del Jarama","Musica , Cine , Fotografia","2021-03-29","2021-03-29",null,"947.jpg");
insert into users VALUES (null,"Alan","Angelia","alan.angelia7@mail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1985,"Masculino","Español","Más de 2 años","FP Formacion Profesional","No especificar","Orientacion laboral",false,"Sierra del Rincon","Musica , Juegos , Baile","2022-11-22","2022-11-22",null,"948.jpg");
insert into users VALUES (null,"Andrea","Brooke","andrea.brooke7@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1998,"Femenino","Ingles , Español","De 6 meses a 1 año","Grado universitario","No","Orientacion laboral",true,"Sierra del Rincon","Musica , Cocina , Lectura","2022-10-30","2022-10-30",null,"949.jpg");
insert into users VALUES (null,"Bridgett","Thomas","bridgett.thomas3@mail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1983,"Femenino","Aleman , Italiano","Menos de 6 meses","Sin graduado escolar","Si","Emocional",false,"Valle del Jarama","Pintura , Musica , Viajar","2021-05-15","2021-05-15",null,"950.jpg");
insert into users VALUES (null,"Carolyn","Kelly","carolyn.kelly1@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1986,"No especificar","Aleman , Español","De 6 meses a 1 año","Grado universitario","No","Orientacion laboral",true,"Valle Medio del Lozoya","Fotografia , Pintura , Deportes","2021-04-18","2021-04-18",null,"951.jpg");
insert into users VALUES (null,"Stephen","Jose","stephen.jose7@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1969,"No especificar","Español","Menos de 6 meses","Grado universitario","No especificar","Orientacion sobre temas legales",true,"Sierra de la Cabrera","Pintura , Baile , Cocina","2022-12-15","2022-12-15",null,"952.jpg");
insert into users VALUES (null,"Myrtie","Edelmira","myrtie.edelmira5@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2000,"No especificar","Arabe","Menos de 6 meses","Con graduado escolar","No","Orientacion laboral",true,"Valle Alto del Lozoya","Lectura , Fotografia , Musica","2022-08-21","2022-08-21",null,"953.jpg");
insert into users VALUES (null,"Alice","Jane","alice.jane4@mail.kz","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1969,"No especificar","Arabe , Aleman","Más de 2 años","Master","Si","Orientacion sobre temas legales",false,"Valle Bajo del Lozoya","Juegos , Viajar , Fotografia","2021-02-17","2021-02-17",null,"954.jpg");
insert into users VALUES (null,"Caroline","Christopher","caroline.christopher8@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1968,"Femenino","Portugues","De 1 año a 2 años","Grado universitario","Si","Emocional",true,"Valle Bajo del Lozoya","Musica , Naturaleza , Viajar","2021-11-28","2021-11-28",null,"955.jpg");
insert into users VALUES (null,"Clifford","Billy","clifford.billy4@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1972,"No especificar","Frances , Portugues","Más de 2 años","Sin graduado escolar","No","Orientacion sobre temas legales",true,"Valle Bajo del Lozoya","Lectura , Baile , Deportes","2022-12-16","2022-12-16",null,"956.jpg");
insert into users VALUES (null,"Johnny","James","johnny.james1@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1965,"Masculino","Ingles , Aleman","De 1 año a 2 años","Grado universitario","No especificar","Orientacion sobre tramites",false,"Valle Medio del Lozoya","Pintura , Deportes , Lectura","2022-07-07","2022-07-07",null,"957.jpg");
insert into users VALUES (null,"Richard","Sharon","richard.sharon3@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1970,"Masculino","Chino","Menos de 6 meses","Master","Si","Orientacion sobre temas legales",false,"Valle Alto del Lozoya","Cine , Cocina , Pintura","2022-12-12","2022-12-12",null,"958.jpg");
insert into users VALUES (null,"Kendrick","Richard","kendrick.richard1@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1967,"No especificar","Frances","Más de 2 años","Master","No","Orientacion sobre tramites",false,"Sierra del Rincon","Cocina , Viajar , Juegos","2022-11-06","2022-11-06",null,"959.jpg");
insert into users VALUES (null,"Julia","Frank","julia.frank1@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2002,"Femenino","Portugues","De 1 año a 2 años","Con graduado escolar","No especificar","Orientacion sobre temas legales",false,"Sierra del Rincon","Cocina , Naturaleza , Juegos","2021-02-21","2021-02-21",null,"960.jpg");
insert into users VALUES (null,"Matthew","Joan","matthew.joan3@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1991,"Masculino","Portugues , Ingles","Más de 2 años","Con graduado escolar","Si","Orientacion sobre temas legales",false,"Sierra de la Cabrera","Musica , Lectura , Viajar","2022-06-19","2022-06-19",null,"961.jpg");
insert into users VALUES (null,"Charles","Whitney","charles.whitney3@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1968,"No especificar","Ucraniano","Más de 2 años","Sin graduado escolar","Si","Emocional",false,"Sierra del Rincon","Musica , Fotografia , Pintura","2022-08-10","2022-08-10",null,"962.jpg");
insert into users VALUES (null,"Sabrina","Frances","sabrina.frances5@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1991,"No especificar","Portugues , Arabe","Más de 2 años","Sin graduado escolar","Si","Emocional",false,"Sierra del Rincon","Cocina , Baile , Musica","2021-04-08","2021-04-08",null,"963.jpg");
insert into users VALUES (null,"Roxanne","Melinda","roxanne.melinda8@mail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2001,"Femenino","Frances","Más de 2 años","Con graduado escolar","Si","Orientacion sobre temas legales",false,"Sierra del Rincon","Musica , Lectura , Fotografia","2021-09-16","2021-09-16",null,"964.jpg");
insert into users VALUES (null,"Marisol","Peggy","marisol.peggy1@mail.kz","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1966,"Masculino","Arabe","De 6 meses a 1 año","Con graduado escolar","No especificar","Orientacion sobre tramites",true,"Valle Medio del Lozoya","Musica , Viajar , Cocina","2021-10-20","2021-10-20",null,"965.jpg");
insert into users VALUES (null,"Harry","Mary","harry.mary3@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2003,"No especificar","Italiano","De 6 meses a 1 año","Doctorado","No","Orientacion sobre tramites",false,"Sierra de la Cabrera","Cocina , Baile , Cine","2022-06-28","2022-06-28",null,"966.jpg");
insert into users VALUES (null,"Elizabeth","Kayla","elizabeth.kayla6@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1995,"No especificar","Rumano","De 1 año a 2 años","FP Formacion Profesional","No especificar","Orientacion laboral",true,"Valle Alto del Lozoya","Cine , Naturaleza , Fotografia","2021-05-18","2021-05-18",null,"967.jpg");
insert into users VALUES (null,"Robert","Evangeline","robert.evangeline4@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1983,"Masculino","Portugues","De 6 meses a 1 año","FP Formacion Profesional","Si","Orientacion laboral",true,"Valle Alto del Lozoya","Deportes , Cine , Juegos","2022-07-30","2022-07-30",null,"968.jpg");
insert into users VALUES (null,"Kendra","Miguel","kendra.miguel6@mail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1990,"No especificar","Rumano , Italiano","De 6 meses a 1 año","Con graduado escolar","No","Emocional",true,"Valle Bajo del Lozoya","Naturaleza , Baile , Musica","2022-05-26","2022-05-26",null,"969.jpg");
insert into users VALUES (null,"Richard","Ellen","richard.ellen2@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1998,"No especificar","Italiano","De 6 meses a 1 año","Grado universitario","No","Orientacion laboral",true,"Sierra del Rincon","Pintura , Juegos , Fotografia","2022-03-30","2022-03-30",null,"970.jpg");
insert into users VALUES (null,"Joshua","Kenneth","joshua.kenneth4@mail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1989,"No especificar","Frances","De 1 año a 2 años","Sin graduado escolar","Si","Orientacion sobre tramites",true,"Sierra de la Cabrera","Fotografia , Viajar , Cine","2022-02-09","2022-02-09",null,"971.jpg");
insert into users VALUES (null,"Jason","Clarence","jason.clarence7@mail.kz","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1968,"Masculino","Chino , Español","De 1 año a 2 años","Master","No","Orientacion laboral",false,"Valle Medio del Lozoya","Deportes , Lectura , Cine","2021-09-18","2021-09-18",null,"972.jpg");
insert into users VALUES (null,"Dolores","Francis","dolores.francis9@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1972,"No especificar","Arabe , Italiano","Más de 2 años","Con graduado escolar","No especificar","Emocional",false,"Valle Medio del Lozoya","Naturaleza , Musica , Baile","2021-04-01","2021-04-01",null,"973.jpg");
insert into users VALUES (null,"James","Esperanza","james.esperanza2@outlook.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1980,"Femenino","Ucraniano , Español","Más de 2 años","Grado universitario","No especificar","Orientacion laboral",false,"Sierra de la Cabrera","Naturaleza , Viajar , Musica","2021-07-30","2021-07-30",null,"974.jpg");
insert into users VALUES (null,"Oliver","Franklin","oliver.franklin5@outlook.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1972,"No especificar","Ucraniano","Menos de 6 meses","Con graduado escolar","No","Orientacion sobre tramites",true,"Valle del Jarama","Viajar , Pintura , Deportes","2022-05-18","2022-05-18",null,"975.jpg");
insert into users VALUES (null,"Bernice","Leta","bernice.leta1@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1996,"No especificar","Ingles , Italiano","De 6 meses a 1 año","FP Formacion Profesional","No","Orientacion sobre tramites",true,"Valle del Jarama","Musica , Cocina , Viajar","2021-06-13","2021-06-13",null,"976.jpg");
insert into users VALUES (null,"Stephen","George","stephen.george9@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2003,"Femenino","Rumano , Arabe","De 1 año a 2 años","Grado universitario","No especificar","Orientacion sobre tramites",false,"Valle Medio del Lozoya","Lectura , Musica , Juegos","2021-10-07","2021-10-07",null,"977.jpg");
insert into users VALUES (null,"Jorge","Percy","jorge.percy5@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1967,"Femenino","Aleman , Rumano","De 6 meses a 1 año","Master","No especificar","Orientacion laboral",false,"Valle del Jarama","Juegos , Lectura , Pintura","2022-09-28","2022-09-28",null,"978.jpg");
insert into users VALUES (null,"Josefina","Elliott","josefina.elliott6@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1992,"No especificar","Arabe , Rumano","De 6 meses a 1 año","Con graduado escolar","No especificar","Orientacion laboral",false,"Valle Medio del Lozoya","Naturaleza , Juegos , Lectura","2021-06-23","2021-06-23",null,"979.jpg");
insert into users VALUES (null,"Mildred","Sophia","mildred.sophia9@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2002,"Masculino","Arabe , Ucraniano","Menos de 6 meses","Sin graduado escolar","Si","Orientacion sobre tramites",false,"Valle Medio del Lozoya","Cine , Fotografia , Deportes","2022-04-24","2022-04-24",null,"980.jpg");
insert into users VALUES (null,"Michael","Carlota","michael.carlota7@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2002,"No especificar","Italiano","De 1 año a 2 años","Sin graduado escolar","No","Orientacion sobre tramites",true,"Valle Alto del Lozoya","Deportes , Naturaleza , Musica","2021-11-24","2021-11-24",null,"981.jpg");
insert into users VALUES (null,"Edward","Duane","edward.duane9@outlook.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1968,"Masculino","Portugues","De 6 meses a 1 año","Doctorado","No especificar","Orientacion sobre temas legales",true,"Valle Medio del Lozoya","Fotografia , Deportes , Viajar","2021-01-03","2021-01-03",null,"982.jpg");
insert into users VALUES (null,"Lou","Alton","lou.alton9@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2002,"Femenino","Portugues","De 1 año a 2 años","Con graduado escolar","No especificar","Orientacion sobre tramites",false,"Sierra del Rincon","Deportes , Baile , Naturaleza","2021-11-26","2021-11-26",null,"983.jpg");
insert into users VALUES (null,"James","Gary","james.gary4@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",2003,"Femenino","Chino","Menos de 6 meses","Con graduado escolar","Si","Emocional",true,"Valle del Jarama","Cine , Deportes , Naturaleza","2021-03-22","2021-03-22",null,"984.jpg");
insert into users VALUES (null,"Paris","David","paris.david9@outlook.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1994,"No especificar","Español","Más de 2 años","Master","No","Orientacion sobre temas legales",true,"Valle Medio del Lozoya","Deportes , Lectura , Baile","2021-03-12","2021-03-12",null,"985.jpg");
insert into users VALUES (null,"William","Brent","william.brent1@mail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1992,"Femenino","Arabe","Más de 2 años","Doctorado","No","Orientacion sobre tramites",false,"Sierra del Rincon","Baile , Cine , Cocina","2021-02-26","2021-02-26",null,"986.jpg");
insert into users VALUES (null,"Dennis","Darren","dennis.darren1@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1989,"No especificar","Arabe","Menos de 6 meses","Grado universitario","Si","Orientacion sobre tramites",true,"Sierra del Rincon","Juegos , Baile , Viajar","2021-07-31","2021-07-31",null,"987.jpg");
insert into users VALUES (null,"Gerald","Henry","gerald.henry7@outlook.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1970,"No especificar","Ingles , Aleman","De 1 año a 2 años","Sin graduado escolar","No","Orientacion sobre temas legales",true,"Valle del Jarama","Naturaleza , Lectura , Cine","2021-07-13","2021-07-13",null,"988.jpg");
insert into users VALUES (null,"Matthew","Jeffery","matthew.jeffery4@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1989,"Masculino","Rumano","De 6 meses a 1 año","FP Formacion Profesional","Si","Orientacion laboral",false,"Sierra del Rincon","Cocina , Naturaleza , Deportes","2022-11-29","2022-11-29",null,"989.jpg");
insert into users VALUES (null,"Maria","Justin","maria.justin6@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1989,"No especificar","Portugues","De 6 meses a 1 año","Master","Si","Orientacion sobre tramites",false,"Valle Alto del Lozoya","Cocina , Naturaleza , Juegos","2021-12-12","2021-12-12",null,"990.jpg");
insert into users VALUES (null,"Kent","Richard","kent.richard1@mail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1974,"No especificar","Ucraniano","De 6 meses a 1 año","Con graduado escolar","Si","Orientacion laboral",true,"Valle Bajo del Lozoya","Viajar , Musica , Fotografia","2021-01-27","2021-01-27",null,"991.jpg");
insert into users VALUES (null,"Carol","Rhonda","carol.rhonda8@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1964,"Femenino","Arabe","De 6 meses a 1 año","Master","No especificar","Orientacion laboral",false,"Valle Medio del Lozoya","Baile , Deportes , Lectura","2022-12-25","2022-12-25",null,"992.jpg");
insert into users VALUES (null,"Charles","Veronica","charles.veronica4@hotmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1967,"No especificar","Chino","Menos de 6 meses","Con graduado escolar","No especificar","Orientacion laboral",true,"Sierra de la Cabrera","Pintura , Cocina , Musica","2022-09-18","2022-09-18",null,"993.jpg");
insert into users VALUES (null,"Todd","Frances","todd.frances9@yahoo.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1996,"Masculino","Rumano , Ingles","De 6 meses a 1 año","Grado universitario","Si","Emocional",false,"Valle Medio del Lozoya","Lectura , Musica , Juegos","2022-03-15","2022-03-15",null,"994.jpg");
insert into users VALUES (null,"Brandon","Nicholas","brandon.nicholas4@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1996,"No especificar","Arabe , Rumano","Más de 2 años","Master","No","Orientacion laboral",false,"Valle del Jarama","Baile , Cocina , Juegos","2021-10-12","2021-10-12",null,"995.jpg");
insert into users VALUES (null,"Ella","Earlene","ella.earlene1@aol.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1976,"No especificar","Aleman","Menos de 6 meses","Grado universitario","Si","Emocional",true,"Sierra del Rincon","Pintura , Cine , Naturaleza","2021-06-04","2021-06-04",null,"996.jpg");
insert into users VALUES (null,"Mark","Meredith","mark.meredith4@mail.kz","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1973,"No especificar","Español","Más de 2 años","Grado universitario","No especificar","Orientacion laboral",false,"Valle del Jarama","Juegos , Fotografia , Baile","2022-11-19","2022-11-19",null,"997.jpg");
insert into users VALUES (null,"Candice","Richard","candice.richard5@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1974,"No especificar","Aleman","Más de 2 años","Grado universitario","Si","Orientacion sobre tramites",true,"Sierra del Rincon","Musica , Pintura , Cocina","2021-09-04","2021-09-04",null,"998.jpg");
insert into users VALUES (null,"Charlene","Fred","charlene.fred8@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1972,"Masculino","Español , Aleman","De 6 meses a 1 año","Sin graduado escolar","No especificar","Orientacion laboral",true,"Valle Medio del Lozoya","Baile , Juegos , Viajar","2021-12-01","2021-12-01",null,"999.jpg");
insert into users VALUES (null,"Larry","Dara","larry.dara9@gmail.com","$2a$08$vf6oSJOftydbsA4LjT4nleBbJ3mnLiFmn/tc01KEcPiJ1aulf4fLK",1991,"Femenino","Rumano , Arabe","De 6 meses a 1 año","Doctorado","No especificar","Emocional",false,"Valle del Jarama","Cocina , Baile , Fotografia","2022-08-02","2022-08-02",null,"1000.jpg");
