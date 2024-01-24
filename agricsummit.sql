-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 27, 2021 at 07:11 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agricsummit`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
CREATE TABLE IF NOT EXISTS `account` (
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `insertdate` varchar(200) NOT NULL,
  `acctype` varchar(200) NOT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_id`, `name`, `email`, `password`, `insertdate`, `acctype`) VALUES
(28, 'Robinson Agaga', 'robinsonagaga@yahoo.com', 'IywzKFMKYAo=', '2020-03-13', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `attend`
--

DROP TABLE IF EXISTS `attend`;
CREATE TABLE IF NOT EXISTS `attend` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `work` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `reason` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attend`
--

INSERT INTO `attend` (`id`, `title`, `name`, `phone`, `sex`, `work`, `position`, `reason`, `address`, `state`, `country`) VALUES
(7, 'Dr', 'OKPAKORESE PEACE', '08032454342', 'Female', 'agrovite', 'Deputy Governor ', 'knowledge', '154, Siga Rd, agudama-epie', 'Bayelsa State', 'Nigeria '),
(6, 'Hon', 'OKPAKORESE PEACE', '08032454342', 'Male', 'agrovite', 'Vice Chairman', 'knowledge', '154, Siga Rd, agudama-epie', 'Bayelsa State', 'Nigeria ');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `country_id` varchar(10) DEFAULT NULL,
  `country_name` varchar(53) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`) VALUES
