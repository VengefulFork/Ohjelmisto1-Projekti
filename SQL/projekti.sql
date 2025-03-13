-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               11.6.2-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table peli_projekti.airport
CREATE TABLE IF NOT EXISTS `airport` (
  `id` int(11) NOT NULL,
  `ident` varchar(40) NOT NULL,
  `type` varchar(40) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `latitude_deg` double DEFAULT NULL,
  `longitude_deg` double DEFAULT NULL,
  `elevation_ft` int(11) DEFAULT NULL,
  `continent` varchar(40) DEFAULT NULL,
  `iso_country` varchar(40) DEFAULT NULL,
  `iso_region` varchar(40) DEFAULT NULL,
  `municipality` varchar(40) DEFAULT NULL,
  `scheduled_service` varchar(40) DEFAULT NULL,
  `gps_code` varchar(40) DEFAULT NULL,
  `iata_code` varchar(40) DEFAULT NULL,
  `local_code` varchar(40) DEFAULT NULL,
  `home_link` varchar(40) DEFAULT NULL,
  `wikipedia_link` varchar(40) DEFAULT NULL,
  `keywords` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table peli_projekti.airport: ~21 rows (approximately)
INSERT INTO `airport` (`id`, `ident`, `type`, `name`, `latitude_deg`, `longitude_deg`, `elevation_ft`, `continent`, `iso_country`, `iso_region`, `municipality`, `scheduled_service`, `gps_code`, `iata_code`, `local_code`, `home_link`, `wikipedia_link`, `keywords`) VALUES
	(123, 'BIKF', 'large_airport', 'Keflavik International Airport', 63.985001, -22.6056, 171, 'EU', 'IS', 'IS-2', 'Reykjavík', 'yes', 'BIKF', 'KEF', '', 'https://www.isavia.is/en/keflavik-airpor', 'https://en.wikipedia.org/wiki/Keflav%C3%', 'Keflavik Naval Air Station,REK'),
	(301881, 'EDDB', 'large_airport', 'Berlin Brandenburg Airport', 52.351389, 13.493889, 157, 'EU', 'DE', 'DE-BR', 'Berlin', 'yes', 'EDDB', 'BER', '', 'https://ber.berlin-airport.de/', 'https://en.wikipedia.org/wiki/Berlin_Bra', ''),
	(2307, 'EFHK', 'large_airport', 'Helsinki Vantaa Airport', 60.3172, 24.963301, 179, 'EU', 'FI', 'FI-18', 'Helsinki', 'yes', 'EFHK', 'HEL', '', 'http://www.finavia.fi/en/helsinki-airpor', 'https://en.wikipedia.org/wiki/Helsinki_A', ''),
	(2325, 'EFKT', 'medium_airport', 'Kittilä Airport', 67.700996398926, 24.846799850464, 644, 'EU', 'FI', 'FI-10', 'Kittilä', 'yes', 'EFKT', 'KTT', '', 'http://www.finavia.fi/en/kittila/', 'https://en.wikipedia.org/wiki/Kittil%C3%', ''),
	(2434, 'EGLL', 'large_airport', 'London Heathrow Airport', 51.4706, -0.461941, 83, 'EU', 'GB', 'GB-ENG', 'London', 'yes', 'EGLL', 'LHR', '', 'http://www.heathrowairport.com/', 'https://en.wikipedia.org/wiki/Heathrow_A', 'LON, Londres'),
	(2459, 'EGPD', 'medium_airport', 'Aberdeen Dyce Airport', 57.2019, -2.19778, 215, 'EU', 'GB', 'GB-SCT', 'Aberdeen', 'yes', 'EGPD', 'ABZ', '', 'http://www.aberdeenairport.com/', 'https://en.wikipedia.org/wiki/Aberdeen_A', ''),
	(2513, 'EHAM', 'large_airport', 'Amsterdam Airport Schiphol', 52.308601, 4.76389, -11, 'EU', 'NL', 'NL-NH', 'Amsterdam', 'yes', 'EHAM', 'AMS', '', 'http://www.schiphol.nl/', 'https://en.wikipedia.org/wiki/Amsterdam_', ''),
	(2541, 'EKBI', 'large_airport', 'Billund Airport', 55.7402992249, 9.15178012848, 247, 'EU', 'DK', 'DK-83', 'Billund', 'yes', 'EKBI', 'BLL', '', 'http://www.billund-airport.dk/?sc_lang=e', 'https://en.wikipedia.org/wiki/Billund_Ai', ''),
	(2578, 'ENGM', 'large_airport', 'Oslo Airport, Gardermoen', 60.193901, 11.1004, 681, 'EU', 'NO', 'NO-30', 'Oslo', 'yes', 'ENGM', 'OSL', '', 'https://avinor.no/en/airport/oslo-airpor', 'https://en.wikipedia.org/wiki/Oslo_Airpo', ''),
	(2599, 'ENTC', 'large_airport', 'Tromsø Airport, Langnes', 69.683296, 18.9189, 31, 'EU', 'NO', 'NO-54', 'Tromsø', 'yes', 'ENTC', 'TOS', '', 'http://www.avinor.no/en/airport/tromso', 'https://en.wikipedia.org/wiki/Troms%C3%B', 'Langnes, Tromsøya, Tromso'),
	(2637, 'EPWA', 'large_airport', 'Warsaw Chopin Airport', 52.1656990051, 20.967100143399996, 362, 'EU', 'PL', 'PL-MZ', 'Warsaw', 'yes', 'EPWA', 'WAW', '', 'http://www.lotnisko-chopina.pl/?lang=en', 'https://en.wikipedia.org/wiki/Warsaw_Fre', 'Ok?cie'),
	(2701, 'ESSA', 'large_airport', 'Stockholm-Arlanda Airport', 59.651901245117, 17.918600082397, 137, 'EU', 'SE', 'SE-AB', 'Stockholm', 'yes', 'ESSA', 'ARN', '', 'http://www.swedavia.se/arlanda/', 'https://en.wikipedia.org/wiki/Stockholm-', ''),
	(2758, 'EVRA', 'large_airport', 'Riga International Airport', 56.92359924316406, 23.971099853515625, 36, 'EU', 'LV', 'LV-RIX', 'Riga', 'yes', 'EVRA', 'RIX', '', 'http://www.riga-airport.com/', 'https://en.wikipedia.org/wiki/Riga_Inter', ''),
	(4019, 'LEMD', 'large_airport', 'Adolfo Suárez Madrid–Barajas Airport', 40.471926, -3.56264, 1998, 'EU', 'ES', 'ES-M', 'Madrid', 'yes', 'LEMD', 'MAD', '', 'https://www.aena.es/en/adolfo-suarez-mad', 'https://en.wikipedia.org/wiki/Adolfo_Su%', 'Leganés, Madrid Barajas International Ai'),
	(4185, 'LFPG', 'large_airport', 'Charles de Gaulle International Airport', 49.012798, 2.55, 392, 'EU', 'FR', 'FR-IDF', 'Paris', 'yes', 'LFPG', 'CDG', '', 'http://www.aeroportsdeparis.fr/', 'https://en.wikipedia.org/wiki/Charles_de', 'PAR, Aéroport Roissy-Charles de Gaulle, '),
	(4251, 'LGAV', 'large_airport', 'Athens Eleftherios Airport', 37.936401, 23.9445, 308, 'EU', 'GR', 'GR-A1', 'Athens', 'yes', 'LGAV', 'ATH', '', 'http://www.aia.gr', 'https://en.wikipedia.org/wiki/Athens_Int', ''),
	(4372, 'LIRF', 'large_airport', 'Rome Fiumicino Airport', 41.804532, 12.251998, 13, 'EU', 'IT', 'IT-62', 'Rome', 'yes', 'LIRF', 'FCO', 'RM11', 'http://www.adr.it/portal/portal/adr/Fium', 'https://en.wikipedia.org/wiki/Leonardo_d', 'ROM, Rome Fiumicino Airport, Fiumicino A'),
	(4434, 'LOWW', 'large_airport', 'Vienna International Airport', 48.110298, 16.5697, 600, 'EU', 'AT', 'AT-9', 'Vienna', 'yes', 'LOWW', 'VIE', '', 'http://www.viennaairport.com/en/', 'https://en.wikipedia.org/wiki/Vienna_Int', ''),
	(4469, 'LQSA', 'medium_airport', 'Sarajevo International Airport', 43.8246, 18.331499, 1708, 'EU', 'BA', 'BA-BIH', 'Sarajevo', 'yes', 'LQSA', 'SJJ', '', 'http://www.sarajevo-airport.ba/', 'https://en.wikipedia.org/wiki/Sarajevo_I', ''),
	(4474, 'LRBS', 'medium_airport', 'Baneasa International Airport', 44.503201, 26.1021, 297, 'EU', 'RO', 'RO-B', 'Bucharest', 'no', 'LRBS', 'BBU', '', 'http://www.baneasa-airport.ro/', 'https://en.wikipedia.org/wiki/Aurel_Vlai', 'BUH, Aurel Vlaicu International Airport'),
	(4505, 'LSZH', 'large_airport', 'Zürich Airport', 47.458056, 8.548056, 1417, 'EU', 'CH', 'CH-ZH', 'Zurich', 'yes', 'LSZH', 'ZRH', '', 'http://www.zurich-airport.com/', 'https://en.wikipedia.org/wiki/Zurich_Air', '');

-- Dumping structure for table peli_projekti.country
CREATE TABLE IF NOT EXISTS `country` (
  `iso_country` varchar(40) NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `continent` varchar(40) DEFAULT NULL,
  `wikipedia_link` varchar(40) DEFAULT NULL,
  `keywords` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`iso_country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table peli_projekti.country: ~248 rows (approximately)
INSERT INTO `country` (`iso_country`, `name`, `continent`, `wikipedia_link`, `keywords`) VALUES
	('AD', 'Andorra', 'EU', 'https://en.wikipedia.org/wiki/Andorra', '\r'),
	('AE', 'United Arab Emirates', 'AS', 'https://en.wikipedia.org/wiki/United_Ara', 'UAE'),
	('AF', 'Afghanistan', 'AS', 'https://en.wikipedia.org/wiki/Afghanista', '\r'),
	('AG', 'Antigua and Barbuda', 'NA', 'https://en.wikipedia.org/wiki/Antigua_an', '\r'),
	('AI', 'Anguilla', 'NA', 'https://en.wikipedia.org/wiki/Anguilla', '\r'),
	('AL', 'Albania', 'EU', 'https://en.wikipedia.org/wiki/Albania', '\r'),
	('AM', 'Armenia', 'AS', 'https://en.wikipedia.org/wiki/Armenia', '\r'),
	('AO', 'Angola', 'AF', 'https://en.wikipedia.org/wiki/Angola', '\r'),
	('AQ', 'Antarctica', 'AN', 'https://en.wikipedia.org/wiki/Antarctica', '\r'),
	('AR', 'Argentina', 'SA', 'https://en.wikipedia.org/wiki/Argentina', 'Aeropuertos de Argentina\r'),
	('AS', 'American Samoa', 'OC', 'https://en.wikipedia.org/wiki/American_S', '\r'),
	('AT', 'Austria', 'EU', 'https://en.wikipedia.org/wiki/Austria', 'Flughäfen in Österreich\r'),
	('AU', 'Australia', 'OC', 'https://en.wikipedia.org/wiki/Australia', '\r'),
	('AW', 'Aruba', 'NA', 'https://en.wikipedia.org/wiki/Aruba', '\r'),
	('AZ', 'Azerbaijan', 'AS', 'https://en.wikipedia.org/wiki/Azerbaijan', '\r'),
	('BA', 'Bosnia and Herzegovina', 'EU', 'https://en.wikipedia.org/wiki/Bosnia_and', '\r'),
	('BB', 'Barbados', 'NA', 'https://en.wikipedia.org/wiki/Barbados', '\r'),
	('BD', 'Bangladesh', 'AS', 'https://en.wikipedia.org/wiki/Bangladesh', '\r'),
	('BE', 'Belgium', 'EU', 'https://en.wikipedia.org/wiki/Belgium', 'Aéroports de Belgique'),
	('BF', 'Burkina Faso', 'AF', 'https://en.wikipedia.org/wiki/Burkina_Fa', '\r'),
	('BG', 'Bulgaria', 'EU', 'https://en.wikipedia.org/wiki/Bulgaria', '\r'),
	('BH', 'Bahrain', 'AS', 'https://en.wikipedia.org/wiki/Bahrain', '?????? ???????\r'),
	('BI', 'Burundi', 'AF', 'https://en.wikipedia.org/wiki/Burundi', '\r'),
	('BJ', 'Benin', 'AF', 'https://en.wikipedia.org/wiki/Benin', '\r'),
	('BL', 'Saint Barthélemy', 'NA', 'https://en.wikipedia.org/wiki/Saint_Bart', '\r'),
	('BM', 'Bermuda', 'NA', 'https://en.wikipedia.org/wiki/Bermuda', '\r'),
	('BN', 'Brunei', 'AS', 'https://en.wikipedia.org/wiki/Brunei', '\r'),
	('BO', 'Bolivia', 'SA', 'https://en.wikipedia.org/wiki/Bolivia', 'Aeropuertos de Bolivia\r'),
	('BQ', 'Caribbean Netherlands', 'NA', 'https://en.wikipedia.org/wiki/Caribbean_', '\r'),
	('BR', 'Brazil', 'SA', 'https://en.wikipedia.org/wiki/Brazil', 'Brasil'),
	('BS', 'Bahamas', 'NA', 'https://en.wikipedia.org/wiki/Bahamas', '\r'),
	('BT', 'Bhutan', 'AS', 'https://en.wikipedia.org/wiki/Bhutan', '\r'),
	('BW', 'Botswana', 'AF', 'https://en.wikipedia.org/wiki/Botswana', '\r'),
	('BY', 'Belarus', 'EU', 'https://en.wikipedia.org/wiki/Belarus', 'Belarussian'),
	('BZ', 'Belize', 'NA', 'https://en.wikipedia.org/wiki/Belize', '\r'),
	('CA', 'Canada', 'NA', 'https://en.wikipedia.org/wiki/Canada', '\r'),
	('CC', 'Cocos (Keeling) Islands', 'AS', 'https://en.wikipedia.org/wiki/Cocos_(Kee', '\r'),
	('CD', 'Congo (Kinshasa)', 'AF', 'https://en.wikipedia.org/wiki/Congo_(Kin', '\r'),
	('CF', 'Central African Republic', 'AF', 'https://en.wikipedia.org/wiki/Central_Af', '\r'),
	('CG', 'Congo (Brazzaville)', 'AF', 'https://en.wikipedia.org/wiki/Congo_(Bra', '\r'),
	('CH', 'Switzerland', 'EU', 'https://en.wikipedia.org/wiki/Switzerlan', 'Aéroports de la Suisse'),
	('CI', 'Côte d\'Ivoire', 'AF', 'https://en.wikipedia.org/wiki/Côte_d\'Ivo', 'Ivory Coast\r'),
	('CK', 'Cook Islands', 'OC', 'https://en.wikipedia.org/wiki/Cook_Islan', '\r'),
	('CL', 'Chile', 'SA', 'https://en.wikipedia.org/wiki/Chile', 'Aeropuertos de Chile\r'),
	('CM', 'Cameroon', 'AF', 'https://en.wikipedia.org/wiki/Cameroon', '\r'),
	('CN', 'China', 'AS', 'https://en.wikipedia.org/wiki/China', '?????\r'),
	('CO', 'Colombia', 'SA', 'https://en.wikipedia.org/wiki/Colombia', 'Aeropuertos de Colombia\r'),
	('CR', 'Costa Rica', 'NA', 'https://en.wikipedia.org/wiki/Costa_Rica', 'Aeropuertos de Costa Rica\r'),
	('CU', 'Cuba', 'NA', 'https://en.wikipedia.org/wiki/Cuba', 'Aeropuertos de Cuba\r'),
	('CV', 'Cape Verde', 'AF', 'https://en.wikipedia.org/wiki/Cape_Verde', '\r'),
	('CW', 'Curaçao', 'NA', 'https://en.wikipedia.org/wiki/Cura%C3%A7', '\r'),
	('CX', 'Christmas Island', 'AS', 'https://en.wikipedia.org/wiki/Christmas_', '\r'),
	('CY', 'Cyprus', 'AS', 'https://en.wikipedia.org/wiki/Cyprus', '\r'),
	('CZ', 'Czech Republic', 'EU', 'https://en.wikipedia.org/wiki/Czech_Repu', 'Letišt? ?eské republiky'),
	('DE', 'Germany', 'EU', 'https://en.wikipedia.org/wiki/Germany', 'Flughäfen in Deutschland\r'),
	('DJ', 'Djibouti', 'AF', 'https://en.wikipedia.org/wiki/Djibouti', '\r'),
	('DK', 'Denmark', 'EU', 'https://en.wikipedia.org/wiki/Denmark', 'Lufthavnene i Danmark\r'),
	('DM', 'Dominica', 'NA', 'https://en.wikipedia.org/wiki/Dominica', '\r'),
	('DO', 'Dominican Republic', 'NA', 'https://en.wikipedia.org/wiki/Dominican_', '\r'),
	('DZ', 'Algeria', 'AF', 'https://en.wikipedia.org/wiki/Algeria', '?????? ???????\r'),
	('EC', 'Ecuador', 'SA', 'https://en.wikipedia.org/wiki/Ecuador', 'Aeropuertos de Ecuador\r'),
	('EE', 'Estonia', 'EU', 'https://en.wikipedia.org/wiki/Estonia', '\r'),
	('EG', 'Egypt', 'AF', 'https://en.wikipedia.org/wiki/Egypt', '?????? ???\r'),
	('EH', 'Western Sahara', 'AF', 'https://en.wikipedia.org/wiki/Western_Sa', 'Sahrawian'),
	('ER', 'Eritrea', 'AF', 'https://en.wikipedia.org/wiki/Eritrea', '\r'),
	('ES', 'Spain', 'EU', 'https://en.wikipedia.org/wiki/Spain', 'Aeropuertos de España\r'),
	('ET', 'Ethiopia', 'AF', 'https://en.wikipedia.org/wiki/Ethiopia', '\r'),
	('FI', 'Finland', 'EU', 'https://en.wikipedia.org/wiki/Finland', 'Lentokentät'),
	('FJ', 'Fiji', 'OC', 'https://en.wikipedia.org/wiki/Fiji', '\r'),
	('FK', 'Falkland Islands', 'SA', 'https://en.wikipedia.org/wiki/Falkland_I', '\r'),
	('FM', 'Micronesia', 'OC', 'https://en.wikipedia.org/wiki/Federated_', '\r'),
	('FO', 'Faroe Islands', 'EU', 'https://en.wikipedia.org/wiki/Faroe_Isla', '\r'),
	('FR', 'France', 'EU', 'https://en.wikipedia.org/wiki/France', 'Aéroports de France\r'),
	('GA', 'Gabon', 'AF', 'https://en.wikipedia.org/wiki/Gabon', '\r'),
	('GB', 'United Kingdom', 'EU', 'https://en.wikipedia.org/wiki/United_Kin', 'Great Britain\r'),
	('GD', 'Grenada', 'NA', 'https://en.wikipedia.org/wiki/Grenada', '\r'),
	('GE', 'Georgia', 'AS', 'https://en.wikipedia.org/wiki/Georgia_(c', '\r'),
	('GF', 'French Guiana', 'SA', 'https://en.wikipedia.org/wiki/French_Gui', 'French Guyana\r'),
	('GG', 'Guernsey', 'EU', 'https://en.wikipedia.org/wiki/Guernsey', '\r'),
	('GH', 'Ghana', 'AF', 'https://en.wikipedia.org/wiki/Ghana', '\r'),
	('GI', 'Gibraltar', 'EU', 'https://en.wikipedia.org/wiki/Gibraltar', '\r'),
	('GL', 'Greenland', 'NA', 'https://en.wikipedia.org/wiki/Greenland', '\r'),
	('GM', 'Gambia', 'AF', 'https://en.wikipedia.org/wiki/Gambia', '\r'),
	('GN', 'Guinea', 'AF', 'https://en.wikipedia.org/wiki/Guinea', 'Aéroports de la Guinée\r'),
	('GP', 'Guadeloupe', 'NA', 'https://en.wikipedia.org/wiki/Guadeloupe', '\r'),
	('GQ', 'Equatorial Guinea', 'AF', 'https://en.wikipedia.org/wiki/Equatorial', '\r'),
	('GR', 'Greece', 'EU', 'https://en.wikipedia.org/wiki/Greece', '?????????? ???? ??????\r'),
	('GS', 'South Georgia and the South Sandwich Isl', 'AN', 'https://en.wikipedia.org/wiki/South_Geor', '\r'),
	('GT', 'Guatemala', 'NA', 'https://en.wikipedia.org/wiki/Guatemala', 'Aeropuertos de Guatemala\r'),
	('GU', 'Guam', 'OC', 'https://en.wikipedia.org/wiki/Guam', '\r'),
	('GW', 'Guinea-Bissau', 'AF', 'https://en.wikipedia.org/wiki/Guinea-Bis', '\r'),
	('GY', 'Guyana', 'SA', 'https://en.wikipedia.org/wiki/Guyana', '\r'),
	('HK', 'Hong Kong', 'AS', 'https://en.wikipedia.org/wiki/Hong_Kong', '\r'),
	('HM', 'Heard and McDonald Islands', 'OC', 'https://en.wikipedia.org/wiki/Heard_Isla', '\r'),
	('HN', 'Honduras', 'NA', 'https://en.wikipedia.org/wiki/Honduras', 'Aeropuertos de Honduras\r'),
	('HR', 'Croatia', 'EU', 'https://en.wikipedia.org/wiki/Croatia', '\r'),
	('HT', 'Haiti', 'NA', 'https://en.wikipedia.org/wiki/Haiti', 'Aéroports de Haïti\r'),
	('HU', 'Hungary', 'EU', 'https://en.wikipedia.org/wiki/Hungary', 'Repül?terek Magyarország\r'),
	('ID', 'Indonesia', 'AS', 'https://en.wikipedia.org/wiki/Indonesia', 'Bandara di Indonesia\r'),
	('IE', 'Ireland', 'EU', 'https://en.wikipedia.org/wiki/Ireland', 'Eire\r'),
	('IL', 'Israel', 'AS', 'https://en.wikipedia.org/wiki/Israel', '???? ?????? ?? ?????\r'),
	('IM', 'Isle of Man', 'EU', 'https://en.wikipedia.org/wiki/Isle_of_Ma', '\r'),
	('IN', 'India', 'AS', 'https://en.wikipedia.org/wiki/India', '\r'),
	('IO', 'British Indian Ocean Territory', 'AS', 'https://en.wikipedia.org/wiki/British_In', '\r'),
	('IQ', 'Iraq', 'AS', 'https://en.wikipedia.org/wiki/Iraq', '?????? ??????\r'),
	('IR', 'Iran', 'AS', 'https://en.wikipedia.org/wiki/Iran', '??????? ??? ?????\r'),
	('IS', 'Iceland', 'EU', 'https://en.wikipedia.org/wiki/Iceland', '\r'),
	('IT', 'Italy', 'EU', 'https://en.wikipedia.org/wiki/Italy', 'Aeroporti d\'Italia\r'),
	('JE', 'Jersey', 'EU', 'https://en.wikipedia.org/wiki/Jersey', '\r'),
	('JM', 'Jamaica', 'NA', 'https://en.wikipedia.org/wiki/Jamaica', '\r'),
	('JO', 'Jordan', 'AS', 'https://en.wikipedia.org/wiki/Jordan', '?????? ?? ??????\r'),
	('JP', 'Japan', 'AS', 'https://en.wikipedia.org/wiki/Japan', 'Nippon'),
	('KE', 'Kenya', 'AF', 'https://en.wikipedia.org/wiki/Kenya', '\r'),
	('KG', 'Kyrgyzstan', 'AS', 'https://en.wikipedia.org/wiki/Kyrgyzstan', '\r'),
	('KH', 'Cambodia', 'AS', 'https://en.wikipedia.org/wiki/Cambodia', '\r'),
	('KI', 'Kiribati', 'OC', 'https://en.wikipedia.org/wiki/Kiribati', '\r'),
	('KM', 'Comoros', 'AF', 'https://en.wikipedia.org/wiki/Comoros', '??? ?????\r'),
	('KN', 'Saint Kitts and Nevis', 'NA', 'https://en.wikipedia.org/wiki/Saint_Kitt', '\r'),
	('KP', 'North Korea', 'AS', 'https://en.wikipedia.org/wiki/North_Kore', '\r'),
	('KR', 'South Korea', 'AS', 'https://en.wikipedia.org/wiki/South_Kore', '??? ??\r'),
	('KW', 'Kuwait', 'AS', 'https://en.wikipedia.org/wiki/Kuwait', '\r'),
	('KY', 'Cayman Islands', 'NA', 'https://en.wikipedia.org/wiki/Cayman_Isl', '\r'),
	('KZ', 'Kazakhstan', 'AS', 'https://en.wikipedia.org/wiki/Kazakhstan', 'Kazakh\r'),
	('LA', 'Laos', 'AS', 'https://en.wikipedia.org/wiki/Laos', '\r'),
	('LB', 'Lebanon', 'AS', 'https://en.wikipedia.org/wiki/Lebanon', '???????? ?? ?????\r'),
	('LC', 'Saint Lucia', 'NA', 'https://en.wikipedia.org/wiki/Saint_Luci', '\r'),
	('LI', 'Liechtenstein', 'EU', 'https://en.wikipedia.org/wiki/Liechtenst', '\r'),
	('LK', 'Sri Lanka', 'AS', 'https://en.wikipedia.org/wiki/Sri_Lanka', '\r'),
	('LR', 'Liberia', 'AF', 'https://en.wikipedia.org/wiki/Liberia', '\r'),
	('LS', 'Lesotho', 'AF', 'https://en.wikipedia.org/wiki/Lesotho', '\r'),
	('LT', 'Lithuania', 'EU', 'https://en.wikipedia.org/wiki/Lithuania', '\r'),
	('LU', 'Luxembourg', 'EU', 'https://en.wikipedia.org/wiki/Luxembourg', '\r'),
	('LV', 'Latvia', 'EU', 'https://en.wikipedia.org/wiki/Latvia', '\r'),
	('LY', 'Libya', 'AF', 'https://en.wikipedia.org/wiki/Libya', '?????? ?? ?????\r'),
	('MA', 'Morocco', 'AF', 'https://en.wikipedia.org/wiki/Morocco', '?????? ??????\r'),
	('MC', 'Monaco', 'EU', 'https://en.wikipedia.org/wiki/Monaco', '\r'),
	('MD', 'Moldova', 'EU', 'https://en.wikipedia.org/wiki/Moldova', '\r'),
	('ME', 'Montenegro', 'EU', 'https://en.wikipedia.org/wiki/Montenegro', '\r'),
	('MF', 'Saint Martin', 'NA', 'https://en.wikipedia.org/wiki/Saint_Mart', '\r'),
	('MG', 'Madagascar', 'AF', 'https://en.wikipedia.org/wiki/Madagascar', '\r'),
	('MH', 'Marshall Islands', 'OC', 'https://en.wikipedia.org/wiki/Marshall_I', '\r'),
	('MK', 'North Macedonia', 'EU', 'https://en.wikipedia.org/wiki/Macedonia', '\r'),
	('ML', 'Mali', 'AF', 'https://en.wikipedia.org/wiki/Mali', 'Aéroports du Mali\r'),
	('MM', 'Burma', 'AS', 'https://en.wikipedia.org/wiki/Burma', 'Myanmar\r'),
	('MN', 'Mongolia', 'AS', 'https://en.wikipedia.org/wiki/Mongolia', '\r'),
	('MO', 'Macau', 'AS', 'https://en.wikipedia.org/wiki/Macau', 'Macao\r'),
	('MP', 'Northern Mariana Islands', 'OC', 'https://en.wikipedia.org/wiki/Northern_M', '\r'),
	('MQ', 'Martinique', 'NA', 'https://en.wikipedia.org/wiki/Martinique', '\r'),
	('MR', 'Mauritania', 'AF', 'https://en.wikipedia.org/wiki/Mauritania', '?????? ?????????\r'),
	('MS', 'Montserrat', 'NA', 'https://en.wikipedia.org/wiki/Montserrat', '\r'),
	('MT', 'Malta', 'EU', 'https://en.wikipedia.org/wiki/Malta', '\r'),
	('MU', 'Mauritius', 'AF', 'https://en.wikipedia.org/wiki/Mauritius', '\r'),
	('MV', 'Maldives', 'AS', 'https://en.wikipedia.org/wiki/Maldives', '\r'),
	('MW', 'Malawi', 'AF', 'https://en.wikipedia.org/wiki/Malawi', '\r'),
	('MX', 'Mexico', 'NA', 'https://en.wikipedia.org/wiki/Mexico', 'Aeropuertos de México\r'),
	('MY', 'Malaysia', 'AS', 'https://en.wikipedia.org/wiki/Malaysia', 'Lapangan Terbang Malaysia\r'),
	('MZ', 'Mozambique', 'AF', 'https://en.wikipedia.org/wiki/Mozambique', '\r'),
	('NA', 'Namibia', 'AF', 'https://en.wikipedia.org/wiki/Namibia', '\r'),
	('NC', 'New Caledonia', 'OC', 'https://en.wikipedia.org/wiki/New_Caledo', '\r'),
	('NE', 'Niger', 'AF', 'https://en.wikipedia.org/wiki/Niger', '\r'),
	('NF', 'Norfolk Island', 'OC', 'https://en.wikipedia.org/wiki/Norfolk_Is', '\r'),
	('NG', 'Nigeria', 'AF', 'https://en.wikipedia.org/wiki/Nigeria', '\r'),
	('NI', 'Nicaragua', 'NA', 'https://en.wikipedia.org/wiki/Nicaragua', 'Aeropuertos de Nicaragua\r'),
	('NL', 'Netherlands', 'EU', 'https://en.wikipedia.org/wiki/Netherland', 'Holland'),
	('NO', 'Norway', 'EU', 'https://en.wikipedia.org/wiki/Norway', 'Flyplasser i Norge\r'),
	('NP', 'Nepal', 'AS', 'https://en.wikipedia.org/wiki/Nepal', '????? ???????????\r'),
	('NR', 'Nauru', 'OC', 'https://en.wikipedia.org/wiki/Nauru', '\r'),
	('NU', 'Niue', 'OC', 'https://en.wikipedia.org/wiki/Niue', '\r'),
	('NZ', 'New Zealand', 'OC', 'https://en.wikipedia.org/wiki/New_Zealan', '\r'),
	('OM', 'Oman', 'AS', 'https://en.wikipedia.org/wiki/Oman', '?????? ????\r'),
	('PA', 'Panama', 'NA', 'https://en.wikipedia.org/wiki/Panama', 'Aeropuertos de Panamá\r'),
	('PE', 'Perú', 'SA', 'https://en.wikipedia.org/wiki/Perú', 'Aeropuertos de Perú\r'),
	('PF', 'French Polynesia', 'OC', 'https://en.wikipedia.org/wiki/French_Pol', '\r'),
	('PG', 'Papua New Guinea', 'OC', 'https://en.wikipedia.org/wiki/Papua_New_', '\r'),
	('PH', 'Philippines', 'AS', 'https://en.wikipedia.org/wiki/Philippine', 'Mga alternatibong byahe mula sa Pilipina'),
	('PK', 'Pakistan', 'AS', 'https://en.wikipedia.org/wiki/Pakistan', '??????? ?? ????? ????\r'),
	('PL', 'Poland', 'EU', 'https://en.wikipedia.org/wiki/Poland', 'Lotniska Polski\r'),
	('PM', 'Saint Pierre and Miquelon', 'NA', 'https://en.wikipedia.org/wiki/Saint_Pier', '\r'),
	('PN', 'Pitcairn', 'OC', 'https://en.wikipedia.org/wiki/Pitcairn', '\r'),
	('PR', 'Puerto Rico', 'NA', 'https://en.wikipedia.org/wiki/Puerto_Ric', '\r'),
	('PS', 'Palestinian Territory', 'AS', 'https://en.wikipedia.org/wiki/Palestinia', '\r'),
	('PT', 'Portugal', 'EU', 'https://en.wikipedia.org/wiki/Portugal', 'Aeroportos do Brasil\r'),
	('PW', 'Palau', 'OC', 'https://en.wikipedia.org/wiki/Palau', '\r'),
	('PY', 'Paraguay', 'SA', 'https://en.wikipedia.org/wiki/Paraguay', 'Aeropuertos de Paraguay\r'),
	('QA', 'Qatar', 'AS', 'https://en.wikipedia.org/wiki/Qatar', '?????? ???\r'),
	('RE', 'Réunion', 'AF', 'https://en.wikipedia.org/wiki/Réunion', 'Île Bourbon'),
	('RO', 'Romania', 'EU', 'https://en.wikipedia.org/wiki/Romania', 'Aeroporturi din România\r'),
	('RS', 'Serbia', 'EU', 'https://en.wikipedia.org/wiki/Serbia', 'Serb\r'),
	('RU', 'Russia', 'EU', 'https://en.wikipedia.org/wiki/Russia', 'Soviet'),
	('RW', 'Rwanda', 'AF', 'https://en.wikipedia.org/wiki/Rwanda', '\r'),
	('SA', 'Saudi Arabia', 'AS', 'https://en.wikipedia.org/wiki/Saudi_Arab', '?????? ??????? ??????? ????????'),
	('SB', 'Solomon Islands', 'OC', 'https://en.wikipedia.org/wiki/Solomon_Is', '\r'),
	('SC', 'Seychelles', 'AF', 'https://en.wikipedia.org/wiki/Seychelles', '\r'),
	('SD', 'Sudan', 'AF', 'https://en.wikipedia.org/wiki/Sudan', '?????? ???????\r'),
	('SE', 'Sweden', 'EU', 'https://en.wikipedia.org/wiki/Sweden', 'Flygplatserna'),
	('SG', 'Singapore', 'AS', 'https://en.wikipedia.org/wiki/Singapore', '\r'),
	('SH', 'Saint Helena', 'AF', 'https://en.wikipedia.org/wiki/Saint_Hele', '\r'),
	('SI', 'Slovenia', 'EU', 'https://en.wikipedia.org/wiki/Slovenia', '\r'),
	('SK', 'Slovakia', 'EU', 'https://en.wikipedia.org/wiki/Slovakia', 'letisko Slovenska\r'),
	('SL', 'Sierra Leone', 'AF', 'https://en.wikipedia.org/wiki/Sierra_Leo', '\r'),
	('SM', 'San Marino', 'EU', 'https://en.wikipedia.org/wiki/San_Marino', '\r'),
	('SN', 'Senegal', 'AF', 'https://en.wikipedia.org/wiki/Senegal', 'Aéroports du Sénégal\r'),
	('SO', 'Somalia', 'AF', 'https://en.wikipedia.org/wiki/Somalia', '\r'),
	('SR', 'Suriname', 'SA', 'https://en.wikipedia.org/wiki/Suriname', '\r'),
	('SS', 'South Sudan', 'AF', 'https://en.wikipedia.org/wiki/South_Suda', '\r'),
	('ST', 'São Tomé and Principe', 'AF', 'https://en.wikipedia.org/wiki/São_Tomé_a', '\r'),
	('SV', 'El Salvador', 'NA', 'https://en.wikipedia.org/wiki/El_Salvado', 'Salvadorian'),
	('SX', 'Sint Maarten', 'NA', 'https://en.wikipedia.org/wiki/Sint_Maart', '\r'),
	('SY', 'Syria', 'AS', 'https://en.wikipedia.org/wiki/Syria', '?????? ?????\r'),
	('SZ', 'Eswatini', 'AF', 'https://en.wikipedia.org/wiki/Eswatini', 'Swaziland\r'),
	('TC', 'Turks and Caicos Islands', 'NA', 'https://en.wikipedia.org/wiki/Turks_and_', '\r'),
	('TD', 'Chad', 'AF', 'https://en.wikipedia.org/wiki/Chad', '\r'),
	('TF', 'French Southern Territories', 'AN', 'https://en.wikipedia.org/wiki/French_Sou', '\r'),
	('TG', 'Togo', 'AF', 'https://en.wikipedia.org/wiki/Togo', '\r'),
	('TH', 'Thailand', 'AS', 'https://en.wikipedia.org/wiki/Thailand', 'Siam'),
	('TJ', 'Tajikistan', 'AS', 'https://en.wikipedia.org/wiki/Tajikistan', 'Tajik\r'),
	('TK', 'Tokelau', 'OC', 'https://en.wikipedia.org/wiki/Tokelau', '\r'),
	('TL', 'Timor-Leste', 'AS', 'https://en.wikipedia.org/wiki/Timor-Lest', 'East Timor\r'),
	('TM', 'Turkmenistan', 'AS', 'https://en.wikipedia.org/wiki/Turkmenist', '\r'),
	('TN', 'Tunisia', 'AF', 'https://en.wikipedia.org/wiki/Tunisia', '?????? ????\r'),
	('TO', 'Tonga', 'OC', 'https://en.wikipedia.org/wiki/Tonga', '\r'),
	('TR', 'Turkey', 'AS', 'https://en.wikipedia.org/wiki/Turkey', 'Türkiye havaalanlar?\r'),
	('TT', 'Trinidad and Tobago', 'NA', 'https://en.wikipedia.org/wiki/Trinidad_a', '\r'),
	('TV', 'Tuvalu', 'OC', 'https://en.wikipedia.org/wiki/Tuvalu', '\r'),
	('TW', 'Taiwan', 'AS', 'https://en.wikipedia.org/wiki/Taiwan', '\r'),
	('TZ', 'Tanzania', 'AF', 'https://en.wikipedia.org/wiki/Tanzania', '\r'),
	('UA', 'Ukraine', 'EU', 'https://en.wikipedia.org/wiki/Ukraine', '????????? ???????\r'),
	('UG', 'Uganda', 'AF', 'https://en.wikipedia.org/wiki/Uganda', '\r'),
	('UM', 'United States Minor Outlying Islands', 'OC', 'https://en.wikipedia.org/wiki/United_Sta', '\r'),
	('US', 'United States', 'NA', 'https://en.wikipedia.org/wiki/United_Sta', 'America\r'),
	('UY', 'Uruguay', 'SA', 'https://en.wikipedia.org/wiki/Uruguay', 'Aeropuertos de Uruguay\r'),
	('UZ', 'Uzbekistan', 'AS', 'https://en.wikipedia.org/wiki/Uzbekistan', 'Uzbek\r'),
	('VA', 'Vatican City', 'EU', 'https://en.wikipedia.org/wiki/Vatican_Ci', 'The Holy See\r'),
	('VC', 'Saint Vincent and the Grenadines', 'NA', 'https://en.wikipedia.org/wiki/Saint_Vinc', '\r'),
	('VE', 'Venezuela', 'SA', 'https://en.wikipedia.org/wiki/Venezuela', 'Aeropuertos de Venezuela\r'),
	('VG', 'British Virgin Islands', 'NA', 'https://en.wikipedia.org/wiki/British_Vi', '\r'),
	('VI', 'U.S. Virgin Islands', 'NA', 'https://en.wikipedia.org/wiki/U.S._Virgi', '\r'),
	('VN', 'Vietnam', 'AS', 'https://en.wikipedia.org/wiki/Vietnam', 'Các sân bay c?a Vi?t Nam\r'),
	('VU', 'Vanuatu', 'OC', 'https://en.wikipedia.org/wiki/Vanuatu', '\r'),
	('WF', 'Wallis and Futuna', 'OC', 'https://en.wikipedia.org/wiki/Wallis_and', '\r'),
	('WS', 'Samoa', 'OC', 'https://en.wikipedia.org/wiki/Samoa', '\r'),
	('XK', 'Kosovo', 'EU', 'https://en.wikipedia.org/wiki/Kosovo', 'Kosova\r'),
	('YE', 'Yemen', 'AS', 'https://en.wikipedia.org/wiki/Yemen', '?????? ?????\r'),
	('YT', 'Mayotte', 'AF', 'https://en.wikipedia.org/wiki/Mayotte', '\r'),
	('ZA', 'South Africa', 'AF', 'https://en.wikipedia.org/wiki/South_Afri', '\r'),
	('ZM', 'Zambia', 'AF', 'https://en.wikipedia.org/wiki/Zambia', '\r'),
	('ZW', 'Zimbabwe', 'AF', 'https://en.wikipedia.org/wiki/Zimbabwe', '\r'),
	('ZZ', 'Unknown or unassigned country', 'AF', 'https://en.wikipedia.org/wiki/Unknown_or', '\r');

-- Dumping structure for table peli_projekti.edelliset_pelit
CREATE TABLE IF NOT EXISTS `edelliset_pelit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `pelaajan_nimi` varchar(40) NOT NULL,
  `aloitus_kentta` varchar(40) NOT NULL,
  `maali` varchar(40) NOT NULL,
  `kuljettu_matka_km` int(11) NOT NULL,
  `matkan_aika_min` int(11) NOT NULL,
  `tuotettu_co2_kg` int(11) NOT NULL,
  `pisteet` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table peli_projekti.edelliset_pelit: ~2 rows (approximately)
INSERT INTO `edelliset_pelit` (`ID`, `pelaajan_nimi`, `aloitus_kentta`, `maali`, `kuljettu_matka_km`, `matkan_aika_min`, `tuotettu_co2_kg`, `pisteet`) VALUES
	(1, 'V', 'Zürich Airport', 'Sarajevo International Airport', 1101, 151, 6367, 9999),
	(2, 'V', 'Riga International Airport', 'Helsinki Vantaa Airport', 2626, 387, 15184, 9999);

-- Dumping structure for table peli_projekti.yhteys
CREATE TABLE IF NOT EXISTS `yhteys` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `aloituspiste` varchar(40) NOT NULL,
  `lopetuspiste` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `aloituspiste` (`aloituspiste`),
  KEY `lopetuspiste` (`lopetuspiste`),
  CONSTRAINT `yhteys_ibfk_1` FOREIGN KEY (`aloituspiste`) REFERENCES `airport` (`ident`),
  CONSTRAINT `yhteys_ibfk_2` FOREIGN KEY (`lopetuspiste`) REFERENCES `airport` (`ident`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Dumping data for table peli_projekti.yhteys: ~30 rows (approximately)
INSERT INTO `yhteys` (`ID`, `aloituspiste`, `lopetuspiste`) VALUES
	(1, 'EFHK', 'ESSA'),
	(2, 'EFHK', 'ENGM'),
	(3, 'EFHK', 'EFKT'),
	(4, 'EFKT', 'ENTC'),
	(5, 'ESSA', 'ENGM'),
	(6, 'BIKF', 'ENTC'),
	(7, 'BIKF', 'EGLL'),
	(8, 'BIKF', 'EGPD'),
	(9, 'EGLL', 'LFPG'),
	(10, 'EGPD', 'ENGM'),
	(11, 'LFPG', 'LEMD'),
	(12, 'LEMD', 'LIRF'),
	(13, 'LIRF', 'LSZH'),
	(14, 'LSZH', 'EDDB'),
	(15, 'EDDB', 'EPWA'),
	(16, 'EPWA', 'EVRA'),
	(17, 'EKBI', 'ESSA'),
	(18, 'EKBI', 'EDDB'),
	(19, 'EVRA', 'ENTC'),
	(20, 'LOWW', 'LSZH'),
	(21, 'LOWW', 'LQSA'),
	(22, 'LOWW', 'LRBS'),
	(23, 'LRBS', 'LQSA'),
	(24, 'LGAV', 'LIRF'),
	(25, 'LGAV', 'LEMD'),
	(26, 'EHAM', 'EGLL'),
	(27, 'EHAM', 'LFPG'),
	(28, 'LQSA', 'LGAV'),
	(29, 'LRBS', 'EPWA'),
	(30, 'EKBI', 'EHAM');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
