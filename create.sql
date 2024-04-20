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

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Tatooine', '23', '304', '10465', 'arid', '1 standard', 'desert', '1', '200000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Alderaan', '24', '364', '12500', 'temperate', '1 standard', 'grasslands, mountains', '40', '2000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Yavin IV', '24', '4818', '10200', 'temperate, tropical', '1 standard', 'jungle, rainforests', '8', '1000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Hoth', '23', '549', '7200', 'frozen', '1.1 standard', 'tundra, ice caves, mountain ranges', '100', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Dagobah', '23', '341', '8900', 'murky', 'N/A', 'swamp, jungles', '8', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Bespin', '12', '5110', '118000', 'temperate', '1.5 (surface), 1 standard (Cloud City)', 'gas giant', '0',
        '6000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Endor', '18', '402', '4900', 'temperate', '0.85 standard', 'forests, mountains, lakes', '8', '30000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Naboo', '26', '312', '12120', 'temperate', '1 standard', 'grassy hills, swamps, forests, mountains', '12',
        '4500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Coruscant', '24', '368', '12240', 'temperate', '1 standard', 'cityscape, mountains', 'unknown',
        '1000000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Kamino', '27', '463', '19720', 'temperate', '1 standard', 'ocean', '100', '1000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Geonosis', '30', '256', '11370', 'temperate, arid', '0.9 standard', 'rock, desert, mountain, barren', '5',
        '100000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Utapau', '27', '351', '12900', 'temperate, arid, windy', '1 standard',
        'scrublands, savanna, canyons, sinkholes', '0.9', '95000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Mustafar', '36', '412', '4200', 'hot', '1 standard', 'volcanoes, lava rivers, mountains, caves', '0', '20000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Kashyyyk', '26', '381', '12765', 'tropical', '1 standard', 'jungle, forests, lakes, rivers', '60', '45000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Polis Massa', '24', '590', '0', 'artificial temperate ', '0.56 standard', 'airless asteroid', '0', '1000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Mygeeto', '12', '167', '10088', 'frigid', '1 standard', 'glaciers, mountains, ice canyons', 'unknown',
        '19000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Felucia', '34', '231', '9100', 'hot, humid', '0.75 standard', 'fungus forests', 'unknown', '8500000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Cato Neimoidia', '25', '278', '0', 'temperate, moist', '1 standard', 'mountains, fields, forests, rock arches',
        'unknown', '10000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Saleucami', '26', '392', '14920', 'hot', 'unknown', 'caves, desert, mountains, volcanoes', 'unknown',
        '1400000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Stewjon', 'unknown', 'unknown', '0', 'temperate', '1 standard', 'grass', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Eriadu', '24', '360', '13490', 'polluted', '1 standard', 'cityscape', 'unknown', '22000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Corellia', '25', '329', '11000', 'temperate', '1 standard', 'plains, urban, hills, forests', '70',
        '3000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Rodia', '29', '305', '7549', 'hot', '1 standard', 'jungles, oceans, urban, swamps', '60', '1300000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Nal Hutta', '87', '413', '12150', 'temperate', '1 standard', 'urban, oceans, swamps, bogs', 'unknown',
        '7000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Dantooine', '25', '378', '9830', 'temperate', '1 standard', 'oceans, savannas, mountains, grasslands',
        'unknown', '1000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Bestine IV', '26', '680', '6400', 'temperate', 'unknown', 'rocky islands, oceans', '98', '62000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Ord Mantell', '26', '334', '14050', 'temperate', '1 standard', 'plains, seas, mesas', '10', '4000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('unknown', '0', '0', '0', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Trandosha', '25', '371', '0', 'arid', '0.62 standard', 'mountains, seas, grasslands, deserts', 'unknown',
        '42000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Socorro', '20', '326', '0', 'arid', '1 standard', 'deserts, mountains', 'unknown', '300000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Mon Cala', '21', '398', '11030', 'temperate', '1', 'oceans, reefs, islands', '100', '27000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Chandrila', '20', '368', '13500', 'temperate', '1', 'plains, forests', '40', '1200000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Sullust', '20', '263', '12780', 'superheated', '1', 'mountains, volcanoes, rocky deserts', '5', '18500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Toydaria', '21', '184', '7900', 'temperate', '1', 'swamps, lakes', 'unknown', '11000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Malastare', '26', '201', '18880', 'arid, temperate, tropical', '1.56', 'swamps, deserts, jungles, mountains',
        'unknown', '2000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Dathomir', '24', '491', '10480', 'temperate', '0.9', 'forests, deserts, savannas', 'unknown', '5200');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Ryloth', '30', '305', '10600', 'temperate, arid, subartic', '1', 'mountains, valleys, deserts, tundra', '5',
        '1500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Aleen Minor', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Vulpter', '22', '391', '14900', 'temperate, artic', '1', 'urban, barren', 'unknown', '421000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Troiken', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'desert, tundra, rainforests, mountains',
        'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Tund', '48', '1770', '12190', 'unknown', 'unknown', 'barren, ash', 'unknown', '0');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Haruun Kal', '25', '383', '10120', 'temperate', '0.98', 'toxic cloudsea, plateaus, volcanoes', 'unknown',
        '705300');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Cerea', '27', '386', 'unknown', 'temperate', '1', 'verdant', '20', '450000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Glee Anselm', '33', '206', '15600', 'tropical, temperate', '1', 'lakes, islands, swamps, seas', '80',
        '500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Iridonia', '29', '413', 'unknown', 'unknown', 'unknown', 'rocky canyons, acid pools', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Tholoth', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Iktotch', '22', '481', 'unknown', 'arid, rocky, windy', '1', 'rocky', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Quermia', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Dorin', '22', '409', '13400', 'temperate', '1', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Champala', '27', '318', 'unknown', 'temperate', '1', 'oceans, rainforests, plateaus', 'unknown', '3500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Mirial', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'deserts', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Serenno', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'rainforests, rivers, mountains', 'unknown',
        'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Concord Dawn', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'jungles, forests, deserts', 'unknown',
        'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Zolan', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown', 'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Ojom', 'unknown', 'unknown', 'unknown', 'frigid', 'unknown', 'oceans, glaciers', '100', '500000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Skako', '27', '384', 'unknown', 'temperate', '1', 'urban, vines', 'unknown', '500000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Muunilinst', '28', '412', '13800', 'temperate', '1', 'plains, forests, hills, mountains', '25', '5000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Shili', 'unknown', 'unknown', 'unknown', 'temperate', '1', 'cities, savannahs, seas, plains', 'unknown',
        'unknown');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
