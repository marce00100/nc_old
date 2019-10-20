--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

-- Started on 2016-09-30 21:29:53

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

--
-- TOC entry 2128 (class 0 OID 25645)
-- Dependencies: 182
-- Data for Name: fuentes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO fuentes VALUES ('9c064a89-4124-40a7-8823-4d6acca2f3f2', 'http://news.google.com/news?ned=us&topic=h&output=rss', 'GOOGLE NEWS', 'US', true, NULL, 'Top Stories - Google News', 'http://news.google.com/news?hl=en&amp;ned=us&amp;topic=h', 'Google News', '128', '2016-09-20 02:03:00', true, 74, '2016-09-19 22:23:42', 'en-US', 92, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-15 00:43:01', '2016-09-15 00:43:01');
INSERT INTO fuentes VALUES ('84f28796-8b16-22d9-4ab5-e562d8fe8e2d', 'muyInteresante', 'MUY INTERESANTE', '', true, NULL, 'MUY Interesante', 'http://t.co/q42tTJm1PM', 'Revista de ciencia, historia, tecnología, salud, psicología, innovación y curiosidades', 'twitter', '2016-09-20 01:00:07', true, 7, '2016-09-19 22:54:15', 'es', 93, 'Twitter', NULL, NULL, 'user-0', NULL, '2016-09-19 20:38:20', '2016-09-19 20:38:20');
INSERT INTO fuentes VALUES ('67b77432-b769-8b8d-a636-b8c7e36c54ab', 'http://www.boliviaentusmanos.com/noticias/rss.php', 'BOLIVIA EN TUS MANOS', '', true, NULL, 'Boliviaentusmanos.com - Noticiass', 'http://www.boliviaentusmanos.com/', 'Noticias - Boliviaentusmanos.com', '128', '2016-09-20 01:05:00', true, 86, '2016-09-19 22:54:14', 'es-bo', 93, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-15 22:11:20', '2016-09-15 22:11:20');
INSERT INTO fuentes VALUES ('94d05d77-5d3c-26cc-bc64-0671672b51c9', 'http://rss.eldiario.net/opinion.php', 'EL DIARIO', 'OPINION', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-12 00:47:50', '2016-09-12 00:47:50');
INSERT INTO fuentes VALUES ('b2e3fef8-65a8-ac12-e8ab-87422716b682', 'http://www.paginasiete.bo/rss/feed.html?r=77', 'PAGINA 7', 'ECONOMIA', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-12 01:31:15', '2016-09-12 01:31:15');
INSERT INTO fuentes VALUES ('77c3ea76-db83-9f3d-5ebd-cd081be2c6ca', 'http://www.la-razon.com/rss/opinion/editorial/', 'LA RAZON', 'EDITORIAL', false, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-16 00:47:40', '2016-09-16 00:47:40');
INSERT INTO fuentes VALUES ('25ccd038-a1df-b36d-1600-dac8e9de1ba6', 'http://www.paginasiete.bo/servicios/rss.asp?r=2', 'PAGINA 7', 'NACIONAL', false, NULL, NULL, NULL, NULL, NULL, NULL, false, 0, NULL, NULL, 0, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-15 23:50:29', '2016-09-15 23:50:29');
INSERT INTO fuentes VALUES ('8fcbbea1-20f9-53da-acb8-5ba1cae0494f', 'http://rss.eldiario.net/index.php', 'EL DIARIO', 'PORTADA', false, NULL, 'El Diario (Bolivia) - PRIMERA PÁGINA', 'http://www.eldiario.net/noticias/2016/2016_09/nt160917/principal.php?n=71', 'Decano de la Prensa Nacional', '128', '2016-09-17 04:00:00', true, 28, '2016-09-17 21:04:37', 'es-es', 25, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-12 00:42:05', '2016-09-12 00:42:05');
INSERT INTO fuentes VALUES ('73c32b6a-c91f-b4c3-f362-289ff5cb9e83', 'http://www.la-razon.com/rss/opinion/editorial/', 'LA RAZON', 'OPINIóN', false, NULL, 'La Razón (Bolivia) - Editorial', 'http://www.la-razon.com/opinion/editorial/', 'La Razón (Bolivia) - Editorial', '128', '2016-09-17 04:00:00', true, 7, '2016-09-17 21:04:37', 'es', 25, 'RSS', NULL, NULL, 'user-0', NULL, '2016-09-16 00:46:01', '2016-09-16 00:46:01');


--
-- TOC entry 2132 (class 0 OID 25690)
-- Dependencies: 189
-- Data for Name: parametros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO parametros VALUES (1, 'CategoriaStopword', 'general', 'gral', 1, NULL);


--
-- TOC entry 2137 (class 0 OID 0)
-- Dependencies: 188
-- Name: parametros_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('parametros_id_seq', 1, true);


--
-- TOC entry 2130 (class 0 OID 25679)
-- Dependencies: 187
-- Data for Name: stopwords; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO stopwords VALUES (44, 'a', 'gral', true);
INSERT INTO stopwords VALUES (47, 'actualmente', 'gral', true);
INSERT INTO stopwords VALUES (35, 'él', 'gral', true);
INSERT INTO stopwords VALUES (36, 'ésta', 'gral', true);
INSERT INTO stopwords VALUES (37, 'éstas', 'gral', true);
INSERT INTO stopwords VALUES (38, 'éste', 'gral', true);
INSERT INTO stopwords VALUES (39, 'éstos', 'gral', true);
INSERT INTO stopwords VALUES (40, 'última', 'gral', true);
INSERT INTO stopwords VALUES (41, 'últimas', 'gral', true);
INSERT INTO stopwords VALUES (42, 'último', 'gral', true);
INSERT INTO stopwords VALUES (43, 'últimos', 'gral', true);
INSERT INTO stopwords VALUES (45, 'añadió', 'gral', true);
INSERT INTO stopwords VALUES (46, 'aún', 'gral', true);
INSERT INTO stopwords VALUES (48, 'adelante', 'gral', true);
INSERT INTO stopwords VALUES (49, 'además', 'gral', true);
INSERT INTO stopwords VALUES (50, 'afirmó', 'gral', true);
INSERT INTO stopwords VALUES (51, 'agregó', 'gral', true);
INSERT INTO stopwords VALUES (52, 'ahí', 'gral', true);
INSERT INTO stopwords VALUES (53, 'ahora', 'gral', true);
INSERT INTO stopwords VALUES (54, 'al', 'gral', true);
INSERT INTO stopwords VALUES (55, 'algún', 'gral', true);
INSERT INTO stopwords VALUES (56, 'algo', 'gral', true);
INSERT INTO stopwords VALUES (57, 'alguna', 'gral', true);
INSERT INTO stopwords VALUES (58, 'algunas', 'gral', true);
INSERT INTO stopwords VALUES (59, 'alguno', 'gral', true);
INSERT INTO stopwords VALUES (60, 'algunos', 'gral', true);
INSERT INTO stopwords VALUES (61, 'alrededor', 'gral', true);
INSERT INTO stopwords VALUES (62, 'ambos', 'gral', true);
INSERT INTO stopwords VALUES (63, 'ante', 'gral', true);
INSERT INTO stopwords VALUES (64, 'anterior', 'gral', true);
INSERT INTO stopwords VALUES (65, 'antes', 'gral', true);
INSERT INTO stopwords VALUES (66, 'apenas', 'gral', true);
INSERT INTO stopwords VALUES (67, 'aproximadamente', 'gral', true);
INSERT INTO stopwords VALUES (68, 'aquí', 'gral', true);
INSERT INTO stopwords VALUES (69, 'así', 'gral', true);
INSERT INTO stopwords VALUES (70, 'aseguró', 'gral', true);
INSERT INTO stopwords VALUES (71, 'aunque', 'gral', true);
INSERT INTO stopwords VALUES (72, 'ayer', 'gral', true);
INSERT INTO stopwords VALUES (73, 'bajo', 'gral', true);
INSERT INTO stopwords VALUES (74, 'bien', 'gral', true);
INSERT INTO stopwords VALUES (75, 'buen', 'gral', true);
INSERT INTO stopwords VALUES (76, 'buena', 'gral', true);
INSERT INTO stopwords VALUES (77, 'buenas', 'gral', true);
INSERT INTO stopwords VALUES (78, 'bueno', 'gral', true);
INSERT INTO stopwords VALUES (79, 'buenos', 'gral', true);
INSERT INTO stopwords VALUES (80, 'cómo', 'gral', true);
INSERT INTO stopwords VALUES (81, 'cada', 'gral', true);
INSERT INTO stopwords VALUES (82, 'casi', 'gral', true);
INSERT INTO stopwords VALUES (83, 'cerca', 'gral', true);
INSERT INTO stopwords VALUES (84, 'cierto', 'gral', true);
INSERT INTO stopwords VALUES (85, 'cinco', 'gral', true);
INSERT INTO stopwords VALUES (86, 'comentó', 'gral', true);
INSERT INTO stopwords VALUES (87, 'como', 'gral', true);
INSERT INTO stopwords VALUES (88, 'con', 'gral', true);
INSERT INTO stopwords VALUES (89, 'conocer', 'gral', true);
INSERT INTO stopwords VALUES (90, 'consideró', 'gral', true);
INSERT INTO stopwords VALUES (91, 'considera', 'gral', true);
INSERT INTO stopwords VALUES (92, 'contra', 'gral', true);
INSERT INTO stopwords VALUES (93, 'cosas', 'gral', true);
INSERT INTO stopwords VALUES (94, 'creo', 'gral', true);
INSERT INTO stopwords VALUES (95, 'cual', 'gral', true);
INSERT INTO stopwords VALUES (96, 'cuales', 'gral', true);
INSERT INTO stopwords VALUES (97, 'cualquier', 'gral', true);
INSERT INTO stopwords VALUES (98, 'cuando', 'gral', true);
INSERT INTO stopwords VALUES (99, 'cuanto', 'gral', true);
INSERT INTO stopwords VALUES (100, 'cuatro', 'gral', true);
INSERT INTO stopwords VALUES (101, 'cuenta', 'gral', true);
INSERT INTO stopwords VALUES (102, 'da', 'gral', true);
INSERT INTO stopwords VALUES (103, 'dado', 'gral', true);
INSERT INTO stopwords VALUES (104, 'dan', 'gral', true);
INSERT INTO stopwords VALUES (105, 'dar', 'gral', true);
INSERT INTO stopwords VALUES (106, 'de', 'gral', true);
INSERT INTO stopwords VALUES (107, 'debe', 'gral', true);
INSERT INTO stopwords VALUES (108, 'deben', 'gral', true);
INSERT INTO stopwords VALUES (109, 'debido', 'gral', true);
INSERT INTO stopwords VALUES (110, 'decir', 'gral', true);
INSERT INTO stopwords VALUES (111, 'dejó', 'gral', true);
INSERT INTO stopwords VALUES (112, 'del', 'gral', true);
INSERT INTO stopwords VALUES (113, 'demás', 'gral', true);
INSERT INTO stopwords VALUES (114, 'dentro', 'gral', true);
INSERT INTO stopwords VALUES (115, 'desde', 'gral', true);
INSERT INTO stopwords VALUES (116, 'después', 'gral', true);
INSERT INTO stopwords VALUES (117, 'dice', 'gral', true);
INSERT INTO stopwords VALUES (118, 'dicen', 'gral', true);
INSERT INTO stopwords VALUES (119, 'dicho', 'gral', true);
INSERT INTO stopwords VALUES (120, 'dieron', 'gral', true);
INSERT INTO stopwords VALUES (121, 'diferente', 'gral', true);
INSERT INTO stopwords VALUES (122, 'diferentes', 'gral', true);
INSERT INTO stopwords VALUES (123, 'dijeron', 'gral', true);
INSERT INTO stopwords VALUES (124, 'dijo', 'gral', true);
INSERT INTO stopwords VALUES (125, 'dio', 'gral', true);
INSERT INTO stopwords VALUES (126, 'donde', 'gral', true);
INSERT INTO stopwords VALUES (127, 'dos', 'gral', true);
INSERT INTO stopwords VALUES (128, 'durante', 'gral', true);
INSERT INTO stopwords VALUES (129, 'e', 'gral', true);
INSERT INTO stopwords VALUES (130, 'ejemplo', 'gral', true);
INSERT INTO stopwords VALUES (131, 'el', 'gral', true);
INSERT INTO stopwords VALUES (132, 'ella', 'gral', true);
INSERT INTO stopwords VALUES (133, 'ellas', 'gral', true);
INSERT INTO stopwords VALUES (134, 'ello', 'gral', true);
INSERT INTO stopwords VALUES (135, 'ellos', 'gral', true);
INSERT INTO stopwords VALUES (136, 'embargo', 'gral', true);
INSERT INTO stopwords VALUES (137, 'en', 'gral', true);
INSERT INTO stopwords VALUES (138, 'encuentra', 'gral', true);
INSERT INTO stopwords VALUES (139, 'entonces', 'gral', true);
INSERT INTO stopwords VALUES (140, 'entre', 'gral', true);
INSERT INTO stopwords VALUES (141, 'era', 'gral', true);
INSERT INTO stopwords VALUES (142, 'eran', 'gral', true);
INSERT INTO stopwords VALUES (143, 'es', 'gral', true);
INSERT INTO stopwords VALUES (144, 'esa', 'gral', true);
INSERT INTO stopwords VALUES (145, 'esas', 'gral', true);
INSERT INTO stopwords VALUES (146, 'ese', 'gral', true);
INSERT INTO stopwords VALUES (147, 'eso', 'gral', true);
INSERT INTO stopwords VALUES (148, 'esos', 'gral', true);
INSERT INTO stopwords VALUES (149, 'está', 'gral', true);
INSERT INTO stopwords VALUES (150, 'están', 'gral', true);
INSERT INTO stopwords VALUES (151, 'esta', 'gral', true);
INSERT INTO stopwords VALUES (152, 'estaba', 'gral', true);
INSERT INTO stopwords VALUES (153, 'estaban', 'gral', true);
INSERT INTO stopwords VALUES (154, 'estamos', 'gral', true);
INSERT INTO stopwords VALUES (155, 'estar', 'gral', true);
INSERT INTO stopwords VALUES (156, 'estará', 'gral', true);
INSERT INTO stopwords VALUES (157, 'estas', 'gral', true);
INSERT INTO stopwords VALUES (158, 'este', 'gral', true);
INSERT INTO stopwords VALUES (159, 'esto', 'gral', true);
INSERT INTO stopwords VALUES (160, 'estos', 'gral', true);
INSERT INTO stopwords VALUES (161, 'estoy', 'gral', true);
INSERT INTO stopwords VALUES (162, 'estuvo', 'gral', true);
INSERT INTO stopwords VALUES (163, 'ex', 'gral', true);
INSERT INTO stopwords VALUES (164, 'existe', 'gral', true);
INSERT INTO stopwords VALUES (165, 'existen', 'gral', true);
INSERT INTO stopwords VALUES (166, 'explicó', 'gral', true);
INSERT INTO stopwords VALUES (167, 'expresó', 'gral', true);
INSERT INTO stopwords VALUES (168, 'fin', 'gral', true);
INSERT INTO stopwords VALUES (169, 'fue', 'gral', true);
INSERT INTO stopwords VALUES (170, 'fuera', 'gral', true);
INSERT INTO stopwords VALUES (171, 'fueron', 'gral', true);
INSERT INTO stopwords VALUES (172, 'gran', 'gral', true);
INSERT INTO stopwords VALUES (173, 'grandes', 'gral', true);
INSERT INTO stopwords VALUES (174, 'ha', 'gral', true);
INSERT INTO stopwords VALUES (175, 'había', 'gral', true);
INSERT INTO stopwords VALUES (176, 'habían', 'gral', true);
INSERT INTO stopwords VALUES (177, 'haber', 'gral', true);
INSERT INTO stopwords VALUES (178, 'habrá', 'gral', true);
INSERT INTO stopwords VALUES (179, 'hace', 'gral', true);
INSERT INTO stopwords VALUES (180, 'hacen', 'gral', true);
INSERT INTO stopwords VALUES (181, 'hacer', 'gral', true);
INSERT INTO stopwords VALUES (182, 'hacerlo', 'gral', true);
INSERT INTO stopwords VALUES (183, 'hacia', 'gral', true);
INSERT INTO stopwords VALUES (184, 'haciendo', 'gral', true);
INSERT INTO stopwords VALUES (185, 'han', 'gral', true);
INSERT INTO stopwords VALUES (186, 'hasta', 'gral', true);
INSERT INTO stopwords VALUES (187, 'hay', 'gral', true);
INSERT INTO stopwords VALUES (188, 'haya', 'gral', true);
INSERT INTO stopwords VALUES (189, 'he', 'gral', true);
INSERT INTO stopwords VALUES (190, 'hecho', 'gral', true);
INSERT INTO stopwords VALUES (191, 'hemos', 'gral', true);
INSERT INTO stopwords VALUES (192, 'hicieron', 'gral', true);
INSERT INTO stopwords VALUES (193, 'hizo', 'gral', true);
INSERT INTO stopwords VALUES (194, 'hoy', 'gral', true);
INSERT INTO stopwords VALUES (195, 'hubo', 'gral', true);
INSERT INTO stopwords VALUES (196, 'igual', 'gral', true);
INSERT INTO stopwords VALUES (197, 'incluso', 'gral', true);
INSERT INTO stopwords VALUES (198, 'indicó', 'gral', true);
INSERT INTO stopwords VALUES (199, 'informó', 'gral', true);
INSERT INTO stopwords VALUES (200, 'junto', 'gral', true);
INSERT INTO stopwords VALUES (201, 'la', 'gral', true);
INSERT INTO stopwords VALUES (202, 'lado', 'gral', true);
INSERT INTO stopwords VALUES (203, 'las', 'gral', true);
INSERT INTO stopwords VALUES (204, 'le', 'gral', true);
INSERT INTO stopwords VALUES (205, 'les', 'gral', true);
INSERT INTO stopwords VALUES (206, 'llegó', 'gral', true);
INSERT INTO stopwords VALUES (207, 'lleva', 'gral', true);
INSERT INTO stopwords VALUES (208, 'llevar', 'gral', true);
INSERT INTO stopwords VALUES (209, 'lo', 'gral', true);
INSERT INTO stopwords VALUES (210, 'los', 'gral', true);
INSERT INTO stopwords VALUES (211, 'luego', 'gral', true);
INSERT INTO stopwords VALUES (212, 'lugar', 'gral', true);
INSERT INTO stopwords VALUES (213, 'más', 'gral', true);
INSERT INTO stopwords VALUES (214, 'manera', 'gral', true);
INSERT INTO stopwords VALUES (215, 'manifestó', 'gral', true);
INSERT INTO stopwords VALUES (216, 'mayor', 'gral', true);
INSERT INTO stopwords VALUES (217, 'me', 'gral', true);
INSERT INTO stopwords VALUES (218, 'mediante', 'gral', true);
INSERT INTO stopwords VALUES (219, 'mejor', 'gral', true);
INSERT INTO stopwords VALUES (220, 'mencionó', 'gral', true);
INSERT INTO stopwords VALUES (221, 'menos', 'gral', true);
INSERT INTO stopwords VALUES (222, 'mi', 'gral', true);
INSERT INTO stopwords VALUES (223, 'mientras', 'gral', true);
INSERT INTO stopwords VALUES (224, 'misma', 'gral', true);
INSERT INTO stopwords VALUES (225, 'mismas', 'gral', true);
INSERT INTO stopwords VALUES (226, 'mismo', 'gral', true);
INSERT INTO stopwords VALUES (227, 'mismos', 'gral', true);
INSERT INTO stopwords VALUES (228, 'momento', 'gral', true);
INSERT INTO stopwords VALUES (229, 'mucha', 'gral', true);
INSERT INTO stopwords VALUES (230, 'muchas', 'gral', true);
INSERT INTO stopwords VALUES (231, 'mucho', 'gral', true);
INSERT INTO stopwords VALUES (232, 'muchos', 'gral', true);
INSERT INTO stopwords VALUES (233, 'muy', 'gral', true);
INSERT INTO stopwords VALUES (234, 'nada', 'gral', true);
INSERT INTO stopwords VALUES (235, 'nadie', 'gral', true);
INSERT INTO stopwords VALUES (236, 'ni', 'gral', true);
INSERT INTO stopwords VALUES (237, 'ningún', 'gral', true);
INSERT INTO stopwords VALUES (238, 'ninguna', 'gral', true);
INSERT INTO stopwords VALUES (239, 'ningunas', 'gral', true);
INSERT INTO stopwords VALUES (240, 'ninguno', 'gral', true);
INSERT INTO stopwords VALUES (241, 'ningunos', 'gral', true);
INSERT INTO stopwords VALUES (242, 'no', 'gral', true);
INSERT INTO stopwords VALUES (243, 'nos', 'gral', true);
INSERT INTO stopwords VALUES (244, 'nosotras', 'gral', true);
INSERT INTO stopwords VALUES (245, 'nosotros', 'gral', true);
INSERT INTO stopwords VALUES (246, 'nuestra', 'gral', true);
INSERT INTO stopwords VALUES (247, 'nuestras', 'gral', true);
INSERT INTO stopwords VALUES (248, 'nuestro', 'gral', true);
INSERT INTO stopwords VALUES (249, 'nuestros', 'gral', true);
INSERT INTO stopwords VALUES (250, 'nueva', 'gral', true);
INSERT INTO stopwords VALUES (251, 'nuevas', 'gral', true);
INSERT INTO stopwords VALUES (252, 'nuevo', 'gral', true);
INSERT INTO stopwords VALUES (253, 'nuevos', 'gral', true);
INSERT INTO stopwords VALUES (254, 'nunca', 'gral', true);
INSERT INTO stopwords VALUES (255, 'o', 'gral', true);
INSERT INTO stopwords VALUES (256, 'ocho', 'gral', true);
INSERT INTO stopwords VALUES (257, 'otra', 'gral', true);
INSERT INTO stopwords VALUES (258, 'otras', 'gral', true);
INSERT INTO stopwords VALUES (259, 'otro', 'gral', true);
INSERT INTO stopwords VALUES (260, 'otros', 'gral', true);
INSERT INTO stopwords VALUES (261, 'para', 'gral', true);
INSERT INTO stopwords VALUES (262, 'parece', 'gral', true);
INSERT INTO stopwords VALUES (263, 'parte', 'gral', true);
INSERT INTO stopwords VALUES (264, 'partir', 'gral', true);
INSERT INTO stopwords VALUES (265, 'pasada', 'gral', true);
INSERT INTO stopwords VALUES (266, 'pasado', 'gral', true);
INSERT INTO stopwords VALUES (267, 'pero', 'gral', true);
INSERT INTO stopwords VALUES (268, 'pesar', 'gral', true);
INSERT INTO stopwords VALUES (269, 'poca', 'gral', true);
INSERT INTO stopwords VALUES (270, 'pocas', 'gral', true);
INSERT INTO stopwords VALUES (271, 'poco', 'gral', true);
INSERT INTO stopwords VALUES (272, 'pocos', 'gral', true);
INSERT INTO stopwords VALUES (273, 'podemos', 'gral', true);
INSERT INTO stopwords VALUES (274, 'podrá', 'gral', true);
INSERT INTO stopwords VALUES (275, 'podrán', 'gral', true);
INSERT INTO stopwords VALUES (276, 'podría', 'gral', true);
INSERT INTO stopwords VALUES (277, 'podrían', 'gral', true);
INSERT INTO stopwords VALUES (278, 'poner', 'gral', true);
INSERT INTO stopwords VALUES (279, 'por', 'gral', true);
INSERT INTO stopwords VALUES (280, 'porque', 'gral', true);
INSERT INTO stopwords VALUES (281, 'posible', 'gral', true);
INSERT INTO stopwords VALUES (282, 'próximo', 'gral', true);
INSERT INTO stopwords VALUES (283, 'próximos', 'gral', true);
INSERT INTO stopwords VALUES (284, 'primer', 'gral', true);
INSERT INTO stopwords VALUES (285, 'primera', 'gral', true);
INSERT INTO stopwords VALUES (286, 'primero', 'gral', true);
INSERT INTO stopwords VALUES (287, 'primeros', 'gral', true);
INSERT INTO stopwords VALUES (288, 'principalmente', 'gral', true);
INSERT INTO stopwords VALUES (289, 'propia', 'gral', true);
INSERT INTO stopwords VALUES (290, 'propias', 'gral', true);
INSERT INTO stopwords VALUES (291, 'propio', 'gral', true);
INSERT INTO stopwords VALUES (292, 'propios', 'gral', true);
INSERT INTO stopwords VALUES (293, 'pudo', 'gral', true);
INSERT INTO stopwords VALUES (294, 'pueda', 'gral', true);
INSERT INTO stopwords VALUES (295, 'puede', 'gral', true);
INSERT INTO stopwords VALUES (296, 'pueden', 'gral', true);
INSERT INTO stopwords VALUES (297, 'pues', 'gral', true);
INSERT INTO stopwords VALUES (298, 'qué', 'gral', true);
INSERT INTO stopwords VALUES (299, 'que', 'gral', true);
INSERT INTO stopwords VALUES (300, 'quedó', 'gral', true);
INSERT INTO stopwords VALUES (301, 'queremos', 'gral', true);
INSERT INTO stopwords VALUES (302, 'quién', 'gral', true);
INSERT INTO stopwords VALUES (303, 'quien', 'gral', true);
INSERT INTO stopwords VALUES (304, 'quienes', 'gral', true);
INSERT INTO stopwords VALUES (305, 'quiere', 'gral', true);
INSERT INTO stopwords VALUES (306, 'realizó', 'gral', true);
INSERT INTO stopwords VALUES (307, 'realizado', 'gral', true);
INSERT INTO stopwords VALUES (308, 'realizar', 'gral', true);
INSERT INTO stopwords VALUES (309, 'respecto', 'gral', true);
INSERT INTO stopwords VALUES (310, 'sí', 'gral', true);
INSERT INTO stopwords VALUES (311, 'sólo', 'gral', true);
INSERT INTO stopwords VALUES (312, 'se', 'gral', true);
INSERT INTO stopwords VALUES (313, 'señaló', 'gral', true);
INSERT INTO stopwords VALUES (314, 'sea', 'gral', true);
INSERT INTO stopwords VALUES (315, 'sean', 'gral', true);
INSERT INTO stopwords VALUES (316, 'según', 'gral', true);
INSERT INTO stopwords VALUES (317, 'segunda', 'gral', true);
INSERT INTO stopwords VALUES (318, 'segundo', 'gral', true);
INSERT INTO stopwords VALUES (319, 'seis', 'gral', true);
INSERT INTO stopwords VALUES (320, 'ser', 'gral', true);
INSERT INTO stopwords VALUES (321, 'será', 'gral', true);
INSERT INTO stopwords VALUES (322, 'serán', 'gral', true);
INSERT INTO stopwords VALUES (323, 'sería', 'gral', true);
INSERT INTO stopwords VALUES (324, 'si', 'gral', true);
INSERT INTO stopwords VALUES (325, 'sido', 'gral', true);
INSERT INTO stopwords VALUES (326, 'siempre', 'gral', true);
INSERT INTO stopwords VALUES (327, 'siendo', 'gral', true);
INSERT INTO stopwords VALUES (328, 'siete', 'gral', true);
INSERT INTO stopwords VALUES (329, 'sigue', 'gral', true);
INSERT INTO stopwords VALUES (330, 'siguiente', 'gral', true);
INSERT INTO stopwords VALUES (331, 'sin', 'gral', true);
INSERT INTO stopwords VALUES (332, 'sino', 'gral', true);
INSERT INTO stopwords VALUES (333, 'sobre', 'gral', true);
INSERT INTO stopwords VALUES (334, 'sola', 'gral', true);
INSERT INTO stopwords VALUES (335, 'solamente', 'gral', true);
INSERT INTO stopwords VALUES (336, 'solas', 'gral', true);
INSERT INTO stopwords VALUES (337, 'solo', 'gral', true);
INSERT INTO stopwords VALUES (338, 'solos', 'gral', true);
INSERT INTO stopwords VALUES (339, 'son', 'gral', true);
INSERT INTO stopwords VALUES (340, 'su', 'gral', true);
INSERT INTO stopwords VALUES (341, 'sus', 'gral', true);
INSERT INTO stopwords VALUES (342, 'tal', 'gral', true);
INSERT INTO stopwords VALUES (343, 'también', 'gral', true);
INSERT INTO stopwords VALUES (344, 'tampoco', 'gral', true);
INSERT INTO stopwords VALUES (345, 'tan', 'gral', true);
INSERT INTO stopwords VALUES (346, 'tanto', 'gral', true);
INSERT INTO stopwords VALUES (347, 'tenía', 'gral', true);
INSERT INTO stopwords VALUES (348, 'tendrá', 'gral', true);
INSERT INTO stopwords VALUES (349, 'tendrán', 'gral', true);
INSERT INTO stopwords VALUES (350, 'tenemos', 'gral', true);
INSERT INTO stopwords VALUES (351, 'tener', 'gral', true);
INSERT INTO stopwords VALUES (352, 'tenga', 'gral', true);
INSERT INTO stopwords VALUES (353, 'tengo', 'gral', true);
INSERT INTO stopwords VALUES (354, 'tenido', 'gral', true);
INSERT INTO stopwords VALUES (355, 'tercera', 'gral', true);
INSERT INTO stopwords VALUES (356, 'tiene', 'gral', true);
INSERT INTO stopwords VALUES (357, 'tienen', 'gral', true);
INSERT INTO stopwords VALUES (358, 'toda', 'gral', true);
INSERT INTO stopwords VALUES (359, 'todas', 'gral', true);
INSERT INTO stopwords VALUES (360, 'todavía', 'gral', true);
INSERT INTO stopwords VALUES (361, 'todo', 'gral', true);
INSERT INTO stopwords VALUES (362, 'todos', 'gral', true);
INSERT INTO stopwords VALUES (363, 'total', 'gral', true);
INSERT INTO stopwords VALUES (364, 'tras', 'gral', true);
INSERT INTO stopwords VALUES (365, 'trata', 'gral', true);
INSERT INTO stopwords VALUES (366, 'través', 'gral', true);
INSERT INTO stopwords VALUES (367, 'tres', 'gral', true);
INSERT INTO stopwords VALUES (368, 'tuvo', 'gral', true);
INSERT INTO stopwords VALUES (369, 'un', 'gral', true);
INSERT INTO stopwords VALUES (370, 'una', 'gral', true);
INSERT INTO stopwords VALUES (371, 'unas', 'gral', true);
INSERT INTO stopwords VALUES (372, 'uno', 'gral', true);
INSERT INTO stopwords VALUES (373, 'unos', 'gral', true);
INSERT INTO stopwords VALUES (374, 'usted', 'gral', true);
INSERT INTO stopwords VALUES (375, 'va', 'gral', true);
INSERT INTO stopwords VALUES (376, 'vamos', 'gral', true);
INSERT INTO stopwords VALUES (377, 'van', 'gral', true);
INSERT INTO stopwords VALUES (378, 'varias', 'gral', true);
INSERT INTO stopwords VALUES (379, 'varios', 'gral', true);
INSERT INTO stopwords VALUES (380, 'veces', 'gral', true);
INSERT INTO stopwords VALUES (381, 'ver', 'gral', true);
INSERT INTO stopwords VALUES (382, 'vez', 'gral', true);
INSERT INTO stopwords VALUES (383, 'y', 'gral', true);
INSERT INTO stopwords VALUES (384, 'ya', 'gral', true);
INSERT INTO stopwords VALUES (385, 'yo', 'gral', true);


--
-- TOC entry 2138 (class 0 OID 0)
-- Dependencies: 186
-- Name: stopwords_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('stopwords_id_seq', 399, true);


-- Completed on 2016-09-30 21:29:53

--
-- PostgreSQL database dump complete
--

