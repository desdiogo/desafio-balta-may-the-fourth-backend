CREATE TABLE "Movies"
(
    "Id"           SERIAL PRIMARY KEY,
    "Title"        VARCHAR(255) NOT NULL,
    "Episode"      SMALLINT     NOT NULL,
    "OpeningCrawl" TEXT,
    "Director"     VARCHAR(100) NOT NULL,
    "Producer"     VARCHAR(100) NOT NULL,
    "ReleaseDate"  DATE         NOT NULL
);

-- Inserir os dados do filme "A New Hope"
INSERT INTO "Movies" ("Title", "Episode", "OpeningCrawl", "Director", "Producer", "ReleaseDate")
VALUES ('A New Hope', 4,
        'It is a period of civil war.\r\nRebel spaceships, striking\r\nfrom a hidden base, have won\r\ntheir first victory against\r\nthe evil Galactic Empire.\r\n\r\nDuring the battle, Rebel\r\nspies managed to steal secret\r\nplans to the Empire''s\r\nultimate weapon, the DEATH\r\nSTAR, an armored space\r\nstation with enough power\r\nto destroy an entire planet.\r\n\r\nPursued by the Empire''s\r\nsinister agents, Princess\r\nLeia races home aboard her\r\nstarship, custodian of the\r\nstolen plans that can save her\r\npeople and restore\r\nfreedom to the galaxy....',
        'George Lucas', 'Gary Kurtz, Rick McCallum', '1977-05-25');

-- Inserir os dados do filme "The Empire Strikes Back"
INSERT INTO "Movies" ("Title", "Episode", "OpeningCrawl", "Director", "Producer", "ReleaseDate")
VALUES ('The Empire Strikes Back', 5,
        'It is a dark time for the\r\nRebellion. Although the Death\r\nStar has been destroyed,\r\nImperial troops have driven the\r\nRebel forces from their hidden\r\nbase and pursued them across\r\nthe galaxy.\r\n\r\nEvading the dreaded Imperial\r\nStarfleet, a group of freedom\r\nfighters led by Luke Skywalker\r\nhas established a new secret\r\nbase on the remote ice world\r\nof Hoth.\r\n\r\nThe evil lord Darth Vader,\r\nobsessed with finding young\r\nSkywalker, has dispatched\r\nthousands of remote probes into\r\nthe far reaches of space....',
        'Irvin Kershner', 'Gary Kurtz, Rick McCallum', '1980-05-17');

-- Inserir os dados do filme "Return of the Jedi"
INSERT INTO "Movies" ("Title", "Episode", "OpeningCrawl", "Director", "Producer", "ReleaseDate")
VALUES ('Return of the Jedi', 6,
        'Luke Skywalker has returned to\r\nhis home planet of Tatooine in\r\nan attempt to rescue his\r\nfriend Han Solo from the\r\nclutches of the vile gangster\r\nJabba the Hutt.\r\n\r\nLittle does Luke know that the\r\nGALACTIC EMPIRE has secretly\r\nbegun construction on a new\r\narmored space station even\r\nmore powerful than the first\r\ndreaded Death Star.\r\n\r\nWhen completed, this ultimate\r\nweapon will spell certain doom\r\nfor the small band of rebels\r\nstruggling to restore freedom\r\nto the galaxy...',
        'Richard Marquand', 'Howard G. Kazanjian, George Lucas, Rick McCallum', '1983-05-25');

-- Inserir os dados do filme "The Phantom Menace"
INSERT INTO "Movies" ("Title", "Episode", "OpeningCrawl", "Director", "Producer", "ReleaseDate")
VALUES ('The Phantom Menace', 1,
        'Turmoil has engulfed the\r\nGalactic Republic. The taxation\r\nof trade routes to outlying star\r\nsystems is in dispute.\r\n\r\nHoping to resolve the matter\r\nwith a blockade of deadly\r\nbattleships, the greedy Trade\r\nFederation has stopped all\r\nshipping to the small planet\r\nof Naboo.\r\n\r\nWhile the Congress of the\r\nRepublic endlessly debates\r\nthis alarming chain of events,\r\nthe Supreme Chancellor has\r\nsecretly dispatched two Jedi\r\nKnights, the guardians of\r\npeace and justice in the\r\ngalaxy, to settle the conflict....',
        'George Lucas', 'Rick McCallum', '1999-05-19');