VALUES ('Kalee', '23', '378', '13850', 'arid, temperate, tropical', '1', 'rainforests, cliffs, canyons, seas',
        'unknown', '4000000000');

INSERT INTO "Planets" ("Name", "RotationPeriod", "OrbitalPeriod", "Diameter", "Climate", "Gravity", "Terrain",
                       "SurfaceWater", "Population")
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

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (1, 'Luke Skywalker', '172', '77', 'blond', 'fair', 'blue', '19BBY', 'male', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (2, 'C-3PO', '167', '75', 'n/a', 'gold', 'yellow', '112BBY', 'n/a', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (3, 'R2-D2', '96', '32', 'n/a', 'white, blue', 'red', '33BBY', 'n/a', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (4, 'Darth Vader', '202', '136', 'none', 'white', 'yellow', '41.9BBY', 'male', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (5, 'Leia Organa', '150', '49', 'brown', 'light', 'brown', '19BBY', 'female', 2);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (6, 'Owen Lars', '178', '120', 'brown, grey', 'light', 'blue', '52BBY', 'male', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (7, 'Beru Whitesun lars', '165', '75', 'brown', 'light', 'blue', '47BBY', 'female', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (8, 'R5-D4', '97', '32', 'n/a', 'white, red', 'red', 'unknown', 'n/a', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (9, 'Biggs Darklighter', '183', '84', 'black', 'light', 'brown', '24BBY', 'male', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (10, 'Obi-Wan Kenobi', '182', '77', 'auburn, white', 'fair', 'blue-gray', '57BBY', 'male', 20);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (11, 'Anakin Skywalker', '188', '84', 'blond', 'fair', 'blue', '41.9BBY', 'male', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (12, 'Wilhuff Tarkin', '180', 'unknown', 'auburn, grey', 'fair', 'blue', '64BBY', 'male', 21);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (13, 'Chewbacca', '228', '112', 'brown', 'unknown', 'blue', '200BBY', 'male', 14);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (14, 'Han Solo', '180', '80', 'brown', 'fair', 'brown', '29BBY', 'male', 22);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (15, 'Greedo', '173', '74', 'n/a', 'green', 'black', '44BBY', 'male', 23);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (16, 'Jabba Desilijic Tiure', '175', '1,358', 'n/a', 'green-tan, brown', 'orange', '600BBY', 'hermaphrodite',
        24);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (18, 'Wedge Antilles', '170', '77', 'brown', 'fair', 'hazel', '21BBY', 'male', 22);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (19, 'Jek Tono Porkins', '180', '110', 'brown', 'fair', 'blue', 'unknown', 'male', 26);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (20, 'Yoda', '66', '17', 'white', 'green', 'brown', '896BBY', 'male', 28);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (21, 'Palpatine', '170', '75', 'grey', 'pale', 'yellow', '82BBY', 'male', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (22, 'Boba Fett', '183', '78.2', 'black', 'fair', 'brown', '31.5BBY', 'male', 10);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (23, 'IG-88', '200', '140', 'none', 'metal', 'red', '15BBY', 'none', 28);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (24, 'Bossk', '190', '113', 'none', 'green', 'red', '53BBY', 'male', 29);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (25, 'Lando Calrissian', '177', '79', 'black', 'dark', 'brown', '31BBY', 'male', 30);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (26, 'Lobot', '175', '79', 'none', 'light', 'blue', '37BBY', 'male', 6);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (27, 'Ackbar', '180', '83', 'none', 'brown mottle', 'orange', '41BBY', 'male', 31);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (28, 'Mon Mothma', '150', 'unknown', 'auburn', 'fair', 'blue', '48BBY', 'female', 32);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (29, 'Arvel Crynyd', 'unknown', 'unknown', 'brown', 'fair', 'brown', 'unknown', 'male', 28);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (30, 'Wicket Systri Warrick', '88', '20', 'brown', 'brown', 'brown', '8BBY', 'male', 7);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (31, 'Nien Nunb', '160', '68', 'none', 'grey', 'black', 'unknown', 'male', 33);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (32, 'Qui-Gon Jinn', '193', '89', 'brown', 'fair', 'blue', '92BBY', 'male', 28);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (33, 'Nute Gunray', '191', '90', 'none', 'mottled green', 'red', 'unknown', 'male', 18);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (34, 'Finis Valorum', '170', 'unknown', 'blond', 'fair', 'blue', '91BBY', 'male', 9);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (35, 'Padmé Amidala', '185', '45', 'brown', 'light', 'brown', '46BBY', 'female', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (36, 'Jar Jar Binks', '196', '66', 'none', 'orange', 'orange', '52BBY', 'male', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (37, 'Roos Tarpals', '224', '82', 'none', 'grey', 'orange', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (38, 'Rugor Nass', '206', 'unknown', 'none', 'green', 'orange', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (39, 'Ric Olié', '183', 'unknown', 'brown', 'fair', 'blue', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (40, 'Watto', '137', 'unknown', 'black', 'blue, grey', 'yellow', 'unknown', 'male', 34);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (41, 'Sebulba', '112', '40', 'none', 'grey, red', 'orange', 'unknown', 'male', 35);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (42, 'Quarsh Panaka', '183', 'unknown', 'black', 'dark', 'brown', '62BBY', 'male', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (43, 'Shmi Skywalker', '163', 'unknown', 'black', 'fair', 'brown', '72BBY', 'female', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (44, 'Darth Maul', '175', '80', 'none', 'red', 'yellow', '54BBY', 'male', 36);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (45, 'Bib Fortuna', '180', 'unknown', 'none', 'pale', 'pink', 'unknown', 'male', 37);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (46, 'Ayla Secura', '178', '55', 'none', 'blue', 'hazel', '48BBY', 'female', 37);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (47, 'Ratts Tyerel', '79', '15', 'none', 'grey, blue', 'unknown', 'unknown', 'male', 38);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (48, 'Dud Bolt', '94', '45', 'none', 'blue, grey', 'yellow', 'unknown', 'male', 39);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (49, 'Gasgano', '122', 'unknown', 'none', 'white, blue', 'black', 'unknown', 'male', 40);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (50, 'Ben Quadinaros', '163', '65', 'none', 'grey, green, yellow', 'orange', 'unknown', 'male', 41);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (51, 'Mace Windu', '188', '84', 'none', 'dark', 'brown', '72BBY', 'male', 42);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (52, 'Ki-Adi-Mundi', '198', '82', 'white', 'pale', 'yellow', '92BBY', 'male', 43);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (53, 'Kit Fisto', '196', '87', 'none', 'green', 'black', 'unknown', 'male', 44);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (54, 'Eeth Koth', '171', 'unknown', 'black', 'brown', 'brown', 'unknown', 'male', 45);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (55, 'Adi Gallia', '184', '50', 'none', 'dark', 'blue', 'unknown', 'female', 9);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (56, 'Saesee Tiin', '188', 'unknown', 'none', 'pale', 'orange', 'unknown', 'male', 47);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (57, 'Yarael Poof', '264', 'unknown', 'none', 'white', 'yellow', 'unknown', 'male', 48);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (58, 'Plo Koon', '188', '80', 'none', 'orange', 'black', '22BBY', 'male', 49);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (59, 'Mas Amedda', '196', 'unknown', 'none', 'blue', 'blue', 'unknown', 'male', 50);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (60, 'Gregar Typho', '185', '85', 'black', 'dark', 'brown', 'unknown', 'male', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (61, 'Cordé', '157', 'unknown', 'brown', 'light', 'brown', 'unknown', 'female', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (62, 'Cliegg Lars', '183', 'unknown', 'brown', 'fair', 'blue', '82BBY', 'male', 1);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (63, 'Poggle the Lesser', '183', '80', 'none', 'green', 'yellow', 'unknown', 'male', 11);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (64, 'Luminara Unduli', '170', '56.2', 'black', 'yellow', 'blue', '58BBY', 'female', 51);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (65, 'Barriss Offee', '166', '50', 'black', 'yellow', 'blue', '40BBY', 'female', 51);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (66, 'Dormé', '165', 'unknown', 'brown', 'light', 'brown', 'unknown', 'female', 8);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (67, 'Dooku', '193', '80', 'white', 'fair', 'brown', '102BBY', 'male', 52);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (68, 'Bail Prestor Organa', '191', 'unknown', 'black', 'tan', 'brown', '67BBY', 'male', 2);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (69, 'Jango Fett', '183', '79', 'black', 'tan', 'brown', '66BBY', 'male', 53);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (70, 'Zam Wesell', '168', '55', 'blonde', 'fair, green, yellow', 'yellow', 'unknown', 'female', 54);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (71, 'Dexter Jettster', '198', '102', 'none', 'brown', 'yellow', 'unknown', 'male', 55);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (72, 'Lama Su', '229', '88', 'none', 'grey', 'black', 'unknown', 'male', 10);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (73, 'Taun We', '213', 'unknown', 'none', 'grey', 'black', 'unknown', 'female', 10);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (74, 'Jocasta Nu', '167', 'unknown', 'white', 'fair', 'blue', 'unknown', 'female', 9);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (75, 'R4-P17', '96', 'unknown', 'none', 'silver, red', 'red, blue', 'unknown', 'female', 28);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (76, 'Wat Tambor', '193', '48', 'none', 'green, grey', 'unknown', 'unknown', 'male', 56);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (77, 'San Hill', '191', 'unknown', 'none', 'grey', 'gold', 'unknown', 'male', 57);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (78, 'Shaak Ti', '178', '57', 'none', 'red, blue, white', 'black', 'unknown', 'female', 58);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (79, 'Grievous', '216', '159', 'none', 'brown, white', 'green, yellow', 'unknown', 'male', 59);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (80, 'Tarfful', '234', '136', 'brown', 'brown', 'blue', 'unknown', 'male', 14);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (81, 'Raymus Antilles', '188', '79', 'brown', 'light', 'brown', 'unknown', 'male', 2);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (82, 'Sly Moore', '178', '48', 'none', 'pale', 'white', 'unknown', 'female', 60);

INSERT INTO "Characters" ("Id", "Name", "Height", "Weight", "HairColor", "SkinColor", "EyeColor", "BirthYear", "Gender",
                          "PlanetId")
VALUES (83, 'Tion Medon', '206', '80', 'none', 'grey', 'black', 'unknown', 'male', 12);


CREATE TABLE "Vehicles"
(
    "Id"            SERIAL PRIMARY KEY,
    "Name"          VARCHAR(255) NOT NULL,
    "Model"         VARCHAR(255),
    "Manufacturer"  VARCHAR(255),
    "CostInCredits" VARCHAR(50),
    "Length"        VARCHAR(50),
    "MaxSpeed"      VARCHAR(50),
    "Crew"          VARCHAR(50),
    "Passengers"    VARCHAR(50),
    "CargoCapacity" VARCHAR(50),
    "Consumables"   VARCHAR(50),
    "Class"         VARCHAR(50)
);

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (4, 'Sand Crawler', 'Digger Crawler', 'Corellia Mining Corporation', '150000', '36.8 ', '30', '46', '30', '50000', '2 months', 'wheeled');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (6, 'T-16 skyhopper', 'T-16 skyhopper', 'Incom Corporation', '14500', '10.4 ', '1200', '1', '1', '50', '0', 'repulsorcraft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (7, 'X-34 landspeeder', 'X-34 landspeeder', 'SoroSuub Corporation', '10550', '3.4 ', '250', '1', '1', '5', 'unknown', 'repulsorcraft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (8, 'TIE/LN starfighter', 'Twin Ion Engine/Ln Starfighter', 'Sienar Fleet Systems', 'unknown', '6.4', '1200', '1', '0', '65', '2 days', 'starfighter');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (14, 'Snowspeeder', 't-47 airspeeder', 'Incom corporation', 'unknown', '4.5', '650', '2', '0', '10', 'none', 'airspeeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (16, 'TIE bomber', 'TIE/sa bomber', 'Sienar Fleet Systems', 'unknown', '7.8', '850', '1', '0', 'none', '2 days', 'space/planetary bomber');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (18, 'AT-AT', 'All Terrain Armored Transport', 'Kuat Drive Yards, Imperial Department of Military Research', 'unknown', '20', '60', '5', '40', '1000', 'unknown', 'assault walker');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (19, 'AT-ST', 'All Terrain Scout Transport', 'Kuat Drive Yards, Imperial Department of Military Research', 'unknown', '2', '90', '2', '0', '200', 'none', 'walker');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (20, 'Storm IV Twin-Pod cloud car', 'Storm IV Twin-Pod', 'Bespin Motors', '75000', '7', '1500', '2', '0', '10', '1 day', 'repulsorcraft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (24, 'Sail barge', 'Modified Luxury Sail Barge', 'Ubrikkian Industries Custom Vehicle Division', '285000', '30', '100', '26', '500', '2000000', 'Live food tanks', 'sail barge');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (25, 'Bantha-II cargo skiff', 'Bantha-II', 'Ubrikkian Industries', '8000', '9.5', '250', '5', '16', '135000', '1 day', 'repulsorcraft cargo skiff');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (26, 'TIE/IN interceptor', 'Twin Ion Engine Interceptor', 'Sienar Fleet Systems', 'unknown', '9.6', '1250', '1', '0', '75', '2 days', 'starfighter');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (30, 'Imperial Speeder Bike', '74-Z speeder bike', 'Aratech Repulsor Company', '8000', '3', '360', '1', '1', '4', '1 day', 'speeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (33, 'Vulture Droid', 'Vulture-class droid starfighter', 'Haor Chall Engineering, Baktoid Armor Workshop', 'unknown', '3.5', '1200', '0', '0', '0', 'none', 'starfighter');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (34, 'Multi-Troop Transport', 'Multi-Troop Transport', 'Baktoid Armor Workshop', '138000', '31', '35', '4', '112', '12000', 'unknown', 'repulsorcraft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (35, 'Armored Assault Tank', 'Armoured Assault Tank', 'Baktoid Armor Workshop', 'unknown', '9.75', '55', '4', '6', 'unknown', 'unknown', 'repulsorcraft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (36, 'Single Trooper Aerial Platform', 'Single Trooper Aerial Platform', 'Baktoid Armor Workshop', '2500', '2', '400', '1', '0', 'none', 'none', 'repulsorcraft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (37, 'C-9979 landing craft', 'C-9979 landing craft', 'Haor Chall Engineering', '200000', '210', '587', '140', '284', '1800000', '1 day', 'landing craft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (38, 'Tribubble bongo', 'Tribubble bongo', 'Otoh Gunga Bongameken Cooperative', 'unknown', '15', '85', '1', '2', '1600', 'unknown', 'submarine');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (42, 'Sith speeder', 'FC-20 speeder bike', 'Razalon', '4000', '1.5', '180', '1', '0', '2', 'unknown', 'speeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (44, 'Zephyr-G swoop bike', 'Zephyr-G swoop bike', 'Mobquet Swoops and Speeders', '5750', '3.68', '350', '1', '1', '200', 'none', 'repulsorcraft');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (45, 'Koro-2 Exodrive airspeeder', 'Koro-2 Exodrive airspeeder', 'Desler Gizh Outworld Mobility Corporation', 'unknown', '6.6', '800', '1', '1', '80', 'unknown', 'airspeeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (46, 'XJ-6 airspeeder', 'XJ-6 airspeeder', 'Narglatch AirTech prefabricated kit', 'unknown', '6.23', '720', '1', '1', 'unknown', 'unknown', 'airspeeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (50, 'LAAT/i', 'Low Altitude Assault Transport/infrantry', 'Rothana Heavy Engineering', 'unknown', '17.4', '620', '6', '30', '170', 'unknown', 'gunship');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (51, 'LAAT/c', 'Low Altitude Assault Transport/carrier', 'Rothana Heavy Engineering', 'unknown', '28.82', '620', '1', '0', '40000', 'unknown', 'gunship');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (53, 'AT-TE', 'All Terrain Tactical Enforcer', 'Rothana Heavy Engineering, Kuat Drive Yards', 'unknown', '13.2', '60', '6', '36', '10000', '21 days', 'walker');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (54, 'SPHA', 'Self-Propelled Heavy Artillery', 'Rothana Heavy Engineering', 'unknown', '140', '35', '25', '30', '500', '7 days', 'walker');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (55, 'Flitknot speeder', 'Flitknot speeder', 'Huppla Pasa Tisc Shipwrights Collective', '8000', '2', '634', '1', '0', 'unknown', 'unknown', 'speeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (56, 'Neimoidian shuttle', 'Sheathipede-class transport shuttle', 'Haor Chall Engineering', 'unknown', '20', '880', '2', '6', '1000', '7 days', 'transport');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (57, 'Geonosian starfighter', 'Nantex-class territorial defense', 'Huppla Pasa Tisc Shipwrights Collective', 'unknown', '9.8', '20000', '1', '0', 'unknown', 'unknown', 'starfighter');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (60, 'Tsmeu-6 personal wheel bike', 'Tsmeu-6 personal wheel bike', 'Z-Gomot Ternbuell Guppat Corporation', '15000', '3.5', '330', '1', '1', '10', 'none', 'wheeled walker');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (62, 'Emergency Firespeeder', 'Fire suppression speeder', 'unknown', 'unknown', 'unknown', 'unknown', '2', 'unknown', 'unknown', 'unknown', 'fire suppression ship');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (67, 'Droid tri-fighter', 'tri-fighter', 'Colla Designs, Phlac-Arphocc Automata Industries', '20000', '5.4', '1180', '1', '0', '0', 'none', 'droid starfighter');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (69, 'Oevvaor jet catamaran', 'Oevvaor jet catamaran', 'Appazanna Engineering Works', '12125', '15.1', '420', '2', '2', '50', '3 days', 'airspeeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (70, 'Raddaugh Gnasp fluttercraft', 'Raddaugh Gnasp fluttercraft', 'Appazanna Engineering Works', '14750', '7', '310', '2', '0', '20', 'none', 'air speeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (71, 'Clone turbo tank', 'HAVw A6 Juggernaut', 'Kuat Drive Yards', '350000', '49.4', '160', '20', '300', '30000', '20 days', 'wheeled walker');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (72, 'Corporate Alliance tank droid', 'NR-N99 Persuader-class droid enforcer', 'Techno Union', '49000', '10.96', '100', '0', '4', 'none', 'none', 'droid tank');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (73, 'Droid gunship', 'HMP droid gunship', 'Baktoid Fleet Ordnance, Haor Chall Engineering', '60000', '12.3', '820', '0', '0', '0', 'none', 'airspeeder');

INSERT INTO "Vehicles" ("Id", "Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers", "CargoCapacity", "Consumables", "Class")
VALUES (76, 'AT-RT', 'All Terrain Recon Transport', 'Kuat Drive Yards', '40000', '3.2', '90', '1', '0', '20', '1 day', 'walker');


CREATE TABLE "Starships"
(
    "Id"               SERIAL PRIMARY KEY,
    "Name"             VARCHAR(255) NOT NULL,
    "Model"            VARCHAR(255),
    "Manufacturer"     VARCHAR(255),
    "CostInCredits"    VARCHAR(50),
    "Length"           VARCHAR(50),
    "MaxSpeed"         VARCHAR(50),
    "Crew"             VARCHAR(50),
    "Passengers"       VARCHAR(50),
    "CargoCapacity"    VARCHAR(50),
    "HyperdriveRating" VARCHAR(50),
    "Mglt"             VARCHAR(50),
    "Consumables"      VARCHAR(50),
    "Class"            VARCHAR(50)
);

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('CR90 corvette', 'CR90 corvette', 'Corellian Engineering Corporation', '3500000', '150', '950', '30-165', '600',
        '3000000', '2.0', '60', '1 year', 'corvette');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Star Destroyer', 'Imperial I-class Star Destroyer', 'Kuat Drive Yards', '150000000', '1,600', '975', '47,060',
        'n/a', '36000000', '2.0', '60', '2 years', 'Star Destroyer');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Sentinel-class landing craft', 'Sentinel-class landing craft', 'Sienar Fleet Systems, Cyngus Spaceworks',
        '240000', '38', '1000', '5', '75', '180000', '1.0', '70', '1 month', 'landing craft');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Death Star', 'DS-1 Orbital Battle Station', 'Imperial Department of Military Research, Sienar Fleet Systems',
        '1000000000000', '120000', 'n/a', '342,953', '843,342', '1000000000000', '4.0', '10', '3 years',
        'Deep Space Mobile Battlestation');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Millennium Falcon', 'YT-1300 light freighter', 'Corellian Engineering Corporation', '100000', '34.37', '1050',
        '4', '6', '100000', '0.5', '75', '2 months', 'Light freighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Y-wing', 'BTL Y-wing', 'Koensayr Manufacturing', '134999', '14', '1000km', '2', '0', '110', '1.0', '80',
        '1 week', 'assault starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('X-wing', 'T-65 X-wing', 'Incom Corporation', '149999', '12.5', '1050', '1', '0', '110', '1.0', '100', '1 week',
        'Starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('TIE Advanced x1', 'Twin Ion Engine Advanced x1', 'Sienar Fleet Systems', 'unknown', '9.2', '1200', '1', '0',
        '150', '1.0', '105', '5 days', 'Starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Executor', 'Executor-class star dreadnought', 'Kuat Drive Yards, Fondor Shipyards', '1143350000', '19000',
        'n/a', '279,144', '38000', '250000000', '2.0', '40', '6 years', 'Star dreadnought');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Rebel transport', 'GR-75 medium transport', 'Gallofree Yards, Inc.', 'unknown', '90', '650', '6', '90',
        '19000000', '4.0', '20', '6 months', 'Medium transport');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Slave 1', 'Firespray-31-class patrol and attack', 'Kuat Systems Engineering', 'unknown', '21.5', '1000', '1',
        '6', '70000', '3.0', '70', '1 month', 'Patrol craft');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Imperial shuttle', 'Lambda-class T-4a shuttle', 'Sienar Fleet Systems', '240000', '20', '850', '6', '20',
        '80000', '1.0', '50', '2 months', 'Armed government transport');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('EF76 Nebulon-B escort frigate', 'EF76 Nebulon-B escort frigate', 'Kuat Drive Yards', '8500000', '300', '800',
        '854', '75', '6000000', '2.0', '40', '2 years', 'Escort ship');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Calamari Cruiser', 'MC80 Liberty type Star Cruiser', 'Mon Calamari shipyards', '104000000', '1200', 'n/a',
        '5400', '1200', 'unknown', '1.0', '60', '2 years', 'Star Cruiser');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('A-wing', 'RZ-1 A-wing Interceptor', 'Alliance Underground Engineering, Incom Corporation', '175000', '9.6',
        '1300', '1', '0', '40', '1.0', '120', '1 week', 'Starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('B-wing', 'A/SF-01 B-wing starfighter', 'Slayn & Korpil', '220000', '16.9', '950', '1', '0', '45', '2.0', '91',
        '1 week', 'Assault Starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Republic Cruiser', 'Consular-class cruiser', 'Corellian Engineering Corporation', 'unknown', '115', '900', '9',
        '16', 'unknown', '2.0', 'unknown', 'unknown', 'Space cruiser');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Droid control ship', 'Lucrehulk-class Droid Control Ship', 'Hoersch-Kessel Drive, Inc.', 'unknown', '3170',
        'n/a', '175', '139000', '4000000000', '2.0', 'unknown', '500 days', 'Droid control ship');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Naboo fighter', 'N-1 starfighter', 'Theed Palace Space Vessel Engineering Corps', '200000', '11', '1100', '1',
        '0', '65', '1.0', 'unknown', '7 days', 'Starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Naboo Royal Starship', 'J-type 327 Nubian royal starship',
        'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', 'unknown', '76', '920', '8', 'unknown',
        'unknown', '1.8', 'unknown', 'unknown', 'yacht');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Scimitar', 'Star Courier', 'Republic Sienar Systems', '55000000', '26.5', '1180', '1', '6', '2500000', '1.5',
        'unknown', '30 days', 'Space Transport');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('J-type diplomatic barge', 'J-type diplomatic barge',
        'Theed Palace Space Vessel Engineering Corps, Nubia Star Drives', '2000000', '39', '2000', '5', '10', 'unknown',
        '0.7', 'unknown', '1 year', 'Diplomatic barge');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('AA-9 Coruscant freighter', 'Botajef AA-9 Freighter-Liner', 'Botajef Shipyards', 'unknown', '390', 'unknown',
        'unknown', '30000', 'unknown', 'unknown', 'unknown', 'unknown', 'freighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Jedi starfighter', 'Delta-7 Aethersprite-class interceptor', 'Kuat Systems Engineering', '180000', '8', '1150',
        '1', '0', '60', '1.0', 'unknown', '7 days', 'Starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('H-type Nubian yacht', 'H-type Nubian yacht', 'Theed Palace Space Vessel Engineering Corps', 'unknown', '47.9',
        '8000', '4', 'unknown', 'unknown', '0.9', 'unknown', 'unknown', 'yacht');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Republic Assault ship', 'Acclamator I-class assault ship', 'Rothana Heavy Engineering', 'unknown', '752',
        'unknown', '700', '16000', '11250000', '0.6', 'unknown', '2 years', 'assault ship');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Solar Sailer', 'Punworcca 116-class interstellar sloop', 'Huppla Pasa Tisc Shipwrights Collective', '35700',
        '15.2', '1600', '3', '11', '240', '1.5', 'unknown', '7 days', 'yacht');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Trade Federation cruiser', 'Providence-class carrier/destroyer',
        'Rendili StarDrive, Free Dac Volunteers Engineering corps.', '125000000', '1088', '1050', '600', '48247',
        '50000000', '1.5', 'unknown', '4 years', 'capital ship');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Theta-class T-2c shuttle', 'Theta-class T-2c shuttle', 'Cygnus Spaceworks', '1000000', '18.5', '2000', '5',
        '16', '50000', '1.0', 'unknown', '56 days', 'transport');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Republic attack cruiser', 'Senator-class Star Destroyer', 'Kuat Drive Yards, Allanteen Six shipyards',
        '59000000', '1137', '975', '7400', '2000', '20000000', '1.0', 'unknown', '2 years', 'star destroyer');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Naboo star skiff', 'J-type star skiff',
        'Theed Palace Space Vessel Engineering Corps/Nubia Star Drives, Incorporated', 'unknown', '29.2', '1050', '3',
        '3', 'unknown', '0.5', 'unknown', 'unknown', 'yacht');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Jedi Interceptor', 'Eta-2 Actis-class light interceptor', 'Kuat Systems Engineering', '320000', '5.47', '1500',
        '1', '0', '60', '1.0', 'unknown', '2 days', 'starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('arc-170', 'Aggressive Reconnaissance-170 starfighte', 'Incom Corporation, Subpro Corporation', '155000',
        '14.5', '1000', '3', '0', '110', '1.0', '100', '5 days', 'starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Banking clan frigte', 'Munificent-class star frigate',
        'Hoersch-Kessel Drive, Inc, Gwori Revolutionary Industries', '57000000', '825', 'unknown', '200', 'unknown',
        '40000000', '1.0', 'unknown', '2 years', 'cruiser');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('Belbullab-22 starfighter', 'Belbullab-22 starfighter', 'Feethan Ottraw Scalable Assemblies', '168000', '6.71',
        '1100', '1', '0', '140', '6', 'unknown', '7 days', 'starfighter');

INSERT INTO "Starships" ("Name", "Model", "Manufacturer", "CostInCredits", "Length", "MaxSpeed", "Crew", "Passengers",
                         "CargoCapacity", "HyperdriveRating", "Mglt", "Consumables", "Class")
VALUES ('V-wing', 'Alpha-3 Nimbus-class V-wing starfighter', 'Kuat Systems Engineering', '102500', '7.9', '1050', '1',
        '0', '60', '1.0', 'unknown', '15 hours', 'starfighter');

CREATE TABLE "CharacterMovie"
(
    "MoviesId"     SMALLINT REFERENCES "Movies" ("Id"),
    "CharactersId" SMALLINT REFERENCES "Characters" ("Id")
);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 1);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 2);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 3);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 4);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 5);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 6);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 7);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 8);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 9);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 10);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 12);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 13);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 14);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 15);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 16);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 18);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 19);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (1, 81);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 1);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 2);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 3);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 4);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 5);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 10);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 13);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 14);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 18);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 20);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 21);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 22);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 23);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 24);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 25);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (2, 26);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 1);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 2);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 3);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 4);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 5);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 10);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 13);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 14);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 16);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 18);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 20);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 21);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 22);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 25);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 27);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 28);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 29);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 30);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 31);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (3, 45);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 2);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 3);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 10);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 11);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 16);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 20);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 21);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 32);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 33);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 34);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 35);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 36);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 37);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 38);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 39);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 40);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 41);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 42);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 43);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 44);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 46);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 47);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 48);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 49);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 50);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 51);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 52);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 53);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 54);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 55);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 56);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 57);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 58);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (4, 59);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 2);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 3);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 6);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 7);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 10);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 11);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 20);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 21);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 22);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 33);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 35);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 36);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 40);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 43);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 46);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 51);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 52);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 53);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 58);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 59);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 60);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 61);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 62);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 63);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 64);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 65);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 66);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 67);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 68);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 69);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 70);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 71);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 72);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 73);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 74);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 75);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 76);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 77);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 78);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (5, 82);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 1);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 2);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 3);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 4);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 5);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 6);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 7);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 10);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 11);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 12);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 13);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 20);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 21);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 33);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 35);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 46);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 51);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 52);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 53);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 54);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 55);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 56);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 58);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 63);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 64);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 67);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 68);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 75);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 78);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 79);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 80);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 81);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 82);