('1', 'Afghanistan '),
('2', 'Albania '),
('3', 'Algeria '),
('4', 'American Samoa '),
('5', 'Andorra '),
('6', 'Angola '),
('7', 'Anguilla '),
('8', 'Antarctica '),
('9', 'Antigua and Barbuda '),
('10', 'Argentina '),
('11', 'Armenia '),
('12', 'Aruba '),
('13', 'Australia '),
('14', 'Austria '),
('15', 'Azerbaijan '),
('16', 'Bahamas '),
('17', 'Bahrain '),
('18', 'Bangladesh '),
('19', 'Barbados '),
('20', 'Belarus '),
('21', 'Belgium '),
('22', 'Belize '),
('23', 'Benin '),
('24', 'Bermuda '),
('25', 'Bhutan '),
('26', 'Bolivia '),
('27', 'Bosnia and Herzegovina '),
('28', 'Botswana '),
('29', 'Brazil '),
('30', 'Brunei Darussalam '),
('31', 'Bulgaria '),
('32', 'Burkina Faso '),
('33', 'Burundi '),
('34', 'Cambodia '),
('35', 'Cameroon '),
('36', 'Canada '),
('37', 'Cape Verde '),
('38', 'Cayman Islands '),
('39', 'Central African Republic '),
('40', 'Chad '),
('41', 'Chile '),
('42', 'China '),
('43', 'Christmas Island '),
('44', 'Cocos (Keeling) Islands '),
('45', 'Colombia '),
('46', 'Comoros '),
('47', 'Democratic Republic of the Congo (Kinshasa) '),
('48', 'Congo, Republic of (Brazzaville) '),
('49', 'Cook Islands '),
('50', 'Costa Rica '),
('51', 'Ivory Coast '),
('52', 'Croatia '),
('53', 'Cuba '),
('54', 'Cyprus '),
('55', 'Czech Republic '),
('56', 'English English Name'),
('57', 'French French Name'),
('58', 'Local Name'),
('59', 'Region '),
('60', 'Denmark '),
('61', 'Djibouti '),
('62', 'Dominica '),
('63', 'Dominican Republic '),
('64', 'East Timor (Timor-Leste) '),
('65', 'Ecuador '),
('66', 'Egypt '),
('67', 'El Salvador '),
('68', 'Equatorial Guinea '),
('69', 'Eritrea '),
('70', 'Estonia '),
('71', 'Ethiopia '),
('72', 'Falkland Islands '),
('73', 'Faroe Islands '),
('74', 'Fiji '),
('75', 'Finland '),
('76', 'France '),
('77', 'French Guiana '),
('78', 'French Polynesia '),
('79', 'French Southern Territories '),
('80', 'Gabon '),
('81', 'Gambia '),
('82', 'Georgia '),
('83', 'Germany '),
('84', 'Ghana '),
('85', 'Gibraltar '),
('86', 'Great Britain '),
('87', 'Greece '),
('88', 'Greenland '),
('89', 'Grenada '),
('90', 'Guadeloupe '),
('91', 'Guam '),
('92', 'Guatemala '),
('93', 'Guinea '),
('94', 'Guinea-Bissau '),
('95', 'Guyana '),
('96', 'English English Name'),
('97', 'French French Name'),
('98', 'Local Name'),
('99', 'Region '),
('100', 'Haiti '),
('101', 'Holy See '),
('102', 'Honduras '),
('103', 'Hong Kong '),
('104', 'Hungary '),
('105', 'Iceland '),
('106', 'India '),
('107', 'Indonesia '),
('108', 'Iran (Islamic Republic of) '),
('109', 'Iraq '),
('110', 'Ireland '),
('111', 'Israel '),
('112', 'Italy '),
('113', 'Jamaica '),
('114', 'Japan '),
('115', 'Jordan '),
('116', 'Kazakhstan '),
('117', 'Kenya '),
('118', 'Kiribati '),
('119', 'Korea, Democratic People\'s Rep. (North Korea) '),
('120', 'Korea, Republic of (South Korea) '),
('121', 'Kosovo '),
('122', 'Southern Europe'),
('123', 'Kuwait '),
('124', 'Kyrgyzstan '),
('125', 'Lao, People\'s Democratic Republic '),
('126', 'Latvia '),
('127', 'Lebanon '),
('128', 'Lesotho '),
('129', 'Liberia '),
('130', 'Libya '),
('131', 'Liechtenstein '),
('132', 'Lithuania '),
('133', 'Luxembourg '),
('134', 'Macau '),
('135', 'Macedonia, Rep. of '),
('136', 'Madagascar '),
('137', 'Malawi '),
('138', 'Malaysia '),
('139', 'Maldives '),
('140', 'Mali '),
('141', 'Malta '),
('142', 'Marshall Islands '),
('143', 'Martinique '),
('144', 'Mauritania '),
('145', 'Mauritius '),
('146', 'Mayotte '),
('147', 'Mexico '),
('148', 'Micronesia, Federal States of '),
('149', 'Moldova, Republic of '),
('150', 'Monaco '),
('151', 'Mongolia '),
('152', 'Montenegro '),
('153', 'Montserrat '),
('154', 'Morocco '),
('155', 'Mozambique '),
('156', 'Myanmar, Burma '),
('157', 'English English Name'),
('158', 'French French Name'),
('159', 'Local Name'),
('160', 'Region '),
('161', 'Namibia '),
('162', 'Nauru '),
('163', 'Nepal '),
('164', 'Netherlands '),
('165', 'Netherlands Antilles '),
('166', 'New Caledonia '),
('167', 'New Zealand '),
('168', 'Nicaragua '),
('169', 'Niger '),
('170', 'Nigeria '),
('171', 'Niue '),
('172', 'Northern Mariana Islands '),
('173', 'Norway '),
('174', 'Oman '),
('175', 'Pakistan '),
('176', 'Palau '),
('177', 'Palestinian territories '),
('178', 'Panama '),
('179', 'Papua New Guinea '),
('180', 'Paraguay '),
('181', 'Peru '),
('182', 'Philippines '),
('183', 'Pitcairn Island '),
('184', 'Poland '),
('185', 'Portugal '),
('186', 'Puerto Rico '),
('187', 'Qatar '),
('188', 'Reunion Island '),
('189', 'Romania '),
('190', 'Russian Federation '),
('191', 'Rwanda '),
('192', 'Saint Kitts and Nevis '),
('193', 'Saint Lucia '),
('194', 'Saint Vincent and the Grenadines '),
('195', 'Samoa '),
('196', 'San Marino '),
('197', 'Sao Tome and Principe '),
('198', 'Saudi Arabia '),
('199', 'Senegal '),
('200', 'Serbia '),
('201', 'Seychelles '),
('202', 'Sierra Leone '),
('203', 'Singapore '),
('204', 'Slovakia (Slovak Republic) '),
('205', 'Slovenia '),
('206', 'Solomon Islands '),
('207', 'Somalia '),
('208', 'South Africa '),
('209', 'South Sudan '),
('210', 'Spain '),
('211', 'Sri Lanka '),
('212', 'Sudan '),
('213', 'Suriname '),
('214', 'Swaziland '),
('215', 'Sweden '),
('216', 'Switzerland '),
('217', 'Syria, Syrian Arab Republic '),
('218', 'English English Name'),
('219', 'French French Name'),
('220', 'Local Name'),
('221', 'Region '),
('222', 'Taiwan (Republic of China) '),
('223', 'Tajikistan '),
('224', 'Tanzania; officially the United Republic of Tanzania '),
('225', 'Thailand '),
('226', 'Tibet '),
('227', 'Timor-Leste (East Timor) '),
('228', 'Togo '),
('229', 'Tokelau '),
('230', 'Tonga '),
('231', 'Trinidad and Tobago '),
('232', 'Tunisia '),
('233', 'Turkey '),
('234', 'Turkmenistan '),
('235', 'Turks and Caicos Islands '),
('236', 'Tuvalu '),
('237', 'Uganda '),
('238', 'Ukraine '),
('239', 'United Arab Emirates '),
('240', 'United Kingdom '),
('241', 'United States '),
('242', 'Uruguay '),
('243', 'Uzbekistan '),
('244', 'Vanuatu '),
('245', 'Vatican City State (Holy See) '),
('246', 'Venezuela '),
('247', 'Vietnam '),
('248', 'Virgin Islands (British) '),
('249', 'Virgin Islands (U.S.) '),
('250', 'Wallis and Futuna Islands '),
('251', 'Western Sahara '),
('252', 'Yemen '),
('253', 'Zambia '),
('254', 'Zimbabwe ');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `upload_date` varchar(200) NOT NULL,
  `month` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  PRIMARY KEY (`doc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_id`, `filename`, `name`, `upload_date`, `month`, `day`) VALUES