-- Inserir os dados do filme "Attack of the Clones"
INSERT INTO "Movies" ("Title", "Episode", "OpeningCrawl", "Director", "Producer", "ReleaseDate")
VALUES ('Attack of the Clones', 2,
        'There is unrest in the Galactic\r\nSenate. Several thousand solar\r\nsystems have declared their\r\nintentions to leave the Republic.\r\n\r\nThis separatist movement,\r\nunder the leadership of the\r\nmysterious Count Dooku, has\r\nmade it difficult for the limited\r\nnumber of Jedi Knights to maintain \r\npeace and order in the galaxy.\r\n\r\nSenator Amidala, the former\r\nQueen of Naboo, is returning\r\nto the Galactic Senate to vote\r\non the critical issue of creating\r\nan ARMY OF THE REPUBLIC\r\nto assist the overwhelmed\r\nJedi....',
        'George Lucas', 'Rick McCallum', '2002-05-16');

-- Inserir os dados do filme "Revenge of the Sith"
INSERT INTO "Movies" ("Title", "Episode", "OpeningCrawl", "Director", "Producer", "ReleaseDate")
VALUES ('Revenge of the Sith', 3,
        'War! The Republic is crumbling\r\nunder attacks by the ruthless\r\nSith Lord, Count Dooku.\r\nThere are heroes on both sides.\r\nEvil is everywhere.\r\n\r\nIn a stunning move, the\r\nfiendish droid leader, General\r\nGrievous, has swept into the\r\nRepublic capital and kidnapped\r\nChancellor Palpatine, leader of\r\nthe Galactic Senate.\r\n\r\nAs the Separatist Droid Army\r\nattempts to flee the besieged\r\ncapital with their valuable\r\nhostage, two Jedi Knights lead a\r\ndesperate mission to rescue the\r\ncaptive Chancellor....',
        'George Lucas', 'Rick McCallum', '2005-05-19');


