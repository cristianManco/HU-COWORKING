-- Active: 1718798157580@@b9b7ia7hcr9fx33r1eqq-postgresql.services.clever-cloud.com@50013
CREATE DATABASE coworking_db;


-- create tables

CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

CREATE TABLE Rooms (
    room_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    rows INTEGER,
    columns INTEGER
);

CREATE TABLE Workspaces (
    workspace_id SERIAL PRIMARY KEY,
    room_id INTEGER REFERENCES Rooms(room_id),
    row_number INTEGER,
    column_number INTEGER,
    UNIQUE (room_id, row_number, column_number)
);

CREATE TABLE Sessions (
    session_id SERIAL PRIMARY KEY,
    start_time TIMESTAMP,
    end_time TIMESTAMP
);

CREATE TABLE Reservations (
    reservation_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES Users(user_id),
    workspace_id INTEGER REFERENCES Workspaces(workspace_id),
    session_id INTEGER REFERENCES Sessions(session_id),
    reservation_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



-- Poblado de la tabla Users


INSERT INTO Users (user_id, name, email) VALUES
(1, 'Jannel', 'jgennerich0@mediafire.com'),
(2, 'Englebert', 'ezambon1@latimes.com'),
(3, 'Reinold', 'rdetloff2@goo.gl'),
(4, 'Mitzi', 'mkeyte3@wsj.com'),
(5, 'Clarinda', 'ckeyzman4@goo.ne.jp'),
(6, 'Gearalt', 'gbardwall5@redcross.org'),
(7, 'Marylinda', 'mbreeton6@shareasale.com'),
(8, 'Kent', 'kmelarkey7@mapy.cz'),
(9, 'Drake', 'dburchfield8@ow.ly'),
(10, 'Britney', 'bguiness9@nhs.uk'),
(11, 'Rae', 'ralbona@dell.com'),
(12, 'Allene', 'aledingtonb@yellowbook.com'),
(13, 'Bruno', 'bmenaryc@istockphoto.com'),
(14, 'Nancee', 'nsabated@prnewswire.com'),
(15, 'Piper', 'pouvere@oracle.com'),
(16, 'Benetta', 'bleganf@google.nl'),
(17, 'Gard', 'gdumberellg@google.com.hk'),
(18, 'Trent', 'tidneyh@dyndns.org'),
(19, 'Doroteya', 'djewari@vistaprint.com'),
(20, 'Brandea', 'bsemeredj@jimdo.com'),
(21, 'Sibyl', 'smarmonk@craigslist.org'),
(22, 'Rosana', 'rpadlyl@mayoclinic.com'),
(23, 'Lolly', 'lbrawsonm@state.gov'),
(24, 'Florette', 'fmachosten@cnet.com'),
(25, 'Mariam', 'mbookero@twitpic.com'),
(26, 'Hollis', 'hreimsp@dailymail.co.uk'),
(27, 'Job', 'jdavidovicq@squarespace.com'),
(28, 'Clarey', 'cisacqr@who.int'),
(29, 'Mina', 'mconisbees@va.gov'),
(30, 'Vivia', 'vpichefordt@merriam-webster.com'),
(31, 'Hervey', 'hpegramu@sphinn.com'),
(32, 'Carol', 'cfriattv@cloudflare.com'),
(33, 'Evangeline', 'epetrollow@people.com.cn'),
(34, 'Jessa', 'jhaggethx@netvibes.com'),
(35, 'Roberta', 'rprescotey@hubpages.com'),
(36, 'Chen', 'ctuckeyz@tripadvisor.com'),
(37, 'Jodi', 'jmollindinia10@ask.com'),
(38, 'Cassius', 'cduley11@newsvine.com'),
(39, 'Konrad', 'kyonnie12@cyberchimps.com'),
(40, 'Patsy', 'ppitrelli13@biglobe.ne.jp'),
(41, 'Osborne', 'ofarran14@ebay.com'),
(42, 'Clarie', 'cmardell15@vinaora.com'),
(43, 'Tessi', 'tlandrean16@java.com'),
(44, 'Ricki', 'rterrett17@theglobeandmail.com'),
(45, 'Di', 'dlorking18@upenn.edu'),
(46, 'Stewart', 'sminchi19@huffingtonpost.com'),
(47, 'Corina', 'cberkowitz1a@prweb.com'),
(48, 'Mil', 'messame1b@sbwire.com'),
(49, 'Eduard', 'esunner1c@google.co.uk'),
(50, 'Roth', 'rgeeraert1d@delicious.com'),
(51, 'Quentin', 'qmosten1e@imdb.com'),
(52, 'Elvin', 'efuggle1f@prlog.org'),
(53, 'Edee', 'ecrossgrove1g@bloglines.com'),
(54, 'Cheslie', 'ctilbrook1h@geocities.com'),
(55, 'Lorrayne', 'lcaen1i@pbs.org'),
(56, 'Cathryn', 'cstubbert1j@google.cn'),
(57, 'Wright', 'wrobertet1k@shutterfly.com'),
(58, 'Kitty', 'klorraine1l@furl.net'),
(59, 'Brennan', 'bbailie1m@wordpress.org'),
(60, 'Curry', 'clumsdon1n@flickr.com'),
(61, 'Rosana', 'rfilippov1o@tinyurl.com'),
(62, 'Elmore', 'esimony1p@opera.com'),
(63, 'Caddric', 'ctomek1q@ucoz.ru'),
(64, 'Marianne', 'mmcgaugey1r@hibu.com'),
(65, 'Dud', 'dbiggar1s@kickstarter.com'),
(66, 'Olia', 'okilcullen1t@gnu.org'),
(67, 'Brennan', 'bwardhough1u@lulu.com'),
(68, 'Ariel', 'azanneli1v@spiegel.de'),
(69, 'Carlyle', 'chabbijam1w@soup.io'),
(70, 'Geraldine', 'ggianolo1x@edublogs.org'),
(71, 'Maisey', 'mdenisovich1y@cargocollective.com'),
(72, 'Arleta', 'adegiorgi1z@t-online.de'),
(73, 'Allene', 'ashear20@gravatar.com'),
(74, 'Joane', 'jbolingbroke21@free.fr'),
(75, 'Elora', 'ehiers22@behance.net'),
(76, 'Albertina', 'abenny23@cbsnews.com'),
(77, 'Arliene', 'asilverton24@apple.com'),
(78, 'Cindee', 'cshearman25@washington.edu'),
(79, 'Merwin', 'mcarlow26@hatena.ne.jp'),
(80, 'Ilyse', 'ihorrell27@hud.gov'),
(81, 'Kearney', 'kguyon28@paypal.com'),
(82, 'Myrtice', 'mpoynzer29@dell.com'),
(83, 'Cathleen', 'ccamus2a@who.int'),
(84, 'Joni', 'jfitzharris2b@mapquest.com'),
(85, 'Claudius', 'cbyars2c@i2i.jp'),
(86, 'Sarina', 'sleaburn2d@51.la'),
(87, 'Riobard', 'riacovolo2e@printfriendly.com'),
(88, 'Koenraad', 'kmccloid2f@chron.com'),
(89, 'Giffy', 'gdeguise2g@xrea.com'),
(90, 'Kerby', 'kjobin2h@google.fr'),
(91, 'Cassi', 'chounson2i@drupal.org'),
(92, 'Grete', 'gshera2j@squidoo.com'),
(93, 'Cassaundra', 'cwyllis2k@icq.com'),
(94, 'Ag', 'awhaley2l@shareasale.com'),
(95, 'Lesli', 'ltroy2m@umich.edu'),
(96, 'Roosevelt', 'rstebbing2n@mac.com'),
(97, 'Josselyn', 'jeslemont2o@posterous.com'),
(98, 'Tessie', 'tthulborn2p@about.me'),
(99, 'Crystal', 'cmckibbin2q@ft.com'),
(100, 'Holden', 'hmeneely2r@miibeian.gov.cn');



-- Poblado de la tabla Rooms


insert into Rooms (room_id, name, rows, columns) values (1, 'Rene', 464, 299);
insert into Rooms (room_id, name, rows, columns) values (2, 'Michael', 838, 673);
insert into Rooms (room_id, name, rows, columns) values (3, 'Helenka', 538, 266);
insert into Rooms (room_id, name, rows, columns) values (4, 'Laurens', 582, 152);
insert into Rooms (room_id, name, rows, columns) values (5, 'Trace', 648, 529);
insert into Rooms (room_id, name, rows, columns) values (6, 'Cesare', 317, 856);
insert into Rooms (room_id, name, rows, columns) values (7, 'Benedikta', 793, 333);
insert into Rooms (room_id, name, rows, columns) values (8, 'Kayla', 416, 328);
insert into Rooms (room_id, name, rows, columns) values (9, 'Julianna', 560, 753);
insert into Rooms (room_id, name, rows, columns) values (10, 'Rosalie', 569, 83);
insert into Rooms (room_id, name, rows, columns) values (11, 'Nial', 382, 417);
insert into Rooms (room_id, name, rows, columns) values (12, 'Barty', 545, 16);
insert into Rooms (room_id, name, rows, columns) values (13, 'Sonja', 279, 265);
insert into Rooms (room_id, name, rows, columns) values (14, 'Kile', 404, 22);
insert into Rooms (room_id, name, rows, columns) values (15, 'Hughie', 414, 609);
insert into Rooms (room_id, name, rows, columns) values (16, 'Klement', 835, 35);
insert into Rooms (room_id, name, rows, columns) values (17, 'Artus', 623, 316);
insert into Rooms (room_id, name, rows, columns) values (18, 'Terri', 326, 558);
insert into Rooms (room_id, name, rows, columns) values (19, 'Cookie', 916, 370);
insert into Rooms (room_id, name, rows, columns) values (20, 'Ashly', 577, 285);
insert into Rooms (room_id, name, rows, columns) values (21, 'Ashla', 974, 547);
insert into Rooms (room_id, name, rows, columns) values (22, 'Breanne', 778, 99);
insert into Rooms (room_id, name, rows, columns) values (23, 'Christiane', 597, 200);
insert into Rooms (room_id, name, rows, columns) values (24, 'Daile', 948, 54);
insert into Rooms (room_id, name, rows, columns) values (25, 'Nola', 607, 357);
insert into Rooms (room_id, name, rows, columns) values (26, 'Hyacinthia', 583, 178);
insert into Rooms (room_id, name, rows, columns) values (27, 'Stevana', 213, 581);
insert into Rooms (room_id, name, rows, columns) values (28, 'Cindie', 257, 517);
insert into Rooms (room_id, name, rows, columns) values (29, 'Tuesday', 726, 606);
insert into Rooms (room_id, name, rows, columns) values (30, 'Chaim', 673, 654);
insert into Rooms (room_id, name, rows, columns) values (31, 'Yurik', 620, 463);
insert into Rooms (room_id, name, rows, columns) values (32, 'Tucky', 975, 704);
insert into Rooms (room_id, name, rows, columns) values (33, 'Shanta', 545, 608);
insert into Rooms (room_id, name, rows, columns) values (34, 'Charlotta', 827, 591);
insert into Rooms (room_id, name, rows, columns) values (35, 'Flora', 30, 327);
insert into Rooms (room_id, name, rows, columns) values (36, 'Trenton', 790, 885);
insert into Rooms (room_id, name, rows, columns) values (37, 'Ronny', 821, 359);
insert into Rooms (room_id, name, rows, columns) values (38, 'Brigitta', 986, 867);
insert into Rooms (room_id, name, rows, columns) values (39, 'Obed', 886, 587);
insert into Rooms (room_id, name, rows, columns) values (40, 'Maxine', 542, 219);
insert into Rooms (room_id, name, rows, columns) values (41, 'Alvy', 253, 353);
insert into Rooms (room_id, name, rows, columns) values (42, 'Calypso', 938, 730);
insert into Rooms (room_id, name, rows, columns) values (43, 'Shannon', 536, 735);
insert into Rooms (room_id, name, rows, columns) values (44, 'Chip', 971, 462);
insert into Rooms (room_id, name, rows, columns) values (45, 'Allin', 208, 798);
insert into Rooms (room_id, name, rows, columns) values (46, 'Antonius', 178, 850);
insert into Rooms (room_id, name, rows, columns) values (47, 'Hazel', 625, 204);
insert into Rooms (room_id, name, rows, columns) values (48, 'Griffie', 846, 844);
insert into Rooms (room_id, name, rows, columns) values (49, 'Dunn', 329, 803);
insert into Rooms (room_id, name, rows, columns) values (50, 'Merrill', 876, 68);
insert into Rooms (room_id, name, rows, columns) values (51, 'Ofelia', 322, 309);
insert into Rooms (room_id, name, rows, columns) values (52, 'Janice', 319, 437);
insert into Rooms (room_id, name, rows, columns) values (53, 'Shurlocke', 832, 275);
insert into Rooms (room_id, name, rows, columns) values (54, 'Renie', 509, 406);
insert into Rooms (room_id, name, rows, columns) values (55, 'Garrik', 147, 203);
insert into Rooms (room_id, name, rows, columns) values (56, 'Gaultiero', 90, 684);
insert into Rooms (room_id, name, rows, columns) values (57, 'Fair', 717, 797);
insert into Rooms (room_id, name, rows, columns) values (58, 'Tally', 70, 842);
insert into Rooms (room_id, name, rows, columns) values (59, 'Ursola', 233, 970);
insert into Rooms (room_id, name, rows, columns) values (60, 'Rodolphe', 457, 190);
insert into Rooms (room_id, name, rows, columns) values (61, 'Franciska', 361, 353);
insert into Rooms (room_id, name, rows, columns) values (62, 'Querida', 995, 43);
insert into Rooms (room_id, name, rows, columns) values (63, 'Vivian', 2, 340);
insert into Rooms (room_id, name, rows, columns) values (64, 'Gearard', 289, 623);
insert into Rooms (room_id, name, rows, columns) values (65, 'Gardy', 613, 712);
insert into Rooms (room_id, name, rows, columns) values (66, 'Gar', 286, 905);
insert into Rooms (room_id, name, rows, columns) values (67, 'Cher', 542, 176);
insert into Rooms (room_id, name, rows, columns) values (68, 'Sunshine', 945, 36);
insert into Rooms (room_id, name, rows, columns) values (69, 'Angelle', 10, 680);
insert into Rooms (room_id, name, rows, columns) values (70, 'Ivan', 26, 92);
insert into Rooms (room_id, name, rows, columns) values (71, 'Curcio', 59, 191);
insert into Rooms (room_id, name, rows, columns) values (72, 'Cherilyn', 998, 741);
insert into Rooms (room_id, name, rows, columns) values (73, 'Maxine', 640, 85);
insert into Rooms (room_id, name, rows, columns) values (74, 'Annice', 923, 942);
insert into Rooms (room_id, name, rows, columns) values (75, 'Carling', 753, 716);
insert into Rooms (room_id, name, rows, columns) values (76, 'Dorey', 947, 699);
insert into Rooms (room_id, name, rows, columns) values (77, 'Ossie', 805, 764);
insert into Rooms (room_id, name, rows, columns) values (78, 'Kipp', 948, 120);
insert into Rooms (room_id, name, rows, columns) values (79, 'Sigrid', 887, 979);
insert into Rooms (room_id, name, rows, columns) values (80, 'Rancell', 279, 910);
insert into Rooms (room_id, name, rows, columns) values (81, 'Zonda', 790, 35);
insert into Rooms (room_id, name, rows, columns) values (82, 'Darya', 708, 73);
insert into Rooms (room_id, name, rows, columns) values (83, 'Robinett', 83, 979);
insert into Rooms (room_id, name, rows, columns) values (84, 'Thorny', 313, 754);
insert into Rooms (room_id, name, rows, columns) values (85, 'Clara', 537, 165);
insert into Rooms (room_id, name, rows, columns) values (86, 'Elsworth', 355, 576);
insert into Rooms (room_id, name, rows, columns) values (87, 'Nicolas', 654, 333);
insert into Rooms (room_id, name, rows, columns) values (88, 'Demetris', 762, 322);
insert into Rooms (room_id, name, rows, columns) values (89, 'Veda', 518, 634);
insert into Rooms (room_id, name, rows, columns) values (90, 'Lockwood', 508, 652);
insert into Rooms (room_id, name, rows, columns) values (91, 'Coral', 368, 899);
insert into Rooms (room_id, name, rows, columns) values (92, 'Romeo', 67, 417);
insert into Rooms (room_id, name, rows, columns) values (93, 'Darby', 855, 256);
insert into Rooms (room_id, name, rows, columns) values (94, 'Robby', 270, 766);
insert into Rooms (room_id, name, rows, columns) values (95, 'Georg', 310, 450);
insert into Rooms (room_id, name, rows, columns) values (96, 'Deva', 169, 176);
insert into Rooms (room_id, name, rows, columns) values (97, 'Donall', 7, 864);
insert into Rooms (room_id, name, rows, columns) values (98, 'Kimberley', 909, 739);
insert into Rooms (room_id, name, rows, columns) values (99, 'Clayborn', 142, 431);
insert into Rooms (room_id, name, rows, columns) values (100, 'Tessy', 6, 317);


-- Poblado de la tabla Workspaces

insert into Workspaces (workspace_id, room_id, row_number, column_number) values (1, 1, 1992918902, 2092058309);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (2, 2, 461143700, 1041313592);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (3, 3, 1437490290, 822639612);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (4, 4, 1919619396, 2019900229);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (5, 5, 2103463702, 288799688);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (6, 6, 1207371928, 755522349);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (7, 7, 1493953872, 715480199);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (8, 8, 1529735602, 511927275);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (9, 9, 1562592250, 1103233076);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (10, 10, 1943377597, 576107542);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (11, 11, 1379860768, 1598333987);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (12, 12, 676907712, 1497184424);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (13, 13, 1555552812, 477898121);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (14, 14, 570716921, 1964801446);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (15, 15, 647093718, 232053276);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (16, 16, 387436975, 63697790);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (17, 17, 607115712, 2087756036);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (18, 18, 1887780728, 1794300034);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (19, 19, 2141202451, 376779226);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (20, 20, 659175913, 2111128218);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (21, 21, 1319693401, 97630494);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (22, 22, 1407120948, 1298121956);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (23, 23, 1997646259, 1510582728);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (24, 24, 556715857, 455184918);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (25, 25, 1198570668, 779803968);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (26, 26, 1347055492, 1427617977);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (27, 27, 1889123558, 31796392);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (28, 28, 958862048, 1051744527);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (29, 29, 1825769715, 1284644933);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (30, 30, 1673104177, 1452572284);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (31, 31, 492732306, 217033250);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (32, 32, 141679597, 512310343);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (33, 33, 2130939260, 715350168);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (34, 34, 2000131130, 2098174461);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (35, 35, 920860098, 1170596275);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (36, 36, 215355651, 718775245);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (37, 37, 1331070875, 444588714);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (38, 38, 1356641357, 414593908);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (39, 39, 311394472, 1222391094);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (40, 40, 1639043060, 308131274);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (41, 41, 867316556, 334383538);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (42, 42, 621682193, 401168801);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (43, 43, 1311819903, 186819776);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (44, 44, 1082842649, 1855877348);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (45, 45, 1029419796, 129318626);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (46, 46, 948542628, 449648372);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (47, 47, 634299971, 508641657);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (48, 48, 2076692315, 1431474359);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (49, 49, 70662097, 926722050);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (50, 50, 1340992300, 823556290);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (51, 51, 961229213, 54372597);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (52, 52, 1913919015, 239249452);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (53, 53, 1272219175, 1920461153);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (54, 54, 372265827, 2146544816);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (55, 55, 1672037077, 1143964257);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (56, 56, 234796292, 309307977);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (57, 57, 1101056590, 1319118819);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (58, 58, 99142383, 542922297);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (59, 59, 788237002, 515016002);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (60, 60, 1464763545, 1971058624);



insert into Workspaces (workspace_id, room_id, row_number, column_number) values (61, 61, 1940205256, 1121824359);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (62, 62, 532380773, 83549285);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (63, 63, 1075691690, 1312276411);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (64, 64, 1249446870, 865536822);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (65, 65, 1908495452, 1196320527);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (66, 66, 807488778, 134330101);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (67, 67, 867536029, 729593272);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (68, 68, 393074545, 2074660933);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (69, 69, 41096930, 1930250589);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (70, 70, 1369822705, 1988817706);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (71, 71, 1068920781, 1673875833);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (72, 72, 244457714, 892541133);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (73, 73, 1770522248, 1374692494);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (74, 74, 1223083461, 1692219929);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (75, 75, 1431826964, 1634326977);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (76, 76, 1769892506, 1585228889);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (77, 77, 2103372269, 1317042612);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (78, 78, 13062163, 1610084974);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (79, 79, 2082082888, 612832449);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (80, 80, 1600699809, 65856360);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (81, 81, 355712250, 1963504338);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (82, 82, 1258238703, 573559745);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (83, 83, 1157205284, 914000952);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (84, 84, 857503103, 1534262541);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (85, 85, 1953218477, 661145026);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (86, 86, 2086059738, 1182279345);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (87, 87, 980970982, 1429828385);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (88, 88, 1927771431, 495800770);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (89, 89, 247119858, 626738481);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (90, 90, 1047948237, 795365360);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (91, 91, 447282520, 267757693);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (92, 92, 1515380206, 1261788260);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (93, 92, 1484756713, 62500620);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (94, 12, 1455159148, 912264121);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (95, 24, 452342460, 78753569);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (96, 34, 141823297, 2140622504);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (97, 56, 590818406, 678803866);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (98, 96, 656190518, 571928838);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (99, 100, 922866124, 1814632186);
insert into Workspaces (workspace_id, room_id, row_number, column_number) values (100, 6, 827978275, 556564352);


-- Poblado de la tabla Sessions

insert into Sessions (session_id, start_time, end_time) values (1, '2018-09-01 02:36:45', '2009-11-18 01:49:57');
insert into Sessions (session_id, start_time, end_time) values (2, '2002-09-17 17:17:16', '2006-08-08 12:35:56');
insert into Sessions (session_id, start_time, end_time) values (3, '2022-05-28 09:15:30', '2022-12-23 03:20:40');
insert into Sessions (session_id, start_time, end_time) values (4, '2015-09-17 18:50:20', '2019-11-17 22:35:07');
insert into Sessions (session_id, start_time, end_time) values (5, '2016-10-16 06:53:43', '2006-08-21 22:21:08');
insert into Sessions (session_id, start_time, end_time) values (6, '2006-06-16 10:29:52', '2005-08-12 10:10:33');
insert into Sessions (session_id, start_time, end_time) values (7, '2015-04-22 10:50:45', '2003-08-20 22:18:49');
insert into Sessions (session_id, start_time, end_time) values (8, '2003-02-26 12:07:44', '2015-11-16 02:55:24');
insert into Sessions (session_id, start_time, end_time) values (9, '2000-01-24 22:17:13', '2017-11-05 10:36:34');
insert into Sessions (session_id, start_time, end_time) values (10, '2019-01-06 13:12:26', '2002-08-10 09:32:42');
insert into Sessions (session_id, start_time, end_time) values (11, '2008-09-08 18:05:21', '2008-12-14 21:06:18');
insert into Sessions (session_id, start_time, end_time) values (12, '2013-06-08 20:45:05', '2011-11-28 23:51:00');
insert into Sessions (session_id, start_time, end_time) values (13, '2006-12-23 04:04:07', '2019-12-13 20:26:01');
insert into Sessions (session_id, start_time, end_time) values (14, '2016-10-23 16:24:44', '2009-04-03 21:27:51');
insert into Sessions (session_id, start_time, end_time) values (15, '2022-04-17 13:17:24', '2003-04-10 23:35:18');
insert into Sessions (session_id, start_time, end_time) values (16, '2012-11-14 20:18:40', '2001-12-17 23:45:04');
insert into Sessions (session_id, start_time, end_time) values (17, '2014-04-17 04:44:06', '2017-01-28 00:23:30');
insert into Sessions (session_id, start_time, end_time) values (18, '2010-11-09 15:11:47', '2007-09-25 18:25:33');
insert into Sessions (session_id, start_time, end_time) values (19, '2010-03-30 22:18:38', '2005-05-08 10:18:20');
insert into Sessions (session_id, start_time, end_time) values (20, '2012-10-22 18:59:24', '2008-02-21 00:11:17');
insert into Sessions (session_id, start_time, end_time) values (21, '2006-10-22 21:32:10', '2006-07-28 11:39:18');
insert into Sessions (session_id, start_time, end_time) values (22, '2017-03-22 16:26:26', '2007-04-13 15:03:09');
insert into Sessions (session_id, start_time, end_time) values (23, '2006-02-01 19:07:04', '2021-07-30 21:07:41');
insert into Sessions (session_id, start_time, end_time) values (24, '2016-07-18 18:37:31', '2006-02-19 20:46:00');
insert into Sessions (session_id, start_time, end_time) values (25, '2022-05-31 13:32:08', '2016-12-25 20:02:33');
insert into Sessions (session_id, start_time, end_time) values (26, '2017-12-07 08:33:58', '2018-06-04 11:19:32');
insert into Sessions (session_id, start_time, end_time) values (27, '2015-03-22 10:58:16', '2001-10-29 10:34:51');
insert into Sessions (session_id, start_time, end_time) values (28, '2010-05-20 05:02:05', '2015-09-17 06:36:00');
insert into Sessions (session_id, start_time, end_time) values (29, '2011-03-03 06:18:43', '2007-11-16 03:42:07');
insert into Sessions (session_id, start_time, end_time) values (30, '2015-08-30 04:23:04', '2019-03-23 15:21:45');
insert into Sessions (session_id, start_time, end_time) values (31, '2007-01-07 08:29:34', '2005-01-16 14:06:09');
insert into Sessions (session_id, start_time, end_time) values (32, '2015-11-28 19:54:53', '2019-01-01 23:19:08');
insert into Sessions (session_id, start_time, end_time) values (33, '2002-01-19 08:36:29', '2014-01-16 09:36:30');
insert into Sessions (session_id, start_time, end_time) values (34, '2015-08-28 00:55:59', '2015-06-21 21:58:42');
insert into Sessions (session_id, start_time, end_time) values (35, '2003-03-27 04:24:32', '2011-06-12 15:14:24');
insert into Sessions (session_id, start_time, end_time) values (36, '2020-06-17 03:27:05', '2022-12-27 20:33:01');
insert into Sessions (session_id, start_time, end_time) values (37, '2022-04-06 01:04:46', '2010-07-18 06:09:41');
insert into Sessions (session_id, start_time, end_time) values (38, '2022-02-10 01:13:33', '2009-11-12 20:42:34');
insert into Sessions (session_id, start_time, end_time) values (39, '2008-08-14 11:37:57', '2010-01-03 22:47:41');
insert into Sessions (session_id, start_time, end_time) values (40, '2011-01-16 11:54:20', '2001-04-22 20:53:33');
insert into Sessions (session_id, start_time, end_time) values (41, '2021-12-14 03:50:32', '2002-12-27 13:31:38');
insert into Sessions (session_id, start_time, end_time) values (42, '2020-03-02 09:06:51', '2004-09-27 02:43:12');
insert into Sessions (session_id, start_time, end_time) values (43, '2021-11-04 06:59:01', '2008-08-17 18:18:21');
insert into Sessions (session_id, start_time, end_time) values (44, '2019-01-29 08:52:30', '2014-06-11 13:17:24');
insert into Sessions (session_id, start_time, end_time) values (45, '2014-08-01 15:29:56', '2020-01-11 10:10:04');
insert into Sessions (session_id, start_time, end_time) values (46, '2009-08-17 14:53:03', '2010-04-19 21:38:21');
insert into Sessions (session_id, start_time, end_time) values (47, '2006-10-09 09:36:10', '2020-07-26 11:41:50');
insert into Sessions (session_id, start_time, end_time) values (48, '2008-11-18 14:40:00', '2013-09-06 10:56:18');
insert into Sessions (session_id, start_time, end_time) values (49, '2002-06-21 08:43:40', '2013-04-04 15:30:11');
insert into Sessions (session_id, start_time, end_time) values (50, '2006-05-24 01:30:12', '2002-08-08 06:27:33');


-- Poblado de la tabla Reservations

insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (1, 1, 1, 1, '5259-04-16 16:25:41');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (2, 2, 2, 2, '4567-06-11 08:19:11');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (3, 3, 3, 3, '9382-12-01 05:04:06');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (4, 4, 4, 4, '7316-12-14 04:32:01');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (5, 5, 5, 5, '9073-07-17 00:42:54');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (6, 6, 6, 6, '6573-07-16 16:59:20');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (7, 7, 7, 7, '4016-01-06 08:52:38');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (8, 8, 8, 8, '5599-02-21 19:11:49');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (9, 9, 9, 9, '5913-04-14 21:52:25');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (10, 10, 10, 10, '6199-04-30 13:35:03');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (11, 11, 11, 11, '7815-03-23 06:51:44');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (12, 12, 12, 12, '8699-12-13 06:57:36');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (13, 13, 13, 13, '6493-06-12 05:29:32');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (14, 14, 14, 14, '3771-09-12 23:16:20');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (15, 15, 15, 15, '7240-08-07 23:07:37');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (16, 16, 16, 16, '8139-02-25 07:30:38');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (17, 17, 17, 17, '9297-12-31 16:17:25');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (18, 18, 18, 18, '6930-10-16 10:12:40');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (19, 19, 19, 19, '6246-08-06 00:51:53');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (20, 20, 20, 20, '2420-05-21 01:39:41');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (21, 21, 21, 21, '4724-10-23 12:53:38');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (22, 22, 22, 22, '8388-09-22 17:24:47');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (23, 23, 23, 23, '3607-03-15 13:53:23');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (24, 24, 24, 24, '7268-11-07 14:57:01');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (25, 25, 25, 25, '4586-01-09 12:30:51');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (26, 26, 26, 26, '7204-07-17 09:49:32');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (27, 27, 27, 27, '2566-06-18 08:07:43');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (28, 28, 28, 28, '7140-12-14 23:35:31');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (29, 29, 29, 29, '8267-08-13 18:28:29');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (30, 30, 30, 30, '2865-07-25 07:59:20');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (31, 31, 31, 31, '4450-09-22 03:57:00');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (32, 32, 32, 32, '8878-10-05 22:11:31');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (33, 33, 33, 33, '8285-05-03 01:10:34');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (34, 34, 34, 34, '6081-03-11 15:42:01');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (35, 35, 35, 35, '4983-10-15 17:36:24');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (36, 36, 36, 36, '6853-02-10 00:29:59');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (37, 37, 37, 37, '2943-06-12 22:43:10');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (38, 38, 38, 38, '9940-06-01 16:05:48');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (39, 39, 39, 39, '5298-04-20 07:31:03');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (40, 40, 40, 40, '6418-01-04 01:02:49');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (41, 41, 41, 41, '7011-12-07 23:37:16');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (42, 42, 42, 42, '7497-05-14 09:14:56');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (43, 43, 43, 43, '3787-08-04 05:48:39');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (44, 44, 44, 44, '2964-01-28 06:03:03');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (45, 45, 45, 45, '5513-06-12 15:02:16');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (46, 46, 46, 46, '7924-12-15 06:43:53');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (47, 47, 47, 47, '3185-04-21 23:23:38');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (48, 48, 48, 48, '6397-04-24 08:22:22');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (49, 49, 49, 49, '6746-01-07 22:50:22');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (50, 50, 50, 50, '4184-07-04 18:24:18');




insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (90, 51, 51, 7, '3647-02-18 15:12:49');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (52, 52, 52, 49, '7382-08-22 14:47:09');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (53, 53, 53, 48, '4784-11-01 21:05:54');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (54, 54, 54, 47, '9902-01-27 21:10:03');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (55, 55, 55, 46, '4550-10-07 12:19:05');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (56, 56, 56, 45, '7042-09-09 14:55:10');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (57, 57, 57, 44, '6370-01-01 08:07:41');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (58, 58, 58, 43, '6392-09-19 20:52:27');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (59, 59, 59, 42, '2575-11-27 14:51:04');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (60, 60, 60, 41, '9520-05-22 01:56:19');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (61, 61, 61, 40, '8401-04-11 04:47:18');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (62, 62, 62, 39, '8202-01-02 17:40:55');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (63, 63, 63, 38, '8674-08-19 11:57:34');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (64, 64, 64, 37, '2804-06-04 10:36:27');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (65, 65, 65, 36, '6464-10-24 12:47:22');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (66, 66, 66, 35, '5592-08-17 19:52:06');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (67, 67, 67, 34, '5690-04-12 16:38:17');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (68, 68, 68, 33, '2951-02-04 09:53:40');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (69, 69, 69, 32, '8737-01-05 04:37:33');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (70, 70, 70, 31, '6823-09-13 14:29:45');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (71, 71, 71, 30, '2903-05-18 09:23:41');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (72, 72, 72, 29, '7346-06-07 00:20:26');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (73, 73, 73, 28, '4535-09-19 05:05:52');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (74, 74, 74, 27, '7618-06-16 13:44:10');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (75, 75, 75, 26, '6198-10-04 08:27:21');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (76, 76, 76, 25, '6667-01-09 02:23:38');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (77, 77, 77, 24, '7957-07-04 01:13:35');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (78, 78, 78, 23, '4181-08-09 05:14:39');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (79, 79, 79, 21, '5981-01-04 20:35:11');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (80, 80, 80, 20, '5231-09-18 10:52:40');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (81, 81, 81, 18, '5612-05-03 01:01:57');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (82, 82, 82, 17, '3432-02-13 01:00:24');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (83, 83, 83, 17, '5051-10-12 01:18:22');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (84, 84, 84, 16, '8530-06-20 04:05:02');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (85, 85, 85, 15, '5806-12-26 13:28:13');
insert into Reservations (reservation_id, user_id, workspace_id, session_id, reservation_time) 
values (86, 86, 86, 8, '9132-09-5 13:28:13');