(1, '72830662533987788705997cf6069f2c2128542b737348e0a13b.pdf', 'innuagural speech by Benson Alagoa', '13-05-21', '', ''),
(2, '07465101294494326493a55de56d92d64af543f9b2a584767fee.pdf', 'typesetting industry. Lorem Ipsum has been the', '13-05-21', 'May', '13');

-- --------------------------------------------------------

--
-- Table structure for table `executives`
--

DROP TABLE IF EXISTS `executives`;
CREATE TABLE IF NOT EXISTS `executives` (
  `exec_id` int(11) NOT NULL AUTO_INCREMENT,
  `exec_name` varchar(200) NOT NULL,
  `exec_com` varchar(200) NOT NULL,
  `position` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  PRIMARY KEY (`exec_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `executives`
--

INSERT INTO `executives` (`exec_id`, `exec_name`, `exec_com`, `position`, `filename`) VALUES
(1, 'Governor Douye Diri', 'nil', 'Chairman', 'govnor.png'),
(2, 'Dr Apoku Inodu', 'nil', 'Perm. Sec. Ministry of Health', '4h7scpiec6m4kj47kn59f3318be6330ca963dd960a52bcab0469.png'),
(3, 'Ewhrudjakpo, Mourns', 'nil', 'Deputy Governor ', '7rcsl4yan9dzn63d1189058306a1772816d5a6ccb26e011dcab2.png'),
(4, 'ATAGBO EDAFEMUNO BELIEF', 'nil', 'Perm. Sec. Ministry of Health', 'xinln0vqelep4hbf1vtnb874bced283f6246b81e44e243eb4505.png'),
(5, 'ATAGBO EDAFEMUNO BELIEF', 'nil', 'Deputy Governor ', 'acfo6191q40pipbz93lx65f91faf4987e36e71292678c82363a2.png');

-- --------------------------------------------------------

--
-- Table structure for table `exhibitors`
--

DROP TABLE IF EXISTS `exhibitors`;
CREATE TABLE IF NOT EXISTS `exhibitors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `businessName` varchar(200) NOT NULL,
  `businessArea` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exhibitors`
--

INSERT INTO `exhibitors` (`id`, `title`, `fullname`, `phone`, `sex`, `businessName`, `businessArea`, `address`, `state`, `country`) VALUES
(13, 'Dr', 'robinson agaga', '08032454342', 'Male', 'RAGURA LTD', 'crop production', '154, Siga Rd, agudama-epie', 'Bayelsa State', 'Nigeria ');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

DROP TABLE IF EXISTS `gallery`;
CREATE TABLE IF NOT EXISTS `gallery` (
  `photo_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `caption` text NOT NULL,
  PRIMARY KEY (`photo_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  `time_update` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `filename` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `title`, `content`, `time_update`, `day`, `month`, `year`, `filename`, `status`) VALUES
(11, 'fear of fear', 'good', '24 July 2021', '24', 'July', '2021', 'nrf5hx1bszhuv5f32xkkd9d8d919d848a1446be4fa108940eadc.jpg', 0),
(6, 'INDEX CASE: GOV DIRI ORDERS ONE-WEEK STAY-AT-HOME IN BAYELSA', '<br>The Bayelsa State government has given clarification about those exempted from the stay-at-home directive of the governor, Senator Douye Diri.Governor Diri in a state broadcast on Monday directed residents to stay at home for one-week except those rendering essential services and duties.This followed a reported case by the Nigeria Centre for Disease Control (NCDC) of a 49-year-old female that tested positive for the COVID-19 in the state.The index case is on admission at the isolation centre of the Niger Delta University Teaching Hospital in Okolobiri.The governor\'s acting Chief Press Secretary, Mr. Daniel Alabrah, in a statement on Monday night, however, explained that banks, foodstuff sellers in markets and vehicles conveying foodstuff, supermarkets as well as petrol and gas stations were exempted from the stay-at-home directive.Others are pharmaceuticals outlets, telecoms services operators, oil and gas services firms, medical and health personnel, civil servants on grade level 13 and above, and, of course, the military and other law enforcement personnel.The list also includes journalists, newspaper distributors and vendors.The governor\'s aide stated that the clarification became necessary to reduce panic buying and to douse tension among residents.He said the preventive measures taken before the report of an index case and even the fresh directive of the governor were all geared toward protecting the health of Bayelsans.\"These measures are not punitive. The  government is on top of the situation and would take the right decisions to ensure the health and wellbeing of all citizens of the state are protected at all times. Therefore, there is no need for anyone to panic,\" Alabrah said.', '29 April 2020', '18', 'April', '2020', '94240523_10156820371866573_3508698082776711168_n.jpg', 1),
(8, 'COVID-19: Bayelsa Extends Lockdown', 'Bayelsa State has extended the lockdown of its borders for another two weeks.Governor Douye Diri gave the directive on Tuesday evening in a press release by his Acting Chief Press Secretary, Mr. Daniel Alabrah, following the expiration of the earlier two-week deadline.He said the lockdown affects inter-state vehicular movement, closure of drinking bars at night as well as night clubs.Worship centres are also affected as they have been directed to close down and hold services at home.The state had on Sunday imposed a five-day dusk-to-dawn curfew, which took effect from Monday. The governor noted that Bayelsa was yet to record any case of COVID-19 infection but his administration was committed to taking preventive measures against the spread of the disease into the state.He added that the measures were equally necessary to prepare people of the state for any eventuality.\"We are yet to record any positive case of COVID-19 in Bayelsa. But this does not mean we would go to sleep.\"Our administration is seriously committed to preventing the spread of this dreaded disease into our state. So, we must take measures to keep it in check as well as prepare the minds of our people in case of any positive report. People of the state should continue to maintain good hygiene habits as well as comply with the social distancing rules,\" the governor said.', '29 April 2020', '29', 'April', '2020', 'ec1ahkk1zkywrcvvybh18dc2d0bddbb30f3d42d2b09df80efca6.jpg', 0),
(9, 'COVID-19: DIRI, SYLVA LAY FOUNDATION FOR AGIP 200-BED HOSPITAL IN BAYELSA', 'Bayelsa State Governor, Senator Douye Diri, on Saturday, commended the federal government and the drive by the Nigeria Agip Oil Company (NAOC) and its joint venture partners to combat COVID-19 through the consolidation and improvement of medical facilities.<br><br>Governor Diri gave the commendation at the groundbreaking ceremony of a 200-bed medical facility initiated by the NAOC and sited in Bayelsa to cover the South South region. <br><br>The governor said the event is not only significant but also restates and demonstrates the necessary co-operation and social responsibility that must exist for the oil and gas industry as well as other businesses across the country.<br><br>&nbsp;In a press release by his Acting Chief Press Secretary, Mr Daniel Alabrah, the governor described the COVID-19 pandemic as the defining global health predicament of our time and the greatest challenge faced in several generations. <br><br>His words: \"Countries are under lockdown. Travel is severely restricted. Traditional havens are compromised. If this episode has taught us any fundamental lesson, it is that those of us in positions should effect positive change deliberately and urgently.<br><br>â€œOn our part, the Bayelsa State government took proactive actions to strengthen surveillance at our boundaries with neighbouring states to prevent the spread of COVID-19 into our state. With the diligence of the state taskforce on Covid 19, which I chair, and the cooperation of the citizens, we were largely successful in this quest. <br><br>\"However, we are now dealing with a new reality, with the confirmation of an index case and four members of her family. So the timing of this event when the dynamics have altered is most welcome.<br><br>â€œCOVID-19 is much more than a health crisis. By putting countries it touches under duress, it has the potential to make devastating social, economic and political crises that will leave serious distortions in the fabric of society. By providing assistance to keep the virus in check is therefore commendable.<br><br>â€œOn behalf of the people and governments of the South-South states, I express my sincerest gratitude to the Minister of Petroleum, Chief Timipre Sylva, and the Group Managing Director of the Nigerian National Petroleum Corporation, Mallam Mele Kyari as well as the Executive Secretary of the Nigeria Content Development and Monitoring Board, Engr. Simbi Wabote, for your obligation, insight and service to our zone and country.<br><br>â€Chief Sylva, in his remarks, said the Nigerian oil and gas industry has embarked on an industry-wide collaborative and prevention initiative to combat the pandemic under the leadership of the NNPC.<br><br>According to him, the three key areas in alignment with the ongoing Federal Government efforts to cut the pandemic through the presidential task force include the provision of medical consumables, deployment of logistics and in-patient support system and the delivery of medical infrastructure, which amounted to 68million dollars (about N28billion).<br><br>&nbsp;â€œIn recognition of the leveraging impact of COVID-19 pandemic on the critical sectors of our national economy, the Nigerian oil and gas industry, under the leadership of NNPC, embarked on industry wide collaborative and prevention initiative to combat the pandemic. <br><br>\"This action is taken to support the national healthcare delivery facility and strengthen our collective national resolve in combating this pandemic,â€ Sylva said.<br><br>On his part, the NAOC Vice  Chairman/Managing Director, Lorenzo Fiorillo, who was represented by the Community Relations Manager Mr. MacWen Jitubo, stated that the groundbreaking ceremony of the COVID-19 medical infrastructure was part of the intervention project  sponsored by the company in the South South, adding that the project was necessitated by the outbreak of the pandemic.<br><br>According to Mr Fiorillo, the collaboration between government and the private sector at this critical  moment  is expedient for the vulnerable groups directly benefiting from the medical services that will be provided in the facility when completed.<br><br>\"Defeating the scourge at this critical  moment calls for concerted and sustainable effort through collaboration between  government  and the private  sector.<br><br>\"I thank Governor Diri for approving  the site and also expeditiously  providing the land where the medical facility is  located and further ensuring that all necessary government process that are required for its kick-off were put in place without delay.<br><br>\"Our sincere  gratitude also goes to the  Minister of State for Petroleum Resources, Chief Timipre Sylva and the GMD of the NNPC for galvanising the entire oil and gas industry to embark  on a massive intervention in the fight against the COVID-19 pandemic,\" Fiorillo said.<br><br>When completed the facility would offer general medical services to the public as well as a disease control centre, diagnostic laboratory, 150-200-bed spaces scalable on both flanks and behind.', '03 May 2020', '02', 'May', '2020', 'sl2lltiovf4bqykq1dw1cddc67a6e016d20c685d48ff7a33e72c.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

DROP TABLE IF EXISTS `remarks`;
CREATE TABLE IF NOT EXISTS `remarks` (
  `remark_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `remark` text NOT NULL,
  `time_update` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `time_of_event` varchar(200) NOT NULL,
  PRIMARY KEY (`remark_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`remark_id`, `title`, `remark`, `time_update`, `status`, `time_of_event`) VALUES
(6, 'Media Briefing  On COVID-19', '<b>27TH April 2020<br></b><br>the secretary to\r\nthe state government, the deputy chief of staff, the chief press secretary, the\r\npermanent secretary ministry of health, the permanent secretary Ministry of\r\nInformation and other permanent secretaries here present, my bossâ€™s members of\r\nthe Press, ladies and gentlemen.\r\n\r\n<span>&nbsp;<br><br>Yesterday at about 10:00 PM, I had and was\r\ninformed about a Bayelsan testing positive to COVID-19 in other words it became\r\nthe index case in our dear State. &nbsp;We have\r\nbattled this plaque since it broke out on the 27th of February in the shores of\r\nour country Nigeria. we have taken proactive steps, preventive steps and we\r\nhave left no stone unturned throughout this period. may I therefore\r\ncongratulate Bayelsans for their law-abiding nature and adapting and Obey all\r\nthe rules regulations and the executive Order that was signed by me.<br></span>\r\n\r\n<span><br>&nbsp;may I equally congratulate the COVID-19 TASK\r\nFORCE Who have had sleepless nights and every day on the road gathering\r\ninformation and doing everything to ensure that COVID-19 has no place in Bayelsa.\r\nwith this new case of a female, a middle-aged female who presented herself at\r\nthe Bayelsa specialist hospital she is a known hypertensive and diabetic and\r\npresented with the history of a poor appetite, fever headache and non-productive\r\ncough and chest pain of about a week duration while in the hospital she did not\r\nadmit to any history of travelling she was subsequently admitted at the Bayelsa\r\nSpecialist Hospital where she was managed for malaria and uncontrolled\r\nhypertension with queried covid-19. Even as at this money she has vehemently\r\ndenied any travel history and has strongly rejected the test result.&nbsp; she is presently &nbsp;stable clinically from the information I\r\ngathered from the hospital even though she\'s in a panic state and she has been\r\nevacuated to the Niger Delta University teaching hospital isolation Centre for\r\nfurther management and all her contacts will be adequately followed up\r\nincluding necessary environmental decontamination as the case may be and I want\r\nus at this point to appreciate the dynamics of the time that we are into and we\r\nall should act sensibly as we know that this is a global pandemic and we cannot\r\nbe sectional or Partisan in our responses as I said in previous locations we\r\ncannot sleep or rest while we have these unseen enemy called covid-19. &nbsp;is an enemy we must all fight until it is\r\ncompletely defeated.<br></span>\r\n\r\n<br>this is the time\r\nfor us to share responsibility and not blame sharing, the Bayelsa specialist\r\nhospital has since been closed down and decontamination procedures has\r\ncommence, also contact tracing has also commenced and samples will be collected\r\nfrom all contacts including members of staff of the specialist hospital that\r\nwere on duty as well as all persons who visited the facility during her\r\nadmission, all high-risk contacts will be collected and sent for testing while\r\nrisk communication and community engagement will continue as usual. Again, the\r\nbayelsa state COVID19 task force which of course you know I personally chair,\r\nwill remain in a response mode with dedicated and experienced health officers\r\nand volunteers doing their best to contain the spread of these dreaded disease\r\nin our state.\r\n\r\n<br><span><br>&nbsp;Let me emphasize and repeat here that early\r\ndetection is the focus of the Bayelsa state COVID-19 team. That is the only way\r\nthat we can contain and as such we will continue to advocate for the\r\ncontainment of these disease as follows:</span>\r\n\r\n<br><br>&nbsp;\r\n\r\n<span>1.&nbsp;&nbsp; Regular and thorough hand-washing with soap under running water\r\nand the use of alcohol-based sanitizers. <br></span>\r\n\r\n<span><span><br>2.&nbsp;&nbsp; </span>social distancing is key and we are all ask to maintain at least 2\r\nm or 6 feet distance between yourself and any other person. avoid crowds and\r\nensure compliance with all the pronouncements that I have earlier made.<br><br>&nbsp;&nbsp;</span>3.&nbsp;&nbsp; endeavor to practice good respiratory hygiene when sneezing or\r\ncoughing cover your mouth and nose with your sleeve at the flex elbow or with\r\nthe tissue then dispose off the used tissue safely and immediately.\r\n\r\n<span>in addition, I am pronouncing that everybody except those on\r\nessential duties should remain at home for the next 1 week starting from\r\ntonight. sick persons should stay at home if you feel unwell with symptoms like\r\nfever cough and difficulty in breathing notify relevant authorities for\r\nimmediate action do not spread fake news. Bayelsans are advised not to indulge\r\nin spreading misinformation that can cause panic and lead to a stampede. always\r\nverify the information you receive. all health facilities should ensure whether\r\nthey are private or public strict and appropriate infection prevention control\r\nIPC measures at all trials points. &nbsp;The Bayelsa\r\ncovid-19 task force will continue to provide updates and guidance while\r\nimplementing all necessary measures to ensure public health and public safety.<br></span>\r\n\r\n<br>I repeat that there is no need for our people to panic let us be\r\nrest assured that your government the government of Bayelsa state is on top of\r\nthe current index situation. we have already provided numbers before now but we\r\nhave two additional toll free numbers which we are also prepared to give to the\r\npublic with this index case that we have just witnessed and the two numbers are\r\nas follows one 090 10 9 into four places 9999 then 72 should I take it again ok\r\nsecond one is 090 10 again 9 into four places 9999 69 these are two toll free\r\nnumbers that we have added to the earlier three numbers that we are giving. i\r\nthank you for coming may Bayelsa State continue to live in the canopy of the\r\nalmighty God and that after this index case we will not have any other\r\nconfirmed COVID-19 case in Bayelsa. may God continue to bless our dear state Bayelsa,\r\nmay God bless our country Nigeria. God bless you.<br>', '12 May 2020', 1, '27TH April 2020'),
(7, 'COVID-19 Task force Committee  Meeting', '8th April, 2020<br><br>Your excellency, the deputy governor\r\nof Bayelsa state, Chairman house committee on Health, the chief of staff,\r\ndeputy chief of staff and his principal secretary, Service commanders. Let me\r\nparticularly recognize the permanent secretary ministry of health. All of the\r\nmembers of the COVID-19 committee. Other government functionaries here present,\r\nmembers of the forth estate of the realm. I welcome you to this review meeting of\r\nCOVID-19. let me recognize my lordâ€™s spiritual. They are all here. Both of the\r\nChristian faith and the Muslim faith you are all welcome.\r\n\r\n<br><br>&nbsp;\r\n\r\nI welcome you to this review\r\nmeeting. You recall that about two weeks we met in this same hall when the\r\nthreats of COVID-19 were very palpable and ravaging the whole world.\r\nThereafter, we took a lot of precautionary and preventive measures and followed\r\nthem to the letter. We issued a two weeks Preventive order, particularly\r\nclosing down our borders with the neighboring states and our maritime domain.\r\nWe equally took other measures as banning social gatherings, burials, marriages\r\nand various other kinds of social gatherings.\r\n\r\n&nbsp;<br>\r\n\r\n<span><br>And we set up a committee made up of\r\nall security agencies, health personnel and other members to ensure that our measures\r\nwere strictly complied with. Thereafter, we kept meeting virtually on a daily\r\nbasis to review the level of compliance and the reported cases which we\r\npromptly took to do the testing center and all of them turned out to be negative.\r\nIt will be proper at this stage to mention that I also underwent the test.&nbsp; When it was rumored allover that </span>\r\n\r\nI met with the chief of staff to the\r\npresidents who had tested positive. And everybody felt that I should also submit\r\nmyself to the test and I did that, and now happy to announce to you that mine\r\nwas also negative.\r\n\r\n&nbsp;\r\n\r\n<br><br>And so my comrades in the business\r\nof governance, our duty is to ensure that our people are safe, secured and\r\nhealthy. And to all of us who have been in this committee. I want to say a very\r\nbig thank you to all of you. May we clap for ourselves.&nbsp;&nbsp;\r\n\r\n<br><br>However, it is not yet uhuru. We are\r\nnot yet there. You are aware that every day all the press, the media houses you\r\ndonâ€™t hear any other thing, there is no other news other than COVID-19 across\r\nthe world, and so the fear is still very palpable. Now that we have come thus\r\nfar and our preventive measures have yielded so much fruits. It is necessary\r\nfor us to call for this meeting to look at the steps we have taken so far, our 14\r\ndays lockdown has expired yesterday.\r\n\r\n&nbsp;<br>\r\n\r\n<span><br>Do we review, when we review, Do we\r\ngo further to lockdown? Particularly, Knowing fully well with the knowledge that\r\nour sister state Delta have just recorded one COVID-19 case, Rivers has two\r\nCOVID-19 cases. &nbsp;Therefore, the\r\npossibility of getting into Bayelsa is very, very, very, very palpable. It is\r\nfor this regards that we have called for this meeting for us to once again.\r\nLook at the issues and examine them and come up again with necessary\r\nprecautions and measures that will ensure the health of our people, that will\r\nensure that COVID- 19 has no place in Bayelsa State, that all of us who are in\r\nBayelsa, Natives and Nonnatives alike, would stay here healthy without any fear\r\nof COVID-19 getting very close to us. And so I welcome you to this meeting. And\r\nas it is usual, with our meetings, we will take briefings from the health\r\nsector, the information sector and the security sector so that there after we\r\nwill now go into agreeing on the extension of the lockdown, particularly in our\r\nborders and the order precautionary measures that we have so enunciated. So\r\nonce again, thank you all for all your efforts in ensuring that Bayelsa state\r\nis COVID-19 negative. I welcome you to these review meetings. Thank you and God\r\nbless you.</span>\r\n\r\n&nbsp;<br>', '12 May 2020', 1, '8th April, 2020'),
(8, 'Ground Breaking Ceremony for the Construction of a Medical Facility to Combat COVID-19 in the SOUTH SOUTH region ', '<span>20th May, 2020<br><br>Your Excellency, Miracle Deputy Governor Bayelsa states,\r\nsenator Lawrence Ewhrudjakpor, my colleagues, members of the National Assembly\r\nhere present, Fred raise to power two. The secretary to the Federal Government\r\nof Nigeria, Mr. Boss, Mustapha here represented again by my colleague, the\r\nHonorable Minister of Education, honorable Chukwuemeka Nwajuba. My brother, the\r\nOpuabadi, the Honorable Minister of State for petroleum Chief, Chief Timipre Sylva.\r\nThe right honorable speaker of the Bayelsa State House of Assembly, The\r\nchairman, House Committee on Health and other members of the Bayelsa State\r\nHouse of Assembly. The secretary to the state government, right honorable\r\nFriday Konbowei Benson.<br></span>\r\n\r\n<span><br>The head of the service, the group managing director of NNPC,\r\nMr. Mone Kyari, the Executive Secretary the Nigerian contents management board,\r\nour own brother, son of the soil, engineer Simbi &nbsp;Waibote, now adopted son of the soil, the\r\nGGM&nbsp; Mapping&nbsp; Mr. Bala wanti,&nbsp; the MD Nigerian Agip Oil Company&nbsp; here represented by Mr. Chindum &nbsp;AJabo, the Chief of Staff, Deputy Chief of\r\nStaff, Government House principal secretary, Permanent Secretary Minister of\r\nHealth and other, permanent secretaries &nbsp;here present invited guests, members of the\r\nfourth estate of the realm, ladies and gentlemen.</span>\r\n\r\n<br><br>I welcome you to Bayelsa State. And a very good afternoon to\r\nall of you. First, let me thank God for granting you journey mercies all the\r\nway from Abuja to our dear state Bayelsa, here in Yanagoa.\r\n\r\n<br><br>This groundbreaking ceremony by the oil industry to combat\r\nCOVID-19 with such a gigantic and huge medical infrastructure for the south\r\nsouth region, and located in our state, we can only say thank you. And we\r\nappreciate the Federal Government of Nigeria. Beginning with Mr. President and of\r\ncourse, the man we can jokingly call The deputy president because he\'s the\r\nDeputy Minister of State only to Mr. President, our own son Sylva Timipre. In\r\nthe same vein, I wish to thank and appreciate the Nigerian AGip Oil company,\r\nthe operators of the oil and gas industry and all their cooperators for\r\nagreeing and choosing to locate these very critical facilities in Yenagoa.<br>\r\n\r\n<br>And by so doing, they are also trying to write their name in\r\nthe sands of history, bringing in a difference in the lives of the people of Yenagoa\r\nBayelsa state. The south south And indeed, Nigerians.<br>\r\n\r\n<br>Bayelsa state has been a profitable and hospitable\r\nenvironment, the much we know, for the Nigerian Agip oil company and we aim to\r\nkeep on Deeping these cordial relationships.<br>\r\n\r\n<br>Thomas Kali once said that he who has help, has hope. And he\r\nwho has hope has everything. I\'m especially pleased to be here today as we\r\nbreak the ground for the construction of this structure, because it is in line\r\nwith the covenant we have as a government, with the people of Bayelsa state\r\n\r\nto provide The best health care possible and by extension, fulfill\r\nour commitment to build sustainable prosperity for all people. We further\r\nidentify that this undertaking is not merely about buildings. It is more about\r\nthe people the significance measure and magnitude of this project are self-evident\r\nbut it is more about consolidating and improving the health of our people and\r\nthe health of our communities.<br>\r\n\r\n<br>As we acknowledge us always that all is well, today\'s event is\r\nalso significant for another reason. Not only are we breaking the ground on the\r\nsite physically, but it also restates and demonstrates necessary cooperation on\r\nCSR corporate social responsibility that must exist not only for the oil and\r\ngas industry, but our businesses across the country with the people of the\r\ncovenant.<br>\r\n\r\n<br>It is important to recall the words of the United Nations\r\nSecretary General Antonio Guterres when he presented his report on the socio\r\neconomic impact of COVID-19 shared responsibility, according to him, his global\r\nsolidarity. This is not only a health crisis, but a human crisis, a job crisis,\r\na humanitarian crisis and a development crisis. And it is not just about the\r\nmost vulnerable, this pandemic shows that we are all at risk because we are only\r\nstrong as the weakest health system. <br>\r\n\r\n<br>This unprecedented scale demands an unprecedented response.\r\nWhat we are doing here today is actually an unprecedented response. The\r\nCoronavirus, COVID-19 pandemic is the defining global predicament of our time\r\nand the greatest challenge we are faced in several generations. Countries are\r\nlocked down; Travel is severely restricted, traditional heavens are\r\ncompromised. If these episodes have thought us any fundamental lesson, it is\r\nthat for those of us in positions of authority, our efforts to effect an effect\r\npositive change must be deliberate and urgent in fulfilling the obligation, it\r\nshould be a timely reminder that we as a government and businesses must be more\r\nconcerned in making the decisions and taking the right steps that create\r\ninclusive and sustainable opportunities for all our citizens\r\n\r\nin Bayelsa state, the Bayelsa state government took proactive\r\nactions, to strengthen surveillance to our boundaries with neighboring states\r\nto prevent the spread of Corona virus into our state, with the diligence of the\r\nstate Task Force on COVID-19, headed by my humble self, and the cooperation of\r\ncitizens who are largely successful in these quests, however, we are now\r\ndealing with a new reality with the confirmation of an index case and for other\r\nmembers of the index case family. So, the timing of this event, when the\r\ndynamics of altered is most welcome.\r\n\r\n<br><br>It emphasizes the point that we have a shared responsibility\r\nin combating this un scene advisory. But COVID-19 is much more than a health\r\ncrisis. By putting countries it touches under duress. It has the potential to\r\nmake devastating social, economic, and political crisis that will leave serious\r\ndistortions in the fabric of any society. By providing this assistance to keep\r\nthe virus in, check is a commendable one. \r\n\r\nMay I on behalf of the good people of Bayelsa state and the\r\ngovernment of Bayelsa state, and indeed, on behalf of the south south states,\r\nexpress my most sincere gratitude for your obligation, insight and service to\r\nour zone and particularly to our state. Long leave Bayelsa state, Long leave\r\nthe Federal Republic of Nigeria. Thank you.', '12 May 2020', 1, '20th May, 2020'),
(9, 'Meeting with Health Team, Ministry of Health.', '<span>2nd March, 2020<br><br>Excellency, the Deputy Governor of\r\nour dear state, the head of the service, the chief of staff, deputy chief of\r\nstaff, chief press secretary, principal secretary, the permanent secretary\r\nministry of health and other very senior directors and officers of the ministry.</span>\r\n\r\n<br><br>You are aware that globally, there is\r\na phenomenon that is threatening the health of all citizens across the world\r\nand unfortunately, we thought it was a phenomenon that is far away from Africa\r\nand not to mention our country Nigeria. <br>\r\n\r\n<br>But unfortunately, the latest reports\r\nand developments is that the phenomenon is now here with us in Nigeria and that\r\nis the COVID, the Coronavirus that has devastated China and other countries,\r\npeople dying in their thousands and so as a government and as a people, we felt\r\nit was necessary to invite you to look at safety valves so we can take\r\npreventive actions to ensure that this devastated sickness do not come into our\r\nshores here in Bayelsa.\r\n\r\n<br><br>Am very aware, that you were up to\r\nthe task when we had similar issues such as the case of monkey pox in Bayelsa\r\nand you did all you have to do and contained that sickness.<br><br>&nbsp;&nbsp;\r\n\r\nHere we are been threatened again by\r\nthe Coronavirus not only the Coronavirus, we also have the issues of the Lesser\r\nfever that is even in our neighborhood Delta State is affected, I think even\r\nRiver State is affected and so, these are our neighbors and it is only\r\nnecessary that we invite you and then hear from you if anything is in the\r\noffering in terms of preparations and if there is anything we can still do to\r\nassist you, the government is prepared to ensure the health and the safety of\r\nthe citizens of Bayelsa and thatâ€™s why this meeting is holding and so, you are\r\nwelcome. Thank you.', '12 May 2020', 1, '2nd March, 2020');

-- --------------------------------------------------------

--
-- Table structure for table `sentmsg`
--

DROP TABLE IF EXISTS `sentmsg`;
CREATE TABLE IF NOT EXISTS `sentmsg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `phone` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `status` varchar(200) NOT NULL,
  `day` varchar(200) NOT NULL,
  `time` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sentmsg`
--

INSERT INTO `sentmsg` (`id`, `name`, `phone`, `msg`, `status`, `day`, `time`) VALUES
(36, 'robinson agaga', '08032454342', 'Thanks for being part of the exhibitors in Bayelsa 2021 Agric Summit', '200', '27-07-2021', '18:36:18');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
