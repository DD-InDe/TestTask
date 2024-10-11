--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0 (Debian 17.0-1.pgdg120+1)
-- Dumped by pg_dump version 17.0

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: grpc_db; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE grpc_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.utf8';


ALTER DATABASE grpc_db OWNER TO postgres;

\connect grpc_db

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO postgres;

--
-- Name: grpc_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.grpc_data (
    "PacketSeqNum" integer NOT NULL,
    "RecordSeqNum" integer NOT NULL,
    "PacketTimeStamp" timestamp without time zone NOT NULL,
    "RecordTimeStamp" timestamp without time zone NOT NULL,
    "Decimal1" numeric NOT NULL,
    "Decimal2" numeric NOT NULL,
    "Decimal3" numeric NOT NULL,
    "Decimal4" numeric NOT NULL
);


ALTER TABLE public.grpc_data OWNER TO postgres;

--
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20241011143608_CreateTable', '8.0.10');


--
-- Data for Name: grpc_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (1, 1, '2024-10-11 18:28:49', '2024-10-11 18:38:21.413963', -41669438.7930686, -30234441.7836254, 13268963.0083458, 22963338.6203163);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (1, 2, '2024-10-11 18:28:49', '2024-10-11 18:38:21.415294', 33497539.7782857, 62596491.7414236, 39802735.4157814, 46552583.3061944);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (1, 3, '2024-10-11 18:28:49', '2024-10-11 18:38:21.415296', -1395266.29300773, -48315049.0979053, 77999021.8283208, -11244292.0601126);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (1, 4, '2024-10-11 18:28:49', '2024-10-11 18:38:21.415297', 44673309.8675454, 56230728.4095555, -14195826.9284015, 87458131.5670146);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 1, '2024-10-11 16:44:40', '2024-10-11 16:44:40.519629', -961659934, -365834532, -871399146, -1368222270);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 2, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520198', 211878650, -473103238, -1095809826, -2054696685);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 3, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520199', -2088910803, 846117010, 1635078527, -1348483474);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 4, '2024-10-11 16:44:40', '2024-10-11 16:44:40.5202', 337612607, 1526071356, -282583992, 29668424);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 5, '2024-10-11 16:44:40', '2024-10-11 16:44:40.5202', 1793377371, 1181464835, -234728594, 159361862);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 6, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520201', -1791435618, 487977700, 976124239, -1569530291);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 7, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520201', 1404937558, 1996581903, 1545067451, -1424202348);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 8, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520202', -1058631079, -1211208576, -1076809192, 1326591044);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 9, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520203', -1597932529, -281418230, -1678571801, 1488941958);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 10, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520203', -1078678195, -115672763, -456241473, 1557749930);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 11, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520203', 1311590995, -2060910641, 837838672, -28485024);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (2, 12, '2024-10-11 16:44:40', '2024-10-11 16:44:40.520203', 143657625, 1278122027, 756623502, 1985488153);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 1, '2024-10-11 16:51:30', '2024-10-11 16:51:30.741533', 1767765360, -1526214524, 895071538, -1523920375);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 2, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742057', -1092503244, 1597326676, 203150870, 1697237832);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 3, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742058', -615508527, 1956712660, 1850390732, -2064760302);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 4, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742058', -903165479, -308242594, 82390741, -1700963080);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 5, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742059', 462282044, 211971782, 470270604, -96760064);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 6, '2024-10-11 16:51:30', '2024-10-11 16:51:30.74206', -2059344114, -1274697765, 1955864541, -367822651);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 7, '2024-10-11 16:51:30', '2024-10-11 16:51:30.74206', 482317719, -1349428775, 917497971, -663062580);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 8, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742061', -458172488, 1598509827, -1358083751, 546875648);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 9, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742061', 1839463638, -1828491371, 1516714806, -1561176308);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 10, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742061', 1348193409, -149663733, -1153165473, -1682231256);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 11, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742061', 1061946694, 472213221, -1015682287, 1397372829);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (3, 12, '2024-10-11 16:51:30', '2024-10-11 16:51:30.742062', -1413431266, 531242143, 1265541561, -1391695715);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 1, '2024-10-11 16:56:55', '2024-10-11 16:56:55.983045', -1002688991, -2094558509, 941174536, -1945815399);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 2, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984012', -645848643, 822008477, -1529235828, -2137516396);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 3, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984016', -424146088, -334838320, -686665847, -1714501351);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 4, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984016', -89608145, 2000504541, 1522440553, 2012258704);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 5, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984017', 438994616, -1400656651, 1944874220, 134811548);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 6, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984019', 1621689662, -1100082366, -1442584393, -1888345717);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 7, '2024-10-11 16:56:55', '2024-10-11 16:56:55.98402', -1048429710, -2000790677, -671557826, 447286951);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 8, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984022', 1560681750, -613257513, 1822618868, 1117430680);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 9, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984023', -118602284, -1901360167, 1365415318, 406221282);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 10, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984023', -1512334649, 1276316993, -133246131, 865086385);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 11, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984024', 426472922, -1838391830, 1716888594, -1047847662);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (4, 12, '2024-10-11 16:56:55', '2024-10-11 16:56:55.984024', -127668903, -613484387, 1359664622, 1352948414);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 1, '2024-10-11 17:35:17', '2024-10-11 17:35:17.607845', 148115380, 1921861667, 288680880, 1690757332);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 2, '2024-10-11 17:35:17', '2024-10-11 17:35:17.60875', 1491348020, -1939311752, -72515249, 1503142928);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 3, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608752', 283080584, 1646940999, 315647566, 2044681018);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 4, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608752', 48704086, -1394021828, -1534342330, -356775112);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 5, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608753', 126621018, 899474123, 1559343384, -110618107);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 6, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608754', -605013292, 728029679, 1147963758, 922811928);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 7, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608754', 799050243, -443630467, 1564558055, -154404590);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 8, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608755', -1889315164, 512685593, 1598408172, -1756477360);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 9, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608755', 845469844, -1413946324, 1075222733, -1119219412);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 10, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608756', -1048159224, 1068741375, -1115150708, -1349998345);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 11, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608756', 671584788, 2118007031, 821965055, 1113840800);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (5, 12, '2024-10-11 17:35:17', '2024-10-11 17:35:17.608756', -306867246, 1939952470, -1865321284, -1847054040);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 1, '2024-10-11 17:44:02', '2024-10-11 17:44:02.285387', -252806626, -333454230, 1411903629, 1335392491);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 2, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286027', 1164572146, -769726388, 301841048, -2068306216);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 3, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286029', 1258622473, -51390141, 483070353, 1489297889);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 4, '2024-10-11 17:44:02', '2024-10-11 17:44:02.28603', 1400162807, -295667445, 1483246134, -959813725);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 5, '2024-10-11 17:44:02', '2024-10-11 17:44:02.28603', 95845875, 612565780, -2036341205, 1151056251);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 6, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286032', -2112258959, 1455366274, -1993008321, -394182694);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 7, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286032', -795307881, -49661347, 562129503, -1308035912);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 8, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286034', -541003944, -1680801128, 640824817, -301739241);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 9, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286034', -1554117588, 2093615594, -2122269855, 1841301155);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 10, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286035', 1903877655, -192290594, 161368258, -50077653);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 11, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286035', 1249725918, -1053249190, -853755533, -382676858);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (6, 12, '2024-10-11 17:44:02', '2024-10-11 17:44:02.286035', -2010617557, -1852578695, -1660902185, -2128312096);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 1, '2024-10-11 18:12:36', '2024-10-11 18:12:36.465616', 690790453, 1541921112, 1414498612, -928049498);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 2, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466346', -435105266, 2114582130, -1805418681, 1269335239);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 3, '2024-10-11 18:12:36', '2024-10-11 18:12:36.46635', -1650667942, 1813186748, -1695235223, -296028560);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 4, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466351', 2132195072, -1819569567, 30192053, 427669531);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 5, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466351', -63279659, -1610937005, 1915384734, 153122331);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 6, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466354', -576671523, -207784638, -1618648043, 1844492662);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 7, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466354', 47249992, 9332845, -407959939, 1958680016);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 8, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466357', -1760245357, 591539807, 593687580, -1711863027);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 9, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466357', -1290313881, 1140426061, 1385008602, -28683288);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 10, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466358', 1709599943, -1352906549, -126609000, -513545139);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 11, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466358', 721420561, -934617112, 1424334059, -894634396);
INSERT INTO public.grpc_data ("PacketSeqNum", "RecordSeqNum", "PacketTimeStamp", "RecordTimeStamp", "Decimal1", "Decimal2", "Decimal3", "Decimal4") VALUES (7, 12, '2024-10-11 18:12:36', '2024-10-11 18:12:36.466358', 1953859086, -615608919, 1734049784, -1506548996);


--
-- Name: grpc_data PK_GrpcData; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.grpc_data
    ADD CONSTRAINT "PK_GrpcData" PRIMARY KEY ("PacketSeqNum", "RecordSeqNum");


--
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- PostgreSQL database dump complete
--