INSERT INTO "CharacterMovie" ("MoviesId", "CharactersId")
VALUES (6, 83);

CREATE TABLE "MoviePlanet"
(
    "MoviesId"  SMALLINT REFERENCES "Movies" ("Id"),
    "PlanetsId" SMALLINT REFERENCES "Planets" ("Id")
);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (1, 1);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (1, 2);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (1, 3);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (2, 4);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (2, 5);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (2, 6);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (2, 27);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (3, 1);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (3, 5);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (3, 7);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (3, 8);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (3, 9);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (4, 1);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (4, 8);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (4, 9);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (5, 1);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (5, 8);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (5, 9);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (5, 10);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (5, 11);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 1);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 2);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 5);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 8);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 9);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 12);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 13);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 14);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 15);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 16);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 17);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 18);

INSERT INTO "MoviePlanet" ("MoviesId", "PlanetsId")
VALUES (6, 19);


CREATE TABLE "MovieVehicle"
(
    "MoviesId"   SMALLINT REFERENCES "Movies" ("Id"),
    "VehiclesId" SMALLINT REFERENCES "Vehicles" ("Id")
);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (1, 4);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (1, 6);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (1, 7);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (1, 8);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (2, 8);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (2, 14);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (2, 16);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (2, 18);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (2, 19);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (2, 20);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 8);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 16);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 18);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 19);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 24);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 25);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 26);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (3, 30);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (4, 33);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (4, 34);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (4, 35);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (4, 36);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (4, 37);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (4, 38);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (4, 42);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 4);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 44);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 45);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 46);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 50);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 51);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 53);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 54);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 55);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 56);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (5, 57);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 33);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 50);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 53);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 56);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 60);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 62);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 67);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 69);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 70);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 71);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 72);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 73);

INSERT INTO "MovieVehicle" ("MoviesId", "VehiclesId")
VALUES (6, 76);




