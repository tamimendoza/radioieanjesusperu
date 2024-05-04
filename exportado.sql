BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "imagenes" (
	"id"	INTEGER NOT NULL,
	"imagen"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "configuracion" (
	"id"	INTEGER NOT NULL,
	"servidor"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "chat" (
	"id"	INTEGER,
	"nombre"	VARCHAR(50) NOT NULL,
	"mensaje"	TEXT NOT NULL,
	"fecha"	DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "imagenes" ("id","imagen") VALUES (1,'https://res.cloudinary.com/ieanjesusperu/image/upload/v1669477822/slides/fnvmqwjridhlnhixakba.png'),
 (2,'https://res.cloudinary.com/ieanjesusperu/image/upload/v1671365637/slides/xipmhlrh1lj2fl5rrpab.jpg');
INSERT INTO "configuracion" ("id","servidor") VALUES (1,'https://stream-174.zeno.fm/yweolfav6qovv?zs=9n_elSrCSdSVSHBth1ElMA');
INSERT INTO "chat" ("id","nombre","mensaje","fecha") VALUES (1,'Juan','Hola desde BD','2024-04-17 06:20:02'),
 (2,'a','Dios los bendiga familia apostolica desde apurimac','2020-01-03 21:49:00'),
 (3,'Heber vega','Un saludo desde apurimac','2020-01-03 21:51:00'),
 (4,'Radio Luz Apostolica','Amen hnos Dios les bendiga enormemente','2020-01-06 02:59:00'),
 (5,'Cristhian Muriel Huayta','Jesús les bendiga siervos del Señor Jesús. Un saludo fraterno desde la blanca ciudad de AREQUIPA para toda la iglesia a nivel nacional, bendiciones ✨ ✨ ✨','2020-01-15 20:50:00'),
 (6,'Cristhian Muriel Huayta','Jesús le bendiga mi estimado Pastor Fransisco, un saludo fraterno desde la blanca','2020-01-15 20:51:00'),
 (7,'Radio Luz apostolica','Amen hno Cristhian Dios le bendiga saludos para los hnos de la IeanJesus Arequipa','2020-01-16 03:04:00'),
 (8,'Adela alfonso canales','El señor Jesús le bendiga pastores,y a toda la Juventud apostólica','2020-01-16 12:05:00'),
 (9,'Adela alfonso canales','El señor Jesus les bendiga mis pastores, y a toda la Juventud apostólica','2020-01-16 12:06:00'),
 (10,'Gabriel Weill','Dios les bendiga a todos, saludos desde Pucallpa en luz divina','2020-01-16 12:36:00'),
 (11,'Marcos Huachani P.','saludos mis hermanos de alto selva alegre Arequipa que el Señor Jesús le bendiga grandemente','2020-01-16 13:22:00'),
 (12,'Hellen','Saludos para lo jovenes de Cañete, distrito 03','2020-01-16 15:38:00'),
 (13,'MILAGROS FLORES','Dios le bendiga a todos mis hermanos','2020-01-16 15:38:00'),
 (14,'Hellen','Cañete Presente!!','2020-01-16 15:39:00'),
 (15,'William Ventura','Saludos del Pstor William Ventura Para todos los pastores del Distrito 03','2020-01-16 15:40:00'),
 (16,'Priscila Flore','Saludos desde la IGLESIA DE SULLANA , AYUNO JUVENIL DE BENDICIÓN','2020-01-16 15:42:00'),
 (17,'Priscila Flore','Dios le Bendigaa , SALUDOS DESDE LA IGLESIA DE SULLANA , AYUNO JUVENIL DE MUCHA BENDICIÓN','2020-01-16 15:43:00'),
 (18,'Treysi cahuaza','Dios les bendiga saludos de la iglesia de ventanilla','2020-01-16 15:44:00'),
 (19,'Pst. Carlos Paredes','Saludos a todos los hermanos. Sigamos delante sirviendo al Señor Jesucristo. Presentes desde la IEANJESÚS SMP','2020-01-16 15:47:00'),
 (20,'j chavez medina','bendiciones y saludos desde aki de cañete','2020-01-16 15:48:00'),
 (21,'D''Josely Calle Merino','Amen amén!! . El Distrito 04 está presente 😊 saludos desde Jaén👋💞','2020-01-16 15:48:00'),
 (22,'Liliana vega ocaña','Saludos para toda la juventud','2020-01-16 15:56:00'),
 (23,'Liliana vega ocaña','Saludos para toda la juventud desde manasqui','2020-01-16 15:56:00'),
 (24,'Fabiana sandoval martinez','Dios les bendiga a todos desde la iglesia de bagua grande','2020-01-16 15:57:00'),
 (25,'Liliana vega ocaña','Saludos para la juventud','2020-01-16 15:57:00'),
 (26,'Liliana vega ocaña','Bendiciones','2020-01-16 15:58:00'),
 (27,'Liliana vega ocaña','Saludos para todos los hermanos de cusco','2020-01-16 16:00:00'),
 (28,'Priscila Flore','DESDE SULLANA','2020-01-16 16:02:00'),
 (29,'Liliana vega ocaña','Pastor una peticion para los hermnos de manasqui','2020-01-16 16:02:00'),
 (30,'Gibar ventura','Saludos desde la ciudad blanca de arequipa','2020-01-16 16:20:00'),
 (31,'Guido vega','Dios les bendiga mis hermanos saludos desde Cusco peru','2020-01-16 16:22:00'),
 (32,'Guido vega','Dios es grande y misericordioso','2020-01-16 16:23:00'),
 (33,'Clever','Amén','2020-01-16 16:38:00'),
 (34,'Liliana vega ocaña','Amen','2020-01-16 16:57:00'),
 (35,'RUT AREVALO','Dios les bendiga a todos los que están siguiendo este ayuno.','2020-01-16 18:22:00'),
 (36,'RUT AREVALO','Central Chiclayo Presente','2020-01-16 18:23:00'),
 (37,'Rony Zapata','Saludos desde. El. Distrito 3, Santa Isabel Lima.','2020-01-16 18:31:00'),
 (38,'Esposos Mendo Cuba','Bendiciones, saludos desde lima, disfrutando de la transmisión','2020-01-16 18:35:00'),
 (39,'Cristhian Muriel Huayta','La ciudad blanca de Arequipa,... Presente glorificando al más grande JESÚS DE NAZARET ♥','2020-01-16 18:37:00'),
 (40,'Marleny soncco','Saludos para los hermanos de Distrito,3','2020-01-16 18:49:00'),
 (41,'Marleny soncco','Saludos para Distrito 3','2020-01-16 18:49:00'),
 (42,'Meriluz balvin','Dios le bendiga hnos saludos avtodos','2020-01-16 18:57:00'),
 (43,'Meriluz balvin','Dios le bendiga hnos saludos dssde Lima villa es Salvador','2020-01-16 18:59:00'),
 (44,'Norma herrera de las loma','La Gloria es para mi Dios','2020-01-16 20:27:00'),
 (45,'Norma herrera de las loma','La Gloria es para mi Dios','2020-01-16 20:27:00'),
 (46,'Radio IeanJesus Perú','Amen hnos Dios les bendiga enormemente','2020-01-17 21:55:00'),
 (47,'Radio IeanJesus Perú','envien audios de saludos para que salgan en la radio de 7 a 9 am al whatsaapp 979150371','2020-01-17 21:56:00'),
 (48,'Rafu','Dios les bendiga mi queridos líderes','2020-01-18 12:42:00'),
 (49,'Rafu','Amén sigamos en pregonar el evangelio','2020-01-18 12:43:00'),
 (50,'Jonathan Músic','Saludos cordiales excelente día para todos los k administran la radio. Solo nos keda darnos ánimo en estos tiempos tan difíciles. Oremos x nuestras autoridades terrenales.','2020-01-19 13:17:00'),
 (51,'Judith cuba','Dios los bendiga. Saludos desde Pisco❤','2020-01-19 13:20:00'),
 (52,'Jonathan Músic','Pongan canción el mono d luis Alberto Vallejo','2020-01-19 13:35:00'),
 (53,'Pst. Venn Euler Cárdenas','Saludos para toda la Juventud e Iglesia de JESÚS en todo el mundo instemos a los demás a seguir con el propósito de Dios anunciar el Evangelio del Reino de Dios y el NOMBRE DE JESUCRISTO.','2020-01-19 13:44:00'),
 (54,'Panueramazininio48@gmail.','Dios lo bendiga desde samclemente','2020-01-19 13:54:00'),
 (55,'Muriel Huayta Cristhian','Gloria a Jesús, sus oraciones a favor mío, Dios me guarde, respalde y use mi vida en el trabajo.','2020-01-20 13:12:00'),
 (56,'Joseph Ramírez','Dios les bendiga Amada Iglesia del Señor Jesús saludos a todos, San Hilarión, Distrito 3. Se escucha muy bien.','2020-01-20 13:42:00'),
 (57,'Isaías Sánchez Lucero','La iglesia El Dorado esta presente .adorando al rey de reyes y señor y señores','2020-01-20 18:55:00'),
 (58,'Isaías Sánchez Lucero','Desde la selva central!. La iglesia El Dorado D4 presente.. saludos a todos en el nombre de señor Jesús','2020-01-20 18:57:00'),
 (59,'Israel Llerena Huayambao','Saludos mi pastor','2020-01-23 13:22:00'),
 (60,'Israel Llerena Huayambao','Gloria a Dios saludos','2020-01-23 13:22:00'),
 (61,'Rebeca Quispe','Dios les bendiga hermanos saludos en el Nombre de Jesús','2020-01-23 13:55:00'),
 (62,'Elver','Oración x mi esposa','2020-01-23 14:08:00'),
 (63,'Elver','Dios los bendiga oración x mi esposa Liz Maribel k el señor age su obra en su vida','2020-01-23 14:08:00'),
 (64,'979150371','Dios les bendiga amados pastores y hermanos.','2020-01-23 14:46:00'),
 (65,'979150371','Dios les bendiga amados pastores y hermanos.','2020-01-23 14:46:00'),
 (66,'Isaías Sánchez Lucero','Pastor no se puede escuchar.el radio','2020-01-23 16:34:00'),
 (67,'Isaías Sánchez Lucero','Aparece llave','2020-01-23 16:35:00'),
 (68,'Hna maria','Dios le bendiga atodos lo hmos,desde la cdad de pucallpa la iglesia de luz divina D''3 ptesente','2020-01-23 17:10:00'),
 (69,'Alexandro Ordóñez','Dios les bendiga desde la IEANJESUS San Ignacio','2020-01-23 18:13:00'),
 (70,'Alexandro Ordóñez','Dios les bendiga desde la IEANJESUS San Ignacio','2020-01-23 18:14:00'),
 (71,'Ieanjesus las Lomas','Estuvo bueno el pan espiritual gracias a Dio','2020-01-23 18:36:00'),
 (72,'Luis Calle Montalbán','Pastor hago una petición por todo el distrito 04, que Dios nos de fortaleza y que nos ayude aun más a aferrarnos de él y un día estar juntos en la patria celestial.','2020-01-23 18:56:00'),
 (73,'Ps. Gensro Aguilar','Saludos a todos ustedes mis hermanos. Oración pido a favor de las familias Cristianas que cada día nos fortalezcamos en Dios apesar de las prohibiciones se a el Señor nos ayudará','2020-01-23 19:39:00'),
 (74,'Pst. Carlos Paredes','Dios les bendiga mis hnos El los siga usando grandemente','2020-01-25 01:03:00'),
 (75,'Mlonica castro Tapia','Dios les bendiga miis amados hermanos','2020-01-25 11:29:00'),
 (76,'Mlonica castro Tapia','Dios les bendiga mis amados hermanos','2020-01-25 11:30:00'),
 (77,'Venn Euler Cárdenas Pacha','Dios les bendiga a cada uno de los hnos en todo el Perú y mundo saludos desde la IEAN JESÚS RÍMAC PERU Distrito 3 celula1','2020-01-25 13:33:00'),
 (78,'Venn Euler Cárdenas Pacha','Venn Euler Cárdenas Pachas Presidente del C.N.E.A','2020-01-25 13:33:00'),
 (79,'Radio IeanJesus Perú','pronto tendremos un programa Donde está tu tesoro esta tu corazón','2020-01-25 19:42:00'),
 (80,'Radio IeanJesus Perú','Dios les bendiga grandemente hermanos','2020-01-25 19:43:00'),
 (81,'Rildo Jiménez zumaeta','Bendiciones a la iglesia del señor Jesucristo en nuestro Perú','2020-01-25 21:39:00'),
 (82,'Radio IeanJesus Perú','pastor Rildo Dios le bendiga','2020-01-30 19:28:00'),
 (83,'Hna Edelmira Cunyarache d','Dios les bendiga mis Amados hnos Pastores q El Sr Jesucristo los use poderosamente.','2020-01-31 12:14:00'),
 (84,'Luz Apostolica','Dios les bendiga hermanos ya estamos al aire por favor reporten sintonia','2020-03-02 02:36:00'),
 (85,'RADIO LUZ APOSTOLICA','Amen','2020-03-02 20:09:00'),
 (86,'Refam Tarapoto','Dios los bendiga grandemente hermanos de Luz Apostólica saludos','2020-03-03 00:36:00'),
 (87,'Radio Luz Apostolica','Amen hermanos Dios les bendiga grandemente reporten su sintonia desde donde nos ecuchan','2020-03-06 16:32:00'),
 (88,'Refam Tarapoto','La musica del pueblo del Señor es una excelente bendición para aprender a adorar el NOMBRE de JESÚS','2020-03-11 20:59:00'),
 (89,'Leonardo Manayay','Dios los bendiga','2020-03-11 21:01:00'),
 (90,'Radio Luz Apostolica','Amen hno Leonardo Dios le bendiga enormemente','2020-03-15 00:03:00'),
 (91,'Maria Elsa Torres.','DIOS lo Bendiga hno ...','2020-03-21 03:59:00'),
 (92,'Maria Elsa Torres.','Saludos','2020-03-21 04:02:00'),
 (93,'Florcita','Dios siga Respaldandoo esta preciosa Emisoramismmmmm','2020-03-21 15:23:00'),
 (94,'judith cuba','que bueno que siga la señal de la radio , DIOS LOS SIGA USANDO','2020-03-21 17:10:00'),
 (95,'Ausberto Vasquez Humbo','Reciban todos ustedes mis hermanos un fuerte abrazo a la distancia en el nombre de JESÚS','2020-03-22 01:34:00'),
 (96,'Radio Luz Apostolica','Amen hermanos Dios les bendiga','2020-03-22 20:54:00'),
 (97,'Florcita','Amen','2020-03-26 21:38:00'),
 (98,'Pst. Carlos Paredes','Dios los bendiga grandemente hermano. Saludos para todos ustedes y sigan adelante engrandeciendo la obra de Dios.','2020-03-26 22:07:00'),
 (99,'Erika E. Cruz Rodriguez','Amén, Gloria a Dios. Aqui estamos tambien','2020-03-27 00:08:00'),
 (100,'Erika E. Cruz Rodriguez','Gloria a Dios aqui estamos! desde Argentina pa Cristo Jesus','2020-03-27 00:09:00'),
 (101,'CARLOS','DIOS LES BENDIGA MIS HNOS','2020-05-26 22:58:00'),
 (102,'Radio Luz Apostólica','El día lunes 20 no hubo trasmisión estaba desactivado el servidor ee la Radio nos reportaron algunos oyentes inmediatamente reportamos y esta solucionado el caso y seguimos al aire Dios les bendiga he','2020-07-21 11:20:00'),
 (103,'Isaías Sánchez Lucero','Muchas bendiciones. La misión aún no ha terminado. Presente la iglesia el Dorado San Martín','2020-07-28 15:55:00'),
 (104,'Isaías Sánchez Lucero','Muchas bendiciones presente la iglesia el Dorado muchos saludos y sus oraciones','2020-07-28 15:56:00'),
 (105,'Radio Luz apostolica','Dios le bendiga pastor Isaias Dios le bendiga enormemente','2020-07-31 16:56:00'),
 (106,'Radio Luz apostolica','Dios les bendiga estimados hermanos saludos','2020-09-01 13:20:00'),
 (107,'Jose Erincson','Adelante en el Señor, muchos saludos desde Buenos Aires,Argentina','2020-09-02 13:23:00'),
 (108,'Angel Macias','Dios le bendiga adelante','2020-09-02 16:39:00'),
 (109,'Angel Macias','bendiciones Exito','2020-09-02 16:39:00'),
 (110,'dionicia purihuaman lucer','Dios la bendiga hrmnos🥰','2020-09-05 16:05:00'),
 (111,'Angel Macias Delgado','Amen Gloria a Dios bendiciones','2020-09-10 02:27:00'),
 (112,'Venn Euler Cárdenas Pacha','Dios les bendiga hoy tenemos el Programa','2020-09-14 12:44:00'),
 (113,'Vidal huayta d','una oracion por mi familia','2020-09-14 14:35:00'),
 (114,'Lizeth','Muchas bendiciones un buen muy buen programa','2020-09-14 16:34:00'),
 (115,'Angel Macias Delgado','Dios le bendiga q la palabra llegue a toda Alma q necesite oir atravez de la radio estos hermozo menzajes para Salvación','2020-09-16 14:43:00'),
 (116,'Mariela castillo aguilar','Gloria a Dios','2020-09-17 05:35:00'),
 (117,'Cristhian Muriel Huayta','Dios les bendiga, sus oraciones a favor mío, Dios haga su voluntad en las decisiones que tome esta mañana, muchas gracias y que sea la voluntad del Señor 🙏🏻','2020-09-21 13:27:03.839000'),
 (118,'dionicia purihuaman lucero','❣saludos en nombre del señor jesus','2020-09-22 15:06:28.128000'),
 (119,'Pastor: Iglesia tarapoto','Saludamos desde tarapoto  a todos los hermanos y Amigos que sintonizan IEANJESUS RADIO PERU','2020-09-23 13:19:14.320000'),
 (120,'Florcita','Amen Dios le bendiga  Padtor','2020-09-23 13:23:03.926000'),
 (121,'Israel Llerena','Amén','2020-09-23 13:40:35.492000'),
 (122,'Jenny Mejia de Macias','Dios le bendiga desde Guayaquil mis saludo','2020-09-23 17:59:04.127000'),
 (123,'Jenny Mejia de Macias','Amén Amén','2020-09-23 18:21:03.635000'),
 (124,'Radio IeanJesus Perú','Dios les bendiga hermanos de todo el Perú y el mundo','2020-09-23 23:26:34.660000'),
 (125,'MICHEL RIVERA SEMINARIO','EL SEÑOR JESÚS LE BENDIGA PASTOR FRANCISCO, SALUDOS DESDE LA IEANJESUS TUMBES.

SINTONIZANDO LA FAMILIA LA RADIO DE LA IEANJESUS PERÚ','2020-10-01 14:17:39.152000'),
 (126,'Rigoberto Reyes reportando sintonía desde Ibagué Colombia','Bendiciones para todos sigan cumpliendo con el mandato de predicar el evangelio hasta lo último de la tierra. Bendiciones en Cristo Jesús Señor nuestro!!','2020-10-22 18:33:10.597000'),
 (127,'Rigoberto Reyes reportando sintonía desde Ibagué Colombia','Les bendigo grandemente amados hermanos del Nombre de nuestro Señor Jesucristo!!','2020-10-22 18:34:33.653000'),
 (128,'Bladimirth','Bendiciones','2020-10-23 16:23:11.272000'),
 (129,'Porfirio manayay lucero','Muchas bendiciones mis hnos pastores que hacen parte de la comunicación muchas bendiciones','2020-10-31 15:29:15.004000'),
 (130,'Vida Apostólica','Dios les continúe bendiciendo a cada servidor del Señor Jesús, a los hermanos y a todos los amigos
.','2020-11-01 00:09:41.239000'),
 (131,'Cristhian Muriel Huayta','Amén, hermozo testimonio, saludos Pastor Genaro','2020-11-01 00:37:29.864000'),
 (132,'Maria Solis','Bendiciones mis amados hermanos desde el Pais de Colombia q el Señor bendiga este ministerio Radial🤗','2020-11-01 01:37:27.253000'),
 (133,'Victor Hugo montaban','DIOS les bendiga amados hnos','2020-11-15 17:27:12.512000'),
 (134,'Jaziel','Amén ,bendiciones','2020-11-15 17:44:30.250000'),
 (135,'Jaziel','🎹🎶🎶🎶🎵🎤🎤','2020-11-15 18:02:15.616000'),
 (136,'William Gálvez','Saludos desde Piura . Dios les bendiga.','2020-11-28 14:46:20.753000'),
 (137,'Magaly Flores Córdova','Dios les bendiga mis estimados hermanos un saludo muy cordial desde Sullana.... Bendiciones','2020-11-28 20:09:07.381000'),
 (138,'Jean Carlos rueda Vázquez','Dios me los bendiga abundantemente...','2020-12-05 00:58:53.087000'),
 (139,'Cindy Raquel Montero Carmen','Dios los cuide y proteja siempre bendiciones','2020-12-06 00:47:05.592000'),
 (140,'Florcita','Amen','2020-12-18 23:37:38.351000'),
 (141,'Francisco Ramirez','dios les bendiga hnos saludos en el Nombre del Señor Jesús','2020-12-23 16:57:32.481000'),
 (142,'Francisco Ramirez','Dios es bueno','2020-12-23 16:58:02.445000'),
 (143,'Adán López Córdova','Dios les bendiga que bendición este Programa. Saludos desde la Ieanjesús Juliaca Perú🤝❤️','2020-12-25 03:01:38.088000'),
 (144,'Ceci','Dios les bendiga hermanos de Radio Ieanjesus saluden a la Ieanjesus Jorge Chávez','2020-12-31 19:51:28.341000'),
 (145,'Daniel rojas','Nose escucha nada, fijence un favor la salida del audio. DLB SALUDOS DESDE CHINCHA','2021-02-03 03:52:41.419000'),
 (146,'Dionicia purihuaman lucero','Dios la bendiga  a todos...en el nombre de Jesus....','2021-02-03 12:13:14.151000'),
 (147,'Oscar velasquez','Muchas bendiciones. Dios les bendiga
Saludos a la iglesia en Tacna.. Al pastor Enrique Álvarez 
Y esposa.','2021-02-03 12:16:49.661000'),
 (148,'Dionicia purihuaman lucero','amén','2021-02-03 12:17:30.220000'),
 (149,'Adela Alfonso canales','El señor Jesús les bendiga, hermanos, pastores quienes transmiten  este hermoso programa que bonito es despertar escuchando cánticos y palabra de nuestro Dios👏👏👏🙌🙌','2021-02-03 12:27:05.944000'),
 (150,'Hno Cristhian Muriel','Excelente programa, que sigan los éxitos y saludos fraternos desde la ciudad blanca de Arequipa - Asa,
JESÚS LES BENDIGA 👔','2021-02-03 12:57:40.091000'),
 (151,'Marcos daniel Rojas','Dios le bendiga un saludo desde chincha, Dios siga bendiciendo este ministerio radial','2021-02-03 13:03:45.690000'),
 (152,'Venn Euler Cárdenas Pachas','Muchos saludos y felicitaciones al equipo logístico de la IEAN JESUS PERU RADIO','2021-02-08 12:17:52.547000'),
 (153,'Venn Euler Cárdenas Pachas','Estamos en sintonía  desde la IEANJESUS JESÚS RIMAC','2021-02-08 12:19:22.465000'),
 (154,'dionicia purihuaman lucero','jesus  los bendiga siervos del señor....muchas bendiciones','2021-02-08 12:53:16.417000'),
 (155,'dionicia purihuaman lucero','Dios les bendiga siervos del señor jesus','2021-02-08 12:56:42.776000'),
 (156,'richard rodriguez alvarado','saludo desde macas morona satiago','2021-02-08 14:17:15.580000'),
 (157,'Walter carlos Manayay','Orar por todos los pastores del D.4 que Dios nos ayude en esta misión','2021-02-09 12:13:34.423000'),
 (158,'Sarela Jimenez','Dios les pastores saludos a toda la congregación de Cajamarca','2021-02-10 12:40:21.318000'),
 (159,'Pedro Ventura','Amen Hnos saludos al Pastor Cesar por su cumpleaños','2021-02-11 23:34:06.919000'),
 (160,'Walter carlos','Bendiciones para todos','2021-02-15 12:28:16.447000'),
 (161,'Walter carlos Manayay','Bendiciones para todos','2021-02-19 12:54:50.846000'),
 (162,'Li','Dios len bendiga saludos..','2021-02-22 12:53:19.782000'),
 (163,'Cleme paz','Dios lebendiga hno.pastor','2021-02-26 23:52:27.960000'),
 (164,'Alex Panta López','Dios les bendiga hno Pastor Francisco y a la iglesia de paita','2021-03-14 16:39:44.009000'),
 (165,'Enrique    Bereche     Peña','Gloria A Dios','2021-03-22 13:38:46.100000'),
 (166,'Amen Gloria Dios Amen sus oracines x mis hijos x su comvercion al señor jesus Josch Brian Jeanmetie salcedo cardenas amao y pablo santos Ramos y vida espiritual x favor saludo a todos esta hora a todos desde Ancon ke señor me ayude y Todos es para su Gloria a señor jesus','Gloria Dios','2021-06-21 12:33:06.769000'),
 (167,'blo santos Ramos y vida espiritual x favor saludo a todos esta hora a todos desde Ancon ke señor me ayude y Todos es para su Gloria a señor jesus','','2021-06-21 12:34:55.476000'),
 (168,'Cresencia','Men Dios le bendiga hermanos y pastores','2021-06-22 01:21:00.985000'),
 (169,'Jorge Huároc','Bendiciones para todos ustedes.','2021-07-09 02:34:07.289000'),
 (170,'Ieanjesus Radio','Dios les bendiga hermanos oyentes','2021-09-01 00:54:45.228000'),
 (171,'Pst. Venn Euler Cárdenas Pachas','Amen estamos en la Escuela MISIONOLOGICA','2021-09-05 22:54:50.472000'),
 (172,'Francisco','Dios les bendiga hnos','2022-09-12 17:45:32.357000'),
 (173,'Yaneris Rodríguez, República Dominicana','Sostenida como viendo al invisible, ayúdame  tener una fe real 🙌','2022-11-28 00:41:40.928000'),
 (174,'Yaneris Rodríguez, República Dominicana','Una fe real 🙌','2022-11-28 00:42:05.636000'),
 (175,'Jose Jhony Gómez','Dios les bendiga hermanos','2022-11-29 15:21:03.070000'),
 (176,'Ernesto González','Gloria a Dios que bendición la música de mi país para alabanza al Señor Jesús saludos desde Venezuela','2022-11-29 22:12:14.259000'),
 (177,'María Esther','Dios le bendiga grandemente.','2022-12-02 15:51:28.495000'),
 (178,'María Esther','Amen','2022-12-02 15:51:44.342000'),
 (179,'María Esther','Gloria','2022-12-02 15:51:56.680000'),
 (180,'Amen','Felicidades y siga en adelante en el Señor','2022-12-11 01:17:47.553000'),
 (181,'Lenny huaman','Amén bendiciones','2024-03-15 21:09:53.402000'),
 (182,'pepe','Hola','2024-05-02 06:03:03'),
 (183,'pepe','Hola','2024-05-02 06:04:00'),
 (184,'Pepe','Hola','2024-05-02 06:07:11'),
 (185,'Pepe','Hola 2','2024-05-02 06:07:45'),
 (186,'Pepe','todo bien','2024-05-02 06:07:53'),
 (187,'Juan','Hola mundo','2024-05-02 08:13:36'),
 (188,'Juan','Hola mundo prueba 2','2024-05-02 08:15:12'),
 (189,'Pepe','Todo bien?','2024-05-02 08:19:29'),
 (190,'Juan','probaré','2024-05-02 08:22:35'),
 (191,'Pepe','genial','2024-05-02 08:25:57'),
 (192,'Juan','Gracias','2024-05-02 08:29:38'),
 (193,'Juan','Ahora veremos seguridad del token','2024-05-02 08:29:52'),
 (194,'Pepe','genial ya es seguro','2024-05-02 08:39:40'),
 (195,'Juan','super','2024-05-02 08:40:45'),
 (196,'Pepe','Verificando','2024-05-02 08:42:30'),
 (197,'Pepe','prueba 2','2024-05-02 08:43:18'),
 (198,'Pepe','prueba 2','2024-05-02 08:45:26'),
 (199,'Pepe','prueba 3','2024-05-02 08:47:05'),
 (200,'Pepe','prueba 4','2024-05-02 08:49:34'),
 (201,'Pepe','prueba 5','2024-05-02 08:54:47'),
 (202,'Juan','Prueba final','2024-05-02 08:56:16'),
 (203,'Pepe','todo OK','2024-05-02 09:16:39'),
 (204,'Luis','genial','2024-05-03 07:09:13'),
 (205,'Pepe','Hola','2024-05-03 07:36:24'),
 (206,'Pepe','Hola 2','2024-05-03 07:37:32'),
 (207,'Pepe','Hola 3','2024-05-03 07:40:11'),
 (208,'Pepe','Hola 4','2024-05-03 07:41:17'),
 (209,'Pepe','Hola 5','2024-05-03 07:49:25'),
 (210,'Pepe','Hola 6','2024-05-03 07:51:09'),
 (211,'Pepe','Hola 7','2024-05-03 07:55:17'),
 (212,'Pepe','Hola 8','2024-05-03 07:57:17'),
 (213,'Juan','Hola','2024-05-04 07:51:26');
COMMIT;