CREATE TABLE "Planets"
(
    "Id"             SERIAL PRIMARY KEY,
    "Name"           VARCHAR(255) NOT NULL,
    "RotationPeriod" VARCHAR(255),
    "OrbitalPeriod"  VARCHAR(255),
    "Diameter"       VARCHAR(255),
    "Climate"        VARCHAR(255),
    "Gravity"        VARCHAR(255),
    "Terrain"        VARCHAR(255),
    "SurfaceWater"   VARCHAR(255),
    "Population"     VARCHAR(255)
);

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Tatooine', '23', '304', '10465', 'arid', '1 standard', 'desert', '1', '200000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Alderaan', '24', '364', '12500', 'temperate', '1 standard', 'grasslands, mountains', '40', '2000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Yavin IV', '24', '4818', '10200', 'temperate, tropical', '1 standard', 'jungle, rainforests', '8', '1000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Hoth', '23', '549', '7200', 'frozen', '1.1 standard', 'tundra, ice caves, mountain ranges', '100', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Dagobah', '23', '341', '8900', 'murky', 'N/A', 'swamp, jungles', '8', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Bespin', '12', '5110', '118000', 'temperate', '1.5 (surface), 1 standard (Cloud City)', 'gas giant', '0', '6000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Endor', '18', '402', '4900', 'temperate', '0.85 standard', 'forests, mountains, lakes', '8', '30000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Naboo', '26', '312', '12120', 'temperate', '1 standard', 'grassy hills, swamps, forests, mountains', '12', '4500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Coruscant', '24', '368', '12240', 'temperate', '1 standard', 'cityscape, mountains', 'unknown', '1000000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Kamino', '27', '463', '19720', 'temperate', '1 standard', 'ocean', '100', '1000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Geonosis', '30', '256', '11370', 'temperate, arid', '0.9 standard', 'rock, desert, mountain, barren', '5', '100000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Utapau', '27', '351', '12900', 'temperate, arid, windy', '1 standard', 'scrublands, savanna, canyons, sinkholes', '0.9', '95000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Mustafar', '36', '412', '4200', 'hot', '1 standard', 'volcanoes, lava rivers, mountains, caves', '0', '20000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Kashyyyk', '26', '381', '12765', 'tropical', '1 standard', 'jungle, forests, lakes, rivers', '60', '45000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Polis Massa', '24', '590', '0', 'artificial temperate ', '0.56 standard', 'airless asteroid', '0', '1000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Mygeeto', '12', '167', '10088', 'frigid', '1 standard', 'glaciers, mountains, ice canyons', 'unknown', '19000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Felucia', '34', '231', '9100', 'hot, humid', '0.75 standard', 'fungus forests', 'unknown', '8500000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Cato Neimoidia', '25', '278', '0', 'temperate, moist', '1 standard', 'mountains, fields, forests, rock arches', 'unknown', '10000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Saleucami', '26', '392', '14920', 'hot', 'unknown', 'caves, desert, mountains, volcanoes', 'unknown', '1400000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Stewjon', 'unknown', 'unknown', '0', 'temperate', '1 standard', 'grass', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Eriadu', '24', '360', '13490', 'polluted', '1 standard', 'cityscape', 'unknown', '22000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Corellia', '25', '329', '11000', 'temperate', '1 standard', 'plains, urban, hills, forests', '70', '3000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Rodia', '29', '305', '7549', 'hot', '1 standard', 'jungles, oceans, urban, swamps', '60', '1300000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Nal Hutta', '87', '413', '12150', 'temperate', '1 standard', 'urban, oceans, swamps, bogs', 'unknown', '7000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Dantooine', '25', '378', '9830', 'temperate', '1 standard', 'oceans, savannas, mountains, grasslands', 'unknown', '1000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Bestine IV', '26', '680', '6400', 'temperate', 'unknown', 'rocky islands, oceans', '98', '62000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Ord Mantell', '26', '334', '14050', 'temperate', '1 standard', 'plains, seas, mesas', '10', '4000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('unknown', '0', '0', '0', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Trandosha', '25', '371', '0', 'arid', '0.62 standard', 'mountains, seas, grasslands, deserts', 'unknown', '42000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Socorro', '20', '326', '0', 'arid', '1 standard', 'deserts, mountains', 'unknown', '300000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Mon Cala', '21', '398', '11030', 'temperate', '1', 'oceans, reefs, islands', '100', '27000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Chandrila', '20', '368', '13500', 'temperate', '1', 'plains, forests', '40', '1200000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Sullust', '20', '263', '12780', 'superheated', '1', 'mountains, volcanoes, rocky deserts', '5', '18500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Toydaria', '21', '184', '7900', 'temperate', '1', 'swamps, lakes', 'unknown', '11000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Malastare', '26', '201', '18880', 'arid, temperate, tropical', '1.56', 'swamps, deserts, jungles, mountains', 'unknown', '2000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Dathomir', '24', '491', '10480', 'temperate', '0.9', 'forests, deserts, savannas', 'unknown', '5200');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Ryloth', '30', '305', '10600', 'temperate, arid, subartic', '1', 'mountains, valleys, deserts, tundra', '5', '1500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Aleen Minor', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Vulpter', '22', '391', '14900', 'temperate, artic', '1', 'urban, barren', 'unknown', '421000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Troiken', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'desert, tundra, rainforests, mountains', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Tund', '48', '1770', '12190', 'unknown', 'unknown', 'barren, ash', 'unknown', '0');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Haruun Kal', '25', '383', '10120', 'temperate', '0.98', 'toxic cloudsea, plateaus, volcanoes', 'unknown', '705300');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Cerea', '27', '386', 'unknown', 'temperate', '1', 'verdant', '20', '450000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Glee Anselm', '33', '206', '15600', 'tropical, temperate', '1', 'lakes, islands, swamps, seas', '80', '500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Iridonia', '29', '413', 'unknown', 'unknown', 'unknown', 'rocky canyons, acid pools', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Tholoth', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Iktotch', '22', '481', 'unknown', 'arid, rocky, windy', '1', 'rocky', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Quermia', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Dorin', '22', '409', '13400', 'temperate', '1', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Champala', '27', '318', 'unknown', 'temperate', '1', 'oceans, rainforests, plateaus', 'unknown', '3500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Mirial', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'deserts', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Serenno', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'rainforests, rivers, mountains', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Concord Dawn', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'jungles, forests, deserts', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Zolan', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Ojom', 'unknown', 'unknown', 'unknown', 'frigid', 'unknown', 'oceans, glaciers', '100', '500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Skako', '27', '384', 'unknown', 'temperate', '1', 'urban, vines', 'unknown', '500000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Muunilinst', '28', '412', '13800', 'temperate', '1', 'plains, forests, hills, mountains', '25', '5000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Shili', 'unknown', 'unknown', 'unknown', 'temperate', '1', 'cities, savannahs, seas, plains', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Kalee', '23', '378', '13850', 'arid, temperate, tropical', '1', 'rainforests, cliffs, canyons, seas', 'unknown', '4000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain", "SurfaceWater", "Population")
VALUES ('Umbara', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

