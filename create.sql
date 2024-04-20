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

CREATE TABLE "Characters"
(
    "Id"        SERIAL PRIMARY KEY,
    "Name"      VARCHAR(255) NOT NULL,
    "Height"    VARCHAR(50),
    "Weight"    VARCHAR(50),
    "HairColor" VARCHAR(50),
    "SkinColor" VARCHAR(50),
    "EyeColor"  VARCHAR(50),
    "BirthYear" VARCHAR(50),
    "Gender"    VARCHAR(50),
    "PlanetId"  SMALLINT,
    FOREIGN KEY ("PlanetId") REFERENCES "Planets" ("Id")
);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Luke Skywalker', '172', '77', 'blond', 'fair', 'blue', '19BBY', 'male', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('C-3PO', '167', '75', 'n/a', 'gold', 'yellow', '112BBY', 'n/a', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('R2-D2', '96', '32', 'n/a', 'white, blue', 'red', '33BBY', 'n/a', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Darth Vader', '202', '136', 'none', 'white', 'yellow', '41.9BBY', 'male', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Leia Organa', '150', '49', 'brown', 'light', 'brown', '19BBY', 'female', 2);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Owen Lars', '178', '120', 'brown, grey', 'light', 'blue', '52BBY', 'male', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Beru Whitesun lars', '165', '75', 'brown', 'light', 'blue', '47BBY', 'female', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('R5-D4', '97', '32', 'n/a', 'white, red', 'red', 'unknown', 'n/a', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Biggs Darklighter', '183', '84', 'black', 'light', 'brown', '24BBY', 'male', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Obi-Wan Kenobi', '182', '77', 'auburn, white', 'fair', 'blue-gray', '57BBY', 'male', 20);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Anakin Skywalker', '188', '84', 'blond', 'fair', 'blue', '41.9BBY', 'male', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Wilhuff Tarkin', '180', 'unknown', 'auburn, grey', 'fair', 'blue', '64BBY', 'male', 21);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Chewbacca', '228', '112', 'brown', 'unknown', 'blue', '200BBY', 'male', 14);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Han Solo', '180', '80', 'brown', 'fair', 'brown', '29BBY', 'male', 22);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Greedo', '173', '74', 'n/a', 'green', 'black', '44BBY', 'male', 23);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Jabba Desilijic Tiure', '175', '1,358', 'n/a', 'green-tan, brown', 'orange', '600BBY', 'hermaphrodite', 24);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Wedge Antilles', '170', '77', 'brown', 'fair', 'hazel', '21BBY', 'male', 22);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Jek Tono Porkins', '180', '110', 'brown', 'fair', 'blue', 'unknown', 'male', 26);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Yoda', '66', '17', 'white', 'green', 'brown', '896BBY', 'male', 28);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Palpatine', '170', '75', 'grey', 'pale', 'yellow', '82BBY', 'male', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Boba Fett', '183', '78.2', 'black', 'fair', 'brown', '31.5BBY', 'male', 10);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('IG-88', '200', '140', 'none', 'metal', 'red', '15BBY', 'none', 28);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Bossk', '190', '113', 'none', 'green', 'red', '53BBY', 'male', 29);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Lando Calrissian', '177', '79', 'black', 'dark', 'brown', '31BBY', 'male', 30);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Lobot', '175', '79', 'none', 'light', 'blue', '37BBY', 'male', 6);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Ackbar', '180', '83', 'none', 'brown mottle', 'orange', '41BBY', 'male', 31);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Mon Mothma', '150', 'unknown', 'auburn', 'fair', 'blue', '48BBY', 'female', 32);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Arvel Crynyd', 'unknown', 'unknown', 'brown', 'fair', 'brown', 'unknown', 'male', 28);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Wicket Systri Warrick', '88', '20', 'brown', 'brown', 'brown', '8BBY', 'male', 7);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Nien Nunb', '160', '68', 'none', 'grey', 'black', 'unknown', 'male', 33);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Qui-Gon Jinn', '193', '89', 'brown', 'fair', 'blue', '92BBY', 'male', 28);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Nute Gunray', '191', '90', 'none', 'mottled green', 'red', 'unknown', 'male', 18);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Finis Valorum', '170', 'unknown', 'blond', 'fair', 'blue', '91BBY', 'male', 9);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Padmé Amidala', '185', '45', 'brown', 'light', 'brown', '46BBY', 'female', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Jar Jar Binks', '196', '66', 'none', 'orange', 'orange', '52BBY', 'male', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Roos Tarpals', '224', '82', 'none', 'grey', 'orange', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Rugor Nass', '206', 'unknown', 'none', 'green', 'orange', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Ric Olié', '183', 'unknown', 'brown', 'fair', 'blue', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Watto', '137', 'unknown', 'black', 'blue, grey', 'yellow', 'unknown', 'male', 34);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Sebulba', '112', '40', 'none', 'grey, red', 'orange', 'unknown', 'male', 35);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Quarsh Panaka', '183', 'unknown', 'black', 'dark', 'brown', '62BBY', 'male', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Shmi Skywalker', '163', 'unknown', 'black', 'fair', 'brown', '72BBY', 'female', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Darth Maul', '175', '80', 'none', 'red', 'yellow', '54BBY', 'male', 36);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Bib Fortuna', '180', 'unknown', 'none', 'pale', 'pink', 'unknown', 'male', 37);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Ayla Secura', '178', '55', 'none', 'blue', 'hazel', '48BBY', 'female', 37);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Ratts Tyerel', '79', '15', 'none', 'grey, blue', 'unknown', 'unknown', 'male', 38);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Dud Bolt', '94', '45', 'none', 'blue, grey', 'yellow', 'unknown', 'male', 39);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Gasgano', '122', 'unknown', 'none', 'white, blue', 'black', 'unknown', 'male', 40);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Ben Quadinaros', '163', '65', 'none', 'grey, green, yellow', 'orange', 'unknown', 'male', 41);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Mace Windu', '188', '84', 'none', 'dark', 'brown', '72BBY', 'male', 42);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Ki-Adi-Mundi', '198', '82', 'white', 'pale', 'yellow', '92BBY', 'male', 43);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Kit Fisto', '196', '87', 'none', 'green', 'black', 'unknown', 'male', 44);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Eeth Koth', '171', 'unknown', 'black', 'brown', 'brown', 'unknown', 'male', 45);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Adi Gallia', '184', '50', 'none', 'dark', 'blue', 'unknown', 'female', 9);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Saesee Tiin', '188', 'unknown', 'none', 'pale', 'orange', 'unknown', 'male', 47);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Yarael Poof', '264', 'unknown', 'none', 'white', 'yellow', 'unknown', 'male', 48);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Plo Koon', '188', '80', 'none', 'orange', 'black', '22BBY', 'male', 49);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Mas Amedda', '196', 'unknown', 'none', 'blue', 'blue', 'unknown', 'male', 50);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Gregar Typho', '185', '85', 'black', 'dark', 'brown', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Cordé', '157', 'unknown', 'brown', 'light', 'brown', 'unknown', 'female', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Cliegg Lars', '183', 'unknown', 'brown', 'fair', 'blue', '82BBY', 'male', 1);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Poggle the Lesser', '183', '80', 'none', 'green', 'yellow', 'unknown', 'male', 11);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Luminara Unduli', '170', '56.2', 'black', 'yellow', 'blue', '58BBY', 'female', 51);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Barriss Offee', '166', '50', 'black', 'yellow', 'blue', '40BBY', 'female', 51);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Dormé', '165', 'unknown', 'brown', 'light', 'brown', 'unknown', 'female', 8);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Dooku', '193', '80', 'white', 'fair', 'brown', '102BBY', 'male', 52);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Bail Prestor Organa', '191', 'unknown', 'black', 'tan', 'brown', '67BBY', 'male', 2);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Jango Fett', '183', '79', 'black', 'tan', 'brown', '66BBY', 'male', 53);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Zam Wesell', '168', '55', 'blonde', 'fair, green, yellow', 'yellow', 'unknown', 'female', 54);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Dexter Jettster', '198', '102', 'none', 'brown', 'yellow', 'unknown', 'male', 55);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Lama Su', '229', '88', 'none', 'grey', 'black', 'unknown', 'male', 10);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Taun We', '213', 'unknown', 'none', 'grey', 'black', 'unknown', 'female', 10);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Jocasta Nu', '167', 'unknown', 'white', 'fair', 'blue', 'unknown', 'female', 9);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('R4-P17', '96', 'unknown', 'none', 'silver, red', 'red, blue', 'unknown', 'female', 28);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Wat Tambor', '193', '48', 'none', 'green, grey', 'unknown', 'unknown', 'male', 56);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('San Hill', '191', 'unknown', 'none', 'grey', 'gold', 'unknown', 'male', 57);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Shaak Ti', '178', '57', 'none', 'red, blue, white', 'black', 'unknown', 'female', 58);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Grievous', '216', '159', 'none', 'brown, white', 'green, yellow', 'unknown', 'male', 59);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Tarfful', '234', '136', 'brown', 'brown', 'blue', 'unknown', 'male', 14);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Raymus Antilles', '188', '79', 'brown', 'light', 'brown', 'unknown', 'male', 2);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Sly Moore', '178', '48', 'none', 'pale', 'white', 'unknown', 'female', 60);

INSERT INTO "Characters" ("Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender", "PlanetId")
VALUES ('Tion Medon', '206', '80', 'none', 'grey', 'black', 'unknown', 'male', 12);


