CREATE TABLE Movies (
  id VARCHAR(100) NOT NULL,
  title TEXT NOT NULL,
  released INT NOT NULL,
  tagline TEXT,

  PRIMARY KEY (id)
);

CREATE TABLE Persons (
  id VARCHAR(100) NOT NULL,
  name TEXT NOT NULL,
  born INT NOT NULL,

  PRIMARY KEY (id)
);

CREATE TABLE DirectorsMovies (
  person_id VARCHAR(100) NOT NULL,
  movie_id VARCHAR(100) NOT NULL,

  PRIMARY KEY (person_id, movie_id),
  FOREIGN KEY (person_id) REFERENCES Persons(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES Movies(id) ON DELETE CASCADE
);

CREATE TABLE ProducersMovies (
  person_id VARCHAR(100) NOT NULL,
  movie_id VARCHAR(100) NOT NULL,

  PRIMARY KEY (person_id, movie_id),
  FOREIGN KEY (person_id) REFERENCES Persons(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES Movies(id) ON DELETE CASCADE
);

CREATE TABLE ActorsMovies (
  person_id VARCHAR(100) NOT NULL,
  movie_id VARCHAR(100) NOT NULL,
  role VARCHAR(100) NOT NULL,

  PRIMARY KEY (person_id, movie_id, role),
  FOREIGN KEY (person_id) REFERENCES Persons(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES Movies(id) ON DELETE CASCADE
);

CREATE TABLE WritersMovies (
  person_id VARCHAR(100) NOT NULL,
  movie_id VARCHAR(100) NOT NULL,

  PRIMARY KEY (person_id, movie_id),
  FOREIGN KEY (person_id) REFERENCES Persons(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES Movies(id) ON DELETE CASCADE
);

CREATE TABLE ReviewersMovies (
  person_id VARCHAR(100) NOT NULL,
  movie_id VARCHAR(100) NOT NULL,
  summary TEXT NOT NULL,
  rating INT NOT NULL,

  PRIMARY KEY (person_id, movie_id),
  FOREIGN KEY (person_id) REFERENCES Persons(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES Movies(id) ON DELETE CASCADE
);

CREATE TABLE FollowersActors (
  person_id VARCHAR(100) NOT NULL,
  follower_id VARCHAR(100) NOT NULL,

  PRIMARY KEY (person_id, follower_id),
  FOREIGN KEY (person_id) REFERENCES Persons(id) ON DELETE CASCADE,
  FOREIGN KEY (follower_id) REFERENCES Persons(id) ON DELETE CASCADE
);

CREATE TABLE PositionsActorsMovies (
  person_id VARCHAR(100) NOT NULL,
  movie_id VARCHAR(100) NOT NULL,
  position VARCHAR(100) NOT NULL,
  roles TEXT,
  summary TEXT,
  rating INT,

  PRIMARY KEY (person_id, movie_id, position),
  FOREIGN KEY (person_id) REFERENCES Persons(id) ON DELETE CASCADE,
  FOREIGN KEY (movie_id) REFERENCES Movies(id) ON DELETE CASCADE
);


INSERT INTO Movies VALUES('TheMatrix', 'The Matrix', 1999, 'Welcome to the Real World');

INSERT INTO Persons VALUES('Keanu', 'Keanu Reeves', 1964);
INSERT INTO Persons VALUES('Carrie', 'Carrie-Anne Moss', 1967);
INSERT INTO Persons VALUES('Laurence', 'Laurence Fishburne', 1961);
INSERT INTO Persons VALUES('Hugo', 'Hugo Weaving', 1960);
INSERT INTO Persons VALUES('LillyW', 'Lilly Wachowski', 1967);
INSERT INTO Persons VALUES('LanaW', 'Lana Wachowski', 1965);
INSERT INTO Persons VALUES('JoelS', 'Joel Silver', 1952);
INSERT INTO Persons VALUES('Emil', 'Emil Eifrem', 1978);

INSERT INTO ActorsMovies VALUES('Keanu', 'TheMatrix', 'Neo');
INSERT INTO PositionsActorsMovies VALUES('Keanu', 'TheMatrix', ':ACTED_IN', 'Neo', null, null);
INSERT INTO ActorsMovies VALUES('Carrie', 'TheMatrix', 'Trinity');
INSERT INTO PositionsActorsMovies VALUES('Carrie', 'TheMatrix', ':ACTED_IN', 'Trinity', null, null);
INSERT INTO ActorsMovies VALUES('Laurence', 'TheMatrix', 'Morpheus');
INSERT INTO PositionsActorsMovies VALUES('Laurence', 'TheMatrix', ':ACTED_IN', 'Morpheus', null, null);
INSERT INTO ActorsMovies VALUES('Hugo', 'TheMatrix', 'Agent Smith');
INSERT INTO PositionsActorsMovies VALUES('Hugo', 'TheMatrix', ':ACTED_IN', 'Agent Smith', null, null);
INSERT INTO ActorsMovies VALUES('Emil', 'TheMatrix', 'Emil');
INSERT INTO PositionsActorsMovies VALUES('Emil', 'TheMatrix', ':ACTED_IN', 'Emil', null, null);

INSERT INTO DirectorsMovies VALUES('LillyW', 'TheMatrix');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'TheMatrix', ':DIRECTED', null, null, null);
INSERT INTO DirectorsMovies VALUES('LanaW', 'TheMatrix');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'TheMatrix', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('JoelS', 'TheMatrix');
INSERT INTO PositionsActorsMovies VALUES('JoelS', 'TheMatrix', ':PRODUCED', null, null, null);


INSERT INTO Movies VALUES('TheMatrixReloaded', 'The Matrix Reloaded', 2003, 'Free your mind');

INSERT INTO ActorsMovies VALUES('Keanu', 'TheMatrixReloaded', 'Neo');
INSERT INTO PositionsActorsMovies VALUES('Keanu', 'TheMatrixReloaded', ':ACTED_IN', 'Neo', null, null);
INSERT INTO ActorsMovies VALUES('Carrie', 'TheMatrixReloaded', 'Trinity');
INSERT INTO PositionsActorsMovies VALUES('Carrie', 'TheMatrixReloaded', ':ACTED_IN', 'Trinity', null, null);
INSERT INTO ActorsMovies VALUES('Laurence', 'TheMatrixReloaded', 'Morpheus');
INSERT INTO PositionsActorsMovies VALUES('Laurence', 'TheMatrixReloaded', ':ACTED_IN', 'Morpheus', null, null);
INSERT INTO ActorsMovies VALUES('Hugo', 'TheMatrixReloaded', 'Agent Smith');
INSERT INTO PositionsActorsMovies VALUES('Hugo', 'TheMatrixReloaded', ':ACTED_IN', 'Agent Smith', null, null);

INSERT INTO DirectorsMovies VALUES('LillyW', 'TheMatrixReloaded');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'TheMatrixReloaded', ':DIRECTED', null, null, null);
INSERT INTO DirectorsMovies VALUES('LanaW', 'TheMatrixReloaded');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'TheMatrixReloaded', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('JoelS', 'TheMatrixReloaded');
INSERT INTO PositionsActorsMovies VALUES('JoelS', 'TheMatrixReloaded', ':PRODUCED', null, null, null);


INSERT INTO Movies VALUES('TheMatrixRevolutions', 'The Matrix Revolutions', 2003, 'Everything that has a beginning has an end');

INSERT INTO ActorsMovies VALUES('Keanu', 'TheMatrixRevolutions', 'Neo');
INSERT INTO PositionsActorsMovies VALUES('Keanu', 'TheMatrixRevolutions', ':ACTED_IN', 'Neo', null, null);
INSERT INTO ActorsMovies VALUES('Carrie', 'TheMatrixRevolutions', 'Trinity');
INSERT INTO PositionsActorsMovies VALUES('Carrie', 'TheMatrixRevolutions', ':ACTED_IN', 'Trinity', null, null);
INSERT INTO ActorsMovies VALUES('Laurence', 'TheMatrixRevolutions', 'Morpheus');
INSERT INTO PositionsActorsMovies VALUES('Laurence', 'TheMatrixRevolutions', ':ACTED_IN', 'Morpheus', null, null);
INSERT INTO ActorsMovies VALUES('Hugo', 'TheMatrixRevolutions', 'Agent Smith');
INSERT INTO PositionsActorsMovies VALUES('Hugo', 'TheMatrixRevolutions', ':ACTED_IN', 'Agent Smith', null, null);

INSERT INTO DirectorsMovies VALUES('LillyW', 'TheMatrixRevolutions');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'TheMatrixRevolutions', ':DIRECTED', null, null, null);
INSERT INTO DirectorsMovies VALUES('LanaW', 'TheMatrixRevolutions');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'TheMatrixRevolutions', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('JoelS', 'TheMatrixRevolutions');
INSERT INTO PositionsActorsMovies VALUES('JoelS', 'TheMatrixRevolutions', ':PRODUCED', null, null, null);


INSERT INTO Movies VALUES('TheDevilsAdvocate', 'The Devil\'s Advocate', 1997, 'Evil has its winning ways');

INSERT INTO Persons VALUES('Charlize', 'Charlize Theron', 1975);
INSERT INTO Persons VALUES('Al', 'Al Pacino', 1940);
INSERT INTO Persons VALUES('Taylor', 'Taylor Hackford', 1944);

INSERT INTO ActorsMovies VALUES('Keanu', 'TheDevilsAdvocate', 'Kevin Lomax');
INSERT INTO PositionsActorsMovies VALUES('Keanu', 'TheDevilsAdvocate', ':ACTED_IN', 'Kevin Lomax', null, null);
INSERT INTO ActorsMovies VALUES('Charlize', 'TheDevilsAdvocate', 'Mary Ann Lomax');
INSERT INTO PositionsActorsMovies VALUES('Charlize', 'TheDevilsAdvocate', ':ACTED_IN', 'Mary Ann Lomax', null, null);
INSERT INTO ActorsMovies VALUES('Al', 'TheDevilsAdvocate', 'John Milton');
INSERT INTO PositionsActorsMovies VALUES('Al', 'TheDevilsAdvocate', ':ACTED_IN', 'John Milton', null, null);

INSERT INTO DirectorsMovies VALUES('Taylor', 'TheDevilsAdvocate');
INSERT INTO PositionsActorsMovies VALUES('Taylor', 'TheDevilsAdvocate', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('AFewGoodMen', 'A Few Good Men', 1992, 'In the heart of the nation\'s capital, in a courthouse of the U.S. government, one man will stop at nothing to keep his honor, and one will stop at nothing to find the truth.');

INSERT INTO Persons VALUES('TomC', 'Tom Cruise', 1962);
INSERT INTO Persons VALUES('JackN', 'Jack Nicholson', 1937);
INSERT INTO Persons VALUES('DemiM', 'Demi Moore', 1962);
INSERT INTO Persons VALUES('KevinB', 'Kevin Bacon', 1958);
INSERT INTO Persons VALUES('KieferS', 'Kiefer Sutherland', 1966);
INSERT INTO Persons VALUES('NoahW', 'Noah Wyle', 1971);
INSERT INTO Persons VALUES('CubaG', 'Cuba Gooding Jr.', 1968);
INSERT INTO Persons VALUES('KevinP', 'Kevin Pollak', 1957);
INSERT INTO Persons VALUES('JTW', 'J.T. Walsh', 1943);
INSERT INTO Persons VALUES('JamesM', 'James Marshall', 1967);
INSERT INTO Persons VALUES('ChristopherG', 'Christopher Guest', 1948);
INSERT INTO Persons VALUES('RobR', 'Rob Reiner', 1947);
INSERT INTO Persons VALUES('AaronS', 'Aaron Sorkin', 1961);

INSERT INTO ActorsMovies VALUES('TomC', 'AFewGoodMen', 'Lt. Daniel Kaffee');
INSERT INTO PositionsActorsMovies VALUES('TomC', 'AFewGoodMen', ':ACTED_IN', 'Lt. Daniel Kaffee', null, null);
INSERT INTO ActorsMovies VALUES('JackN', 'AFewGoodMen', 'Col. Nathan R. Jessup');
INSERT INTO PositionsActorsMovies VALUES('JackN', 'AFewGoodMen', ':ACTED_IN', 'Col. Nathan R. Jessup', null, null);
INSERT INTO ActorsMovies VALUES('DemiM', 'AFewGoodMen', 'Lt. Cdr. JoAnne Galloway');
INSERT INTO PositionsActorsMovies VALUES('DemiM', 'AFewGoodMen', ':ACTED_IN', 'Lt. Cdr. JoAnne Galloway', null, null);
INSERT INTO ActorsMovies VALUES('KevinB', 'AFewGoodMen', 'Capt. Jack Ross');
INSERT INTO PositionsActorsMovies VALUES('KevinB', 'AFewGoodMen', ':ACTED_IN', 'Capt. Jack Ross', null, null);
INSERT INTO ActorsMovies VALUES('KieferS', 'AFewGoodMen', 'Lt. Jonathan Kendrick');
INSERT INTO PositionsActorsMovies VALUES('KieferS', 'AFewGoodMen', ':ACTED_IN', 'Lt. Jonathan Kendrick', null, null);
INSERT INTO ActorsMovies VALUES('NoahW', 'AFewGoodMen', 'Cpl. Jeffrey Barnes');
INSERT INTO PositionsActorsMovies VALUES('NoahW', 'AFewGoodMen', ':ACTED_IN', 'Cpl. Jeffrey Barnes', null, null);
INSERT INTO ActorsMovies VALUES('CubaG', 'AFewGoodMen', 'Cpl. Carl Hammaker');
INSERT INTO PositionsActorsMovies VALUES('CubaG', 'AFewGoodMen', ':ACTED_IN', 'Cpl. Carl Hammaker', null, null);
INSERT INTO ActorsMovies VALUES('KevinP', 'AFewGoodMen', 'Lt. Sam Weinberg');
INSERT INTO PositionsActorsMovies VALUES('KevinP', 'AFewGoodMen', ':ACTED_IN', 'Lt. Sam Weinberg', null, null);
INSERT INTO ActorsMovies VALUES('JTW', 'AFewGoodMen', 'Lt. Col. Matthew Andrew Markinson');
INSERT INTO PositionsActorsMovies VALUES('JTW', 'AFewGoodMen', ':ACTED_IN', 'Lt. Col. Matthew Andrew Markinson', null, null);
INSERT INTO ActorsMovies VALUES('JamesM', 'AFewGoodMen', 'Pfc. Louden Downey');
INSERT INTO PositionsActorsMovies VALUES('JamesM', 'AFewGoodMen', ':ACTED_IN', 'Pfc. Louden Downey', null, null);
INSERT INTO ActorsMovies VALUES('ChristopherG', 'AFewGoodMen', 'Dr. Stone');
INSERT INTO PositionsActorsMovies VALUES('ChristopherG', 'AFewGoodMen', ':ACTED_IN', 'Dr. Stone', null, null);
INSERT INTO ActorsMovies VALUES('AaronS', 'AFewGoodMen', 'Man in Bar');
INSERT INTO PositionsActorsMovies VALUES('AaronS', 'AFewGoodMen', ':ACTED_IN', 'Man in Bar', null, null);

INSERT INTO DirectorsMovies VALUES('RobR', 'AFewGoodMen');
INSERT INTO PositionsActorsMovies VALUES('RobR', 'AFewGoodMen', ':DIRECTED', null, null, null);

INSERT INTO WritersMovies VALUES('AaronS', 'AFewGoodMen');
INSERT INTO PositionsActorsMovies VALUES('AaronS', 'AFewGoodMen', ':WROTE', null, null, null);


INSERT INTO Movies VALUES('TopGun', 'Top Gun', 1986, 'I feel the need, the need for speed.');

INSERT INTO Persons VALUES('KellyM', 'Kelly McGillis', 1957);
INSERT INTO Persons VALUES('ValK', 'Val Kilmer', 1959);
INSERT INTO Persons VALUES('AnthonyE', 'Anthony Edwards', 1962);
INSERT INTO Persons VALUES('TomS', 'Tom Skerritt', 1933);
INSERT INTO Persons VALUES('MegR', 'Meg Ryan', 1961);
INSERT INTO Persons VALUES('TonyS', 'Tony Scott', 1944);
INSERT INTO Persons VALUES('JimC', 'Jim Cash', 1941);

INSERT INTO ActorsMovies VALUES('TomC', 'TopGun', 'Maverick');
INSERT INTO PositionsActorsMovies VALUES('TomC', 'TopGun', ':ACTED_IN', 'Maverick', null, null);
INSERT INTO ActorsMovies VALUES('KellyM', 'TopGun', 'Charlie');
INSERT INTO PositionsActorsMovies VALUES('KellyM', 'TopGun', ':ACTED_IN', 'Charlie', null, null);
INSERT INTO ActorsMovies VALUES('ValK', 'TopGun', 'Iceman');
INSERT INTO PositionsActorsMovies VALUES('ValK', 'TopGun', ':ACTED_IN', 'Iceman', null, null);
INSERT INTO ActorsMovies VALUES('AnthonyE', 'TopGun', 'Goose');
INSERT INTO PositionsActorsMovies VALUES('AnthonyE', 'TopGun', ':ACTED_IN', 'Goose', null, null);
INSERT INTO ActorsMovies VALUES('TomS', 'TopGun', 'Viper');
INSERT INTO PositionsActorsMovies VALUES('TomS', 'TopGun', ':ACTED_IN', 'Viper', null, null);
INSERT INTO ActorsMovies VALUES('MegR', 'TopGun', 'Carole');
INSERT INTO PositionsActorsMovies VALUES('MegR', 'TopGun', ':ACTED_IN', 'Carole', null, null);

INSERT INTO DirectorsMovies VALUES('TonyS', 'TopGun');
INSERT INTO PositionsActorsMovies VALUES('TonyS', 'TopGun', ':DIRECTED', null, null, null);

INSERT INTO WritersMovies VALUES('JimC', 'TopGun');
INSERT INTO PositionsActorsMovies VALUES('JimC', 'TopGun', ':WROTE', null, null, null);


INSERT INTO Movies VALUES('JerryMaguire', 'Jerry Maguire', 2000, 'The rest of his life begins now.');

INSERT INTO Persons VALUES('ReneeZ', 'Renee Zellweger', 1969);
INSERT INTO Persons VALUES('KellyP', 'Kelly Preston', 1962);
INSERT INTO Persons VALUES('JerryO', 'Jerry O\'Connell', 1974);
INSERT INTO Persons VALUES('JayM', 'Jay Mohr', 1970);
INSERT INTO Persons VALUES('BonnieH', 'Bonnie Hunt', 1961);
INSERT INTO Persons VALUES('ReginaK', 'Regina King', 1971);
INSERT INTO Persons VALUES('JonathanL', 'Jonathan Lipnicki', 1996);
INSERT INTO Persons VALUES('CameronC', 'Cameron Crowe', 1957);

INSERT INTO ActorsMovies VALUES('TomC', 'JerryMaguire', 'Jerry Maguire');
INSERT INTO PositionsActorsMovies VALUES('TomC', 'JerryMaguire', ':ACTED_IN', 'Jerry Maguire', null, null);
INSERT INTO ActorsMovies VALUES('CubaG', 'JerryMaguire', 'Rod Tidwell');
INSERT INTO PositionsActorsMovies VALUES('CubaG', 'JerryMaguire', ':ACTED_IN', 'Rod Tidwell', null, null);
INSERT INTO ActorsMovies VALUES('ReneeZ', 'JerryMaguire', 'Dorothy Boyd');
INSERT INTO PositionsActorsMovies VALUES('ReneeZ', 'JerryMaguire', ':ACTED_IN', 'Dorothy Boyd', null, null);
INSERT INTO ActorsMovies VALUES('KellyP', 'JerryMaguire', 'Avery Bishop');
INSERT INTO PositionsActorsMovies VALUES('KellyP', 'JerryMaguire', ':ACTED_IN', 'Avery Bishop', null, null);
INSERT INTO ActorsMovies VALUES('JerryO', 'JerryMaguire', 'Frank Cushman');
INSERT INTO PositionsActorsMovies VALUES('JerryO', 'JerryMaguire', ':ACTED_IN', 'Frank Cushman', null, null);
INSERT INTO ActorsMovies VALUES('JayM', 'JerryMaguire', 'Bob Sugar');
INSERT INTO PositionsActorsMovies VALUES('JayM', 'JerryMaguire', ':ACTED_IN', 'Bob Sugar', null, null);
INSERT INTO ActorsMovies VALUES('BonnieH', 'JerryMaguire', 'Laurel Boyd');
INSERT INTO PositionsActorsMovies VALUES('BonnieH', 'JerryMaguire', ':ACTED_IN', 'Laurel Boyd', null, null);
INSERT INTO ActorsMovies VALUES('ReginaK', 'JerryMaguire', 'Marcee Tidwell');
INSERT INTO PositionsActorsMovies VALUES('ReginaK', 'JerryMaguire', ':ACTED_IN', 'Marcee Tidwell', null, null);
INSERT INTO ActorsMovies VALUES('JonathanL', 'JerryMaguire', 'Ray Boyd');
INSERT INTO PositionsActorsMovies VALUES('JonathanL', 'JerryMaguire', ':ACTED_IN', 'Ray Boyd', null, null);

INSERT INTO DirectorsMovies VALUES('CameronC', 'JerryMaguire');
INSERT INTO PositionsActorsMovies VALUES('CameronC', 'JerryMaguire', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('CameronC', 'JerryMaguire');
INSERT INTO PositionsActorsMovies VALUES('CameronC', 'JerryMaguire', ':PRODUCED', null, null, null);

INSERT INTO WritersMovies VALUES('CameronC', 'JerryMaguire');
INSERT INTO PositionsActorsMovies VALUES('CameronC', 'JerryMaguire', ':WROTE', null, null, null);


INSERT INTO Movies VALUES('StandByMe', 'Stand By Me', 1986, 'For some, it\'s the last real taste of innocence, and the first real taste of life. But for everyone, it\'s the time that memories are made of.');

INSERT INTO Persons VALUES('RiverP', 'River Phoenix', 1970);
INSERT INTO Persons VALUES('CoreyF', 'Corey Feldman', 1971);
INSERT INTO Persons VALUES('WilW', 'Wil Wheaton', 1972);
INSERT INTO Persons VALUES('JohnC', 'John Cusack', 1966);
INSERT INTO Persons VALUES('MarshallB', 'Marshall Bell', 1942);

INSERT INTO ActorsMovies VALUES('WilW', 'StandByMe', 'Gordie Lachance');
INSERT INTO PositionsActorsMovies VALUES('WilW', 'StandByMe', ':ACTED_IN', 'Gordie Lachance', null, null);
INSERT INTO ActorsMovies VALUES('RiverP', 'StandByMe', 'Chris Chambers');
INSERT INTO PositionsActorsMovies VALUES('RiverP', 'StandByMe', ':ACTED_IN', 'Chris Chambers', null, null);
INSERT INTO ActorsMovies VALUES('JerryO', 'StandByMe', 'Vern Tessio');
INSERT INTO PositionsActorsMovies VALUES('JerryO', 'StandByMe', ':ACTED_IN', 'Vern Tessio', null, null);
INSERT INTO ActorsMovies VALUES('CoreyF', 'StandByMe', 'Teddy Duchamp');
INSERT INTO PositionsActorsMovies VALUES('CoreyF', 'StandByMe', ':ACTED_IN', 'Teddy Duchamp', null, null);
INSERT INTO ActorsMovies VALUES('JohnC', 'StandByMe', 'Denny Lachance');
INSERT INTO PositionsActorsMovies VALUES('JohnC', 'StandByMe', ':ACTED_IN', 'Denny Lachance', null, null);
INSERT INTO ActorsMovies VALUES('KieferS', 'StandByMe', 'Ace Merrill');
INSERT INTO PositionsActorsMovies VALUES('KieferS', 'StandByMe', ':ACTED_IN', 'Ace Merrill', null, null);
INSERT INTO ActorsMovies VALUES('MarshallB', 'StandByMe', 'Mr. Lachance');
INSERT INTO PositionsActorsMovies VALUES('MarshallB', 'StandByMe', ':ACTED_IN', 'Mr. Lachance', null, null);

INSERT INTO DirectorsMovies VALUES('RobR', 'StandByMe');
INSERT INTO PositionsActorsMovies VALUES('RobR', 'StandByMe', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('AsGoodAsItGets', 'As Good as It Gets', 1997, 'A comedy from the heart that goes for the throat.');

INSERT INTO Persons VALUES('HelenH', 'Helen Hunt', 1963);
INSERT INTO Persons VALUES('GregK', 'Greg Kinnear', 1963);
INSERT INTO Persons VALUES('JamesB', 'James L. Brooks', 1940);

INSERT INTO ActorsMovies VALUES('JackN', 'AsGoodAsItGets', 'Melvin Udall');
INSERT INTO PositionsActorsMovies VALUES('JackN', 'AsGoodAsItGets', ':ACTED_IN', 'Melvin Udall', null, null);
INSERT INTO ActorsMovies VALUES('HelenH', 'AsGoodAsItGets', 'Carol Connelly');
INSERT INTO PositionsActorsMovies VALUES('HelenH', 'AsGoodAsItGets', ':ACTED_IN', 'Carol Connelly', null, null);
INSERT INTO ActorsMovies VALUES('GregK', 'AsGoodAsItGets', 'Simon Bishop');
INSERT INTO PositionsActorsMovies VALUES('GregK', 'AsGoodAsItGets', ':ACTED_IN', 'Simon Bishop', null, null);
INSERT INTO ActorsMovies VALUES('CubaG', 'AsGoodAsItGets', 'Frank Sachs');
INSERT INTO PositionsActorsMovies VALUES('CubaG', 'AsGoodAsItGets', ':ACTED_IN', 'Frank Sachs', null, null);

INSERT INTO DirectorsMovies VALUES('JamesB', 'AsGoodAsItGets');
INSERT INTO PositionsActorsMovies VALUES('JamesB', 'AsGoodAsItGets', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('WhatDreamsMayCome', 'What Dreams May Come', 1998, 'After life there is more. The end is just the beginning.');

INSERT INTO Persons VALUES('AnnabellaS', 'Annabella Sciorra', 1960);
INSERT INTO Persons VALUES('MaxS', 'Max von Sydow', 1929);
INSERT INTO Persons VALUES('WernerH', 'Werner Herzog', 1942);
INSERT INTO Persons VALUES('Robin', 'Robin Williams', 1951);
INSERT INTO Persons VALUES('VincentW', 'Vincent Ward', 1956);

INSERT INTO ActorsMovies VALUES('Robin', 'WhatDreamsMayCome', 'Chris Nielsen');
INSERT INTO PositionsActorsMovies VALUES('Robin', 'WhatDreamsMayCome', ':ACTED_IN', 'Chris Nielsen', null, null);
INSERT INTO ActorsMovies VALUES('CubaG', 'WhatDreamsMayCome', 'Albert Lewis');
INSERT INTO PositionsActorsMovies VALUES('CubaG', 'WhatDreamsMayCome', ':ACTED_IN', 'Albert Lewis', null, null);
INSERT INTO ActorsMovies VALUES('AnnabellaS', 'WhatDreamsMayCome', 'Annie Collins-Nielsen');
INSERT INTO PositionsActorsMovies VALUES('AnnabellaS', 'WhatDreamsMayCome', ':ACTED_IN', 'Annie Collins-Nielsen', null, null);
INSERT INTO ActorsMovies VALUES('MaxS', 'WhatDreamsMayCome', 'The Tracker');
INSERT INTO PositionsActorsMovies VALUES('MaxS', 'WhatDreamsMayCome', ':ACTED_IN', 'The Tracker', null, null);
INSERT INTO ActorsMovies VALUES('WernerH', 'WhatDreamsMayCome', 'The Face');
INSERT INTO PositionsActorsMovies VALUES('WernerH', 'WhatDreamsMayCome', ':ACTED_IN', 'The Face', null, null);

INSERT INTO DirectorsMovies VALUES('VincentW', 'WhatDreamsMayCome');
INSERT INTO PositionsActorsMovies VALUES('VincentW', 'WhatDreamsMayCome', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('SnowFallingonCedars', 'Snow Falling on Cedars', 1999, 'First loves last. Forever.');

INSERT INTO Persons VALUES('EthanH', 'Ethan Hawke', 1970);
INSERT INTO Persons VALUES('RickY', 'Rick Yune', 1971);
INSERT INTO Persons VALUES('JamesC', 'James Cromwell', 1940);
INSERT INTO Persons VALUES('ScottH', 'Scott Hicks', 1953);

INSERT INTO ActorsMovies VALUES('EthanH', 'SnowFallingonCedars', 'Ishmael Chambers');
INSERT INTO PositionsActorsMovies VALUES('EthanH', 'SnowFallingonCedars', ':ACTED_IN', 'Ishmael Chambers', null, null);
INSERT INTO ActorsMovies VALUES('RickY', 'SnowFallingonCedars', 'Kazuo Miyamoto');
INSERT INTO PositionsActorsMovies VALUES('RickY', 'SnowFallingonCedars', ':ACTED_IN', 'Kazuo Miyamoto', null, null);
INSERT INTO ActorsMovies VALUES('MaxS', 'SnowFallingonCedars', 'Nels Gudmundsson');
INSERT INTO PositionsActorsMovies VALUES('MaxS', 'SnowFallingonCedars', ':ACTED_IN', 'Nels Gudmundsson', null, null);
INSERT INTO ActorsMovies VALUES('JamesC', 'SnowFallingonCedars', 'Judge Fielding');
INSERT INTO PositionsActorsMovies VALUES('JamesC', 'SnowFallingonCedars', ':ACTED_IN', 'Judge Fielding', null, null);

INSERT INTO DirectorsMovies VALUES('ScottH', 'SnowFallingonCedars');
INSERT INTO PositionsActorsMovies VALUES('ScottH', 'SnowFallingonCedars', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('YouveGotMail', 'You\'ve Got Mail', 1998, 'At odds in life... in love on-line.');

INSERT INTO Persons VALUES('ParkerP', 'Parker Posey', 1968);
INSERT INTO Persons VALUES('DaveC', 'Dave Chappelle', 1973);
INSERT INTO Persons VALUES('SteveZ', 'Steve Zahn', 1967);
INSERT INTO Persons VALUES('TomH', 'Tom Hanks', 1956);
INSERT INTO Persons VALUES('NoraE', 'Nora Ephron', 1941);

INSERT INTO ActorsMovies VALUES('TomH', 'YouveGotMail', 'Joe Fox');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'YouveGotMail', ':ACTED_IN', 'Joe Fox', null, null);
INSERT INTO ActorsMovies VALUES('MegR', 'YouveGotMail', 'Kathleen Kelly');
INSERT INTO PositionsActorsMovies VALUES('MegR', 'YouveGotMail', ':ACTED_IN', 'Kathleen Kelly', null, null);
INSERT INTO ActorsMovies VALUES('GregK', 'YouveGotMail', 'Frank Navasky');
INSERT INTO PositionsActorsMovies VALUES('GregK', 'YouveGotMail', ':ACTED_IN', 'Frank Navasky', null, null);
INSERT INTO ActorsMovies VALUES('ParkerP', 'YouveGotMail', 'Patricia Eden');
INSERT INTO PositionsActorsMovies VALUES('ParkerP', 'YouveGotMail', ':ACTED_IN', 'Patricia Eden', null, null);
INSERT INTO ActorsMovies VALUES('DaveC', 'YouveGotMail', 'Kevin Jackson');
INSERT INTO PositionsActorsMovies VALUES('DaveC', 'YouveGotMail', ':ACTED_IN', 'Kevin Jackson', null, null);
INSERT INTO ActorsMovies VALUES('SteveZ', 'YouveGotMail', 'George Pappas');
INSERT INTO PositionsActorsMovies VALUES('SteveZ', 'YouveGotMail', ':ACTED_IN', 'George Pappas', null, null);

INSERT INTO DirectorsMovies VALUES('NoraE', 'YouveGotMail');
INSERT INTO PositionsActorsMovies VALUES('NoraE', 'YouveGotMail', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('SleeplessInSeattle', 'Sleepless in Seattle', 1993, 'What if someone you never met, someone you never saw, someone you never knew was the only someone for you?');

INSERT INTO Persons VALUES('RitaW', 'Rita Wilson', 1956);
INSERT INTO Persons VALUES('BillPull', 'Bill Pullman', 1953);
INSERT INTO Persons VALUES('VictorG', 'Victor Garber', 1949);
INSERT INTO Persons VALUES('RosieO', 'Rosie O\'Donnell', 1962);

INSERT INTO ActorsMovies VALUES('TomH', 'SleeplessInSeattle', 'Sam Baldwin');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'SleeplessInSeattle', ':ACTED_IN', 'Sam Baldwin', null, null);
INSERT INTO ActorsMovies VALUES('MegR', 'SleeplessInSeattle', 'Annie Reed');
INSERT INTO PositionsActorsMovies VALUES('MegR', 'SleeplessInSeattle', ':ACTED_IN', 'Annie Reed', null, null);
INSERT INTO ActorsMovies VALUES('RitaW', 'SleeplessInSeattle', 'Suzy');
INSERT INTO PositionsActorsMovies VALUES('RitaW', 'SleeplessInSeattle', ':ACTED_IN', 'Suzy', null, null);
INSERT INTO ActorsMovies VALUES('BillPull', 'SleeplessInSeattle', 'Walter');
INSERT INTO PositionsActorsMovies VALUES('BillPull', 'SleeplessInSeattle', ':ACTED_IN', 'Walter', null, null);
INSERT INTO ActorsMovies VALUES('VictorG', 'SleeplessInSeattle', 'Greg');
INSERT INTO PositionsActorsMovies VALUES('VictorG', 'SleeplessInSeattle', ':ACTED_IN', 'Greg', null, null);
INSERT INTO ActorsMovies VALUES('RosieO', 'SleeplessInSeattle', 'Becky');
INSERT INTO PositionsActorsMovies VALUES('RosieO', 'SleeplessInSeattle', ':ACTED_IN', 'Becky', null, null);

INSERT INTO DirectorsMovies VALUES('NoraE', 'SleeplessInSeattle');
INSERT INTO PositionsActorsMovies VALUES('NoraE', 'SleeplessInSeattle', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('JoeVersustheVolcano', 'Joe Versus the Volcano', 1990, 'A story of love, lava and burning desire.');

INSERT INTO Persons VALUES('JohnS', 'John Patrick Stanley', 1950);
INSERT INTO Persons VALUES('Nathan', 'Nathan Lane', 1956);

INSERT INTO ActorsMovies VALUES('TomH', 'JoeVersustheVolcano', 'Joe Banks');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'JoeVersustheVolcano', ':ACTED_IN', 'Joe Banks', null, null);
INSERT INTO ActorsMovies VALUES('MegR', 'JoeVersustheVolcano', 'DeDe');
INSERT INTO ActorsMovies VALUES('MegR', 'JoeVersustheVolcano', 'Angelica Graynamore');
INSERT INTO ActorsMovies VALUES('MegR', 'JoeVersustheVolcano', 'Patricia Graynamore');
INSERT INTO PositionsActorsMovies VALUES('MegR', 'JoeVersustheVolcano', ':ACTED_IN', 'DeDe,Angelica Graynamore,Patricia Graynamore', null, null);
INSERT INTO ActorsMovies VALUES('Nathan', 'JoeVersustheVolcano', 'Baw');
INSERT INTO PositionsActorsMovies VALUES('Nathan', 'JoeVersustheVolcano', ':ACTED_IN', 'Baw', null, null);

INSERT INTO DirectorsMovies VALUES('JohnS', 'JoeVersustheVolcano');
INSERT INTO PositionsActorsMovies VALUES('JohnS', 'JoeVersustheVolcano', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('WhenHarryMetSally', 'When Harry Met Sally', 1998, 'At odds in life... in love on-line.');

INSERT INTO Persons VALUES('BillyC', 'Billy Crystal', 1948);
INSERT INTO Persons VALUES('CarrieF', 'Carrie Fisher', 1956);
INSERT INTO Persons VALUES('BrunoK', 'Bruno Kirby', 1949);

INSERT INTO ActorsMovies VALUES('BillyC', 'WhenHarryMetSally', 'Harry Burns');
INSERT INTO PositionsActorsMovies VALUES('BillyC', 'WhenHarryMetSally', ':ACTED_IN', 'Harry Burns', null, null);
INSERT INTO ActorsMovies VALUES('MegR', 'WhenHarryMetSally', 'Sally Albright');
INSERT INTO PositionsActorsMovies VALUES('MegR', 'WhenHarryMetSally', ':ACTED_IN', 'Sally Albright', null, null);
INSERT INTO ActorsMovies VALUES('CarrieF', 'WhenHarryMetSally', 'Marie');
INSERT INTO PositionsActorsMovies VALUES('CarrieF', 'WhenHarryMetSally', ':ACTED_IN', 'Marie', null, null);
INSERT INTO ActorsMovies VALUES('BrunoK', 'WhenHarryMetSally', 'Jess');
INSERT INTO PositionsActorsMovies VALUES('BrunoK', 'WhenHarryMetSally', ':ACTED_IN', 'Jess', null, null);

INSERT INTO DirectorsMovies VALUES('RobR', 'WhenHarryMetSally');
INSERT INTO PositionsActorsMovies VALUES('RobR', 'WhenHarryMetSally', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('RobR', 'WhenHarryMetSally');
INSERT INTO PositionsActorsMovies VALUES('RobR', 'WhenHarryMetSally', ':PRODUCED', null, null, null);
INSERT INTO ProducersMovies VALUES('NoraE', 'WhenHarryMetSally');
INSERT INTO PositionsActorsMovies VALUES('NoraE', 'WhenHarryMetSally', ':PRODUCED', null, null, null);

INSERT INTO WritersMovies VALUES('NoraE', 'WhenHarryMetSally');
INSERT INTO PositionsActorsMovies VALUES('NoraE', 'WhenHarryMetSally', ':WROTE', null, null, null);


INSERT INTO Movies VALUES('ThatThingYouDo', 'That Thing You Do', 1996, 'In every life there comes a time when that thing you dream becomes that thing you do');

INSERT INTO Persons VALUES('LivT', 'Liv Tyler', 1977);

INSERT INTO ActorsMovies VALUES('TomH', 'ThatThingYouDo', 'Mr. White');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'ThatThingYouDo', ':ACTED_IN', 'Mr. White', null, null);
INSERT INTO ActorsMovies VALUES('LivT', 'ThatThingYouDo', 'Faye Dolan');
INSERT INTO PositionsActorsMovies VALUES('LivT', 'ThatThingYouDo', ':ACTED_IN', 'Faye Dolan', null, null);
INSERT INTO ActorsMovies VALUES('Charlize', 'ThatThingYouDo', 'Tina');
INSERT INTO PositionsActorsMovies VALUES('Charlize', 'ThatThingYouDo', ':ACTED_IN', 'Tina', null, null);

INSERT INTO DirectorsMovies VALUES('TomH', 'ThatThingYouDo');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'ThatThingYouDo', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('TheReplacements', 'The Replacements', 2000, 'Pain heals, Chicks dig scars... Glory lasts forever');

INSERT INTO Persons VALUES('Brooke', 'Brooke Langton', 1970);
INSERT INTO Persons VALUES('Gene', 'Gene Hackman', 1930);
INSERT INTO Persons VALUES('Orlando', 'Orlando Jones', 1968);
INSERT INTO Persons VALUES('Howard', 'Howard Deutch', 1950);

INSERT INTO ActorsMovies VALUES('Keanu', 'TheReplacements', 'Shane Falco');
INSERT INTO PositionsActorsMovies VALUES('Keanu', 'TheReplacements', ':ACTED_IN', 'Shane Falco', null, null);
INSERT INTO ActorsMovies VALUES('Brooke', 'TheReplacements', 'Annabelle Farrell');
INSERT INTO PositionsActorsMovies VALUES('Brooke', 'TheReplacements', ':ACTED_IN', 'Annabelle Farrell', null, null);
INSERT INTO ActorsMovies VALUES('Gene', 'TheReplacements', 'Jimmy McGinty');
INSERT INTO PositionsActorsMovies VALUES('Gene', 'TheReplacements', ':ACTED_IN', 'Jimmy McGinty', null, null);
INSERT INTO ActorsMovies VALUES('Orlando', 'TheReplacements', 'Clifford Franklin');
INSERT INTO PositionsActorsMovies VALUES('Orlando', 'TheReplacements', ':ACTED_IN', 'Clifford Franklin', null, null);

INSERT INTO DirectorsMovies VALUES('Howard', 'TheReplacements');
INSERT INTO PositionsActorsMovies VALUES('Howard', 'TheReplacements', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('RescueDawn', 'RescueDawn', 2006, 'Based on the extraordinary true story of one man\'s fight for freedom');

INSERT INTO Persons VALUES('ChristianB', 'Christian Bale', 1974);
INSERT INTO Persons VALUES('ZachG', 'Zach Grenier', 1954);

INSERT INTO ActorsMovies VALUES('MarshallB', 'RescueDawn', 'Admiral');
INSERT INTO PositionsActorsMovies VALUES('MarshallB', 'RescueDawn', ':ACTED_IN', 'Admiral', null, null);
INSERT INTO ActorsMovies VALUES('ChristianB', 'RescueDawn', 'Dieter Dengler');
INSERT INTO PositionsActorsMovies VALUES('ChristianB', 'RescueDawn', ':ACTED_IN', 'Dieter Dengler', null, null);
INSERT INTO ActorsMovies VALUES('ZachG', 'RescueDawn', 'Squad Leader');
INSERT INTO PositionsActorsMovies VALUES('ZachG', 'RescueDawn', ':ACTED_IN', 'Squad Leader', null, null);
INSERT INTO ActorsMovies VALUES('SteveZ', 'RescueDawn', 'Duane');
INSERT INTO PositionsActorsMovies VALUES('SteveZ', 'RescueDawn', ':ACTED_IN', 'Duane', null, null);

INSERT INTO DirectorsMovies VALUES('WernerH', 'RescueDawn');
INSERT INTO PositionsActorsMovies VALUES('WernerH', 'RescueDawn', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('TheBirdcage', 'The Birdcage', 1996, 'Come as you are');

INSERT INTO Persons VALUES('MikeN', 'Mike Nichols', 1931);

INSERT INTO ActorsMovies VALUES('Robin', 'TheBirdcage', 'Armand Goldman');
INSERT INTO PositionsActorsMovies VALUES('Robin', 'TheBirdcage', ':ACTED_IN', 'Armand Goldman', null, null);
INSERT INTO ActorsMovies VALUES('Nathan', 'TheBirdcage', 'Albert Goldman');
INSERT INTO PositionsActorsMovies VALUES('Nathan', 'TheBirdcage', ':ACTED_IN', 'Albert Goldman', null, null);
INSERT INTO ActorsMovies VALUES('Gene', 'TheBirdcage', 'Sen. Kevin Keeley');
INSERT INTO PositionsActorsMovies VALUES('Gene', 'TheBirdcage', ':ACTED_IN', 'Sen. Kevin Keeley', null, null);

INSERT INTO DirectorsMovies VALUES('MikeN', 'TheBirdcage');
INSERT INTO PositionsActorsMovies VALUES('MikeN', 'TheBirdcage', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('Unforgiven', 'Unforgiven', 1992, 'It\'s a hell of a thing, killing a man');

INSERT INTO Persons VALUES('RichardH', 'Richard Harris', 1930);
INSERT INTO Persons VALUES('ClintE', 'Clint Eastwood', 1930);

INSERT INTO ActorsMovies VALUES('RichardH', 'Unforgiven', 'English Bob');
INSERT INTO PositionsActorsMovies VALUES('RichardH', 'Unforgiven', ':ACTED_IN', 'English Bob', null, null);
INSERT INTO ActorsMovies VALUES('ClintE', 'Unforgiven', 'Bill Munny');
INSERT INTO PositionsActorsMovies VALUES('ClintE', 'Unforgiven', ':ACTED_IN', 'Bill Munny', null, null);
INSERT INTO ActorsMovies VALUES('Gene', 'Unforgiven', 'Little Bill Daggett');
INSERT INTO PositionsActorsMovies VALUES('Gene', 'Unforgiven', ':ACTED_IN', 'Little Bill Daggett', null, null);

INSERT INTO DirectorsMovies VALUES('ClintE', 'Unforgiven');
INSERT INTO PositionsActorsMovies VALUES('ClintE', 'Unforgiven', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('JohnnyMnemonic', 'Johnny Mnemonic', 1995, 'The hottest data on earth. In the coolest head in town');

INSERT INTO Persons VALUES('Takeshi', 'Takeshi Kitano', 1947);
INSERT INTO Persons VALUES('Dina', 'Dina Meyer', 1968);
INSERT INTO Persons VALUES('IceT', 'Ice-T', 1958);
INSERT INTO Persons VALUES('RobertL', 'Robert Longo', 1953);

INSERT INTO ActorsMovies VALUES('Keanu', 'JohnnyMnemonic', 'Johnny Mnemonic');
INSERT INTO PositionsActorsMovies VALUES('Keanu', 'JohnnyMnemonic', ':ACTED_IN', 'Johnny Mnemonic', null, null);
INSERT INTO ActorsMovies VALUES('Takeshi', 'JohnnyMnemonic', 'Takahashi');
INSERT INTO PositionsActorsMovies VALUES('Takeshi', 'JohnnyMnemonic', ':ACTED_IN', 'Takahashi', null, null);
INSERT INTO ActorsMovies VALUES('Dina', 'JohnnyMnemonic', 'Jane');
INSERT INTO PositionsActorsMovies VALUES('Dina', 'JohnnyMnemonic', ':ACTED_IN', 'Jane', null, null);
INSERT INTO ActorsMovies VALUES('IceT', 'JohnnyMnemonic', 'J-Bone');
INSERT INTO PositionsActorsMovies VALUES('IceT', 'JohnnyMnemonic', ':ACTED_IN', 'J-Bone', null, null);

INSERT INTO DirectorsMovies VALUES('RobertL', 'JohnnyMnemonic');
INSERT INTO PositionsActorsMovies VALUES('RobertL', 'JohnnyMnemonic', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('CloudAtlas', 'Cloud Atlas', 2012, 'Everything is connected');

INSERT INTO Persons VALUES('HalleB', 'Halle Berry', 1966);
INSERT INTO Persons VALUES('JimB', 'Jim Broadbent', 1949);
INSERT INTO Persons VALUES('TomT', 'Tom Tykwer', 1965);
INSERT INTO Persons VALUES('DavidMitchell', 'David Mitchell', 1969);
INSERT INTO Persons VALUES('StefanArndt', 'Stefan Arndt', 1961);

INSERT INTO ActorsMovies VALUES('TomH', 'CloudAtlas', 'Zachry');
INSERT INTO ActorsMovies VALUES('TomH', 'CloudAtlas', 'Dr. Henry Goose');
INSERT INTO ActorsMovies VALUES('TomH', 'CloudAtlas', 'Isaac Sachs');
INSERT INTO ActorsMovies VALUES('TomH', 'CloudAtlas', 'Dermot Hoggins');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'CloudAtlas', ':ACTED_IN', 'Zachry,Dr. Henry Goose,Isaac Sachs,Dermot Hoggins', null, null);
INSERT INTO ActorsMovies VALUES('Hugo', 'CloudAtlas', 'Bill Smoke');
INSERT INTO ActorsMovies VALUES('Hugo', 'CloudAtlas', 'Haskell Moore');
INSERT INTO ActorsMovies VALUES('Hugo', 'CloudAtlas', 'Tadeusz Kesselring');
INSERT INTO ActorsMovies VALUES('Hugo', 'CloudAtlas', 'Nurse Noakes');
INSERT INTO ActorsMovies VALUES('Hugo', 'CloudAtlas', 'Boardman Mephi');
INSERT INTO ActorsMovies VALUES('Hugo', 'CloudAtlas', 'Old Georgie');
INSERT INTO PositionsActorsMovies VALUES('Hugo', 'CloudAtlas', ':ACTED_IN', 'Bill Smoke,Haskell Moore,Tadeusz Kesselring,Nurse Noakes,Boardman Mephi,Old Georgie', null, null);
INSERT INTO ActorsMovies VALUES('HalleB', 'CloudAtlas', 'Luisa Rey');
INSERT INTO ActorsMovies VALUES('HalleB', 'CloudAtlas', 'Jocasta Ayrs');
INSERT INTO ActorsMovies VALUES('HalleB', 'CloudAtlas', 'Ovid');
INSERT INTO ActorsMovies VALUES('HalleB', 'CloudAtlas', 'Meronym');
INSERT INTO PositionsActorsMovies VALUES('HalleB', 'CloudAtlas', ':ACTED_IN', 'Luisa Rey,Jocasta Ayrs,Ovid,Meronym', null, null);
INSERT INTO ActorsMovies VALUES('JimB', 'CloudAtlas', 'Vyvyan Ayrs');
INSERT INTO ActorsMovies VALUES('JimB', 'CloudAtlas', 'Captain Molyneux');
INSERT INTO ActorsMovies VALUES('JimB', 'CloudAtlas', 'Timothy Cavendish');
INSERT INTO PositionsActorsMovies VALUES('JimB', 'CloudAtlas', ':ACTED_IN', 'Vyvyan Ayrs,Captain Molyneux,Timothy Cavendish', null, null);

INSERT INTO DirectorsMovies VALUES('TomT', 'CloudAtlas');
INSERT INTO PositionsActorsMovies VALUES('TomT', 'CloudAtlas', ':DIRECTED', null, null, null);
INSERT INTO DirectorsMovies VALUES('LillyW', 'CloudAtlas');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'CloudAtlas', ':DIRECTED', null, null, null);
INSERT INTO DirectorsMovies VALUES('LanaW', 'CloudAtlas');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'CloudAtlas', ':DIRECTED', null, null, null);

INSERT INTO WritersMovies VALUES('DavidMitchell', 'CloudAtlas');
INSERT INTO PositionsActorsMovies VALUES('DavidMitchell', 'CloudAtlas', ':WROTE', null, null, null);

INSERT INTO ProducersMovies VALUES('StefanArndt', 'CloudAtlas');
INSERT INTO PositionsActorsMovies VALUES('StefanArndt', 'CloudAtlas', ':PRODUCED', null, null, null);


INSERT INTO Movies VALUES('TheDaVinciCode', 'The Da Vinci Code', 2006, 'Break The Codes');

INSERT INTO Persons VALUES('IanM', 'Ian McKellen', 1939);
INSERT INTO Persons VALUES('AudreyT', 'Audrey Tautou', 1976);
INSERT INTO Persons VALUES('PaulB', 'Paul Bettany', 1971);
INSERT INTO Persons VALUES('RonH', 'Ron Howard', 1954);

INSERT INTO ActorsMovies VALUES('TomH', 'TheDaVinciCode', 'Dr. Robert Langdon');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'TheDaVinciCode', ':ACTED_IN', 'Dr. Robert Langdon', null, null);
INSERT INTO ActorsMovies VALUES('IanM', 'TheDaVinciCode', 'Sir Leight Teabing');
INSERT INTO PositionsActorsMovies VALUES('IanM', 'TheDaVinciCode', ':ACTED_IN', 'Sir Leight Teabing', null, null);
INSERT INTO ActorsMovies VALUES('AudreyT', 'TheDaVinciCode', 'Sophie Neveu');
INSERT INTO PositionsActorsMovies VALUES('AudreyT', 'TheDaVinciCode', ':ACTED_IN', 'Sophie Neveu', null, null);
INSERT INTO ActorsMovies VALUES('PaulB', 'TheDaVinciCode', 'Silas');
INSERT INTO PositionsActorsMovies VALUES('PaulB', 'TheDaVinciCode', ':ACTED_IN', 'Silas', null, null);

INSERT INTO DirectorsMovies VALUES('RonH', 'TheDaVinciCode');
INSERT INTO PositionsActorsMovies VALUES('RonH', 'TheDaVinciCode', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('VforVendetta', 'V for Vendetta', 2006, 'Freedom! Forever!');

INSERT INTO Persons VALUES('NatalieP', 'Natalie Portman', 1981);
INSERT INTO Persons VALUES('StephenR', 'Stephen Rea', 1946);
INSERT INTO Persons VALUES('JohnH', 'John Hurt', 1940);
INSERT INTO Persons VALUES('BenM', 'Ben Miles', 1967);

INSERT INTO ActorsMovies VALUES('Hugo', 'VforVendetta', 'V');
INSERT INTO PositionsActorsMovies VALUES('Hugo', 'VforVendetta', ':ACTED_IN', 'V', null, null);
INSERT INTO ActorsMovies VALUES('NatalieP', 'VforVendetta', 'Evey Hammond');
INSERT INTO PositionsActorsMovies VALUES('NatalieP', 'VforVendetta', ':ACTED_IN', 'Evey Hammond', null, null);
INSERT INTO ActorsMovies VALUES('StephenR', 'VforVendetta', 'Eric Finch');
INSERT INTO PositionsActorsMovies VALUES('StephenR', 'VforVendetta', ':ACTED_IN', 'Eric Finch', null, null);
INSERT INTO ActorsMovies VALUES('JohnH', 'VforVendetta', 'High Chancellor Adam Sutler');
INSERT INTO PositionsActorsMovies VALUES('JohnH', 'VforVendetta', ':ACTED_IN', 'High Chancellor Adam Sutler', null, null);
INSERT INTO ActorsMovies VALUES('BenM', 'VforVendetta', 'Dascomb');
INSERT INTO PositionsActorsMovies VALUES('BenM', 'VforVendetta', ':ACTED_IN', 'Dascomb', null, null);

INSERT INTO DirectorsMovies VALUES('JamesM', 'VforVendetta');
INSERT INTO PositionsActorsMovies VALUES('JamesM', 'VforVendetta', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('LillyW', 'VforVendetta');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'VforVendetta', ':PRODUCED', null, null, null);
INSERT INTO ProducersMovies VALUES('LanaW', 'VforVendetta');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'VforVendetta', ':PRODUCED', null, null, null);
INSERT INTO ProducersMovies VALUES('JoelS', 'VforVendetta');
INSERT INTO PositionsActorsMovies VALUES('JoelS', 'VforVendetta', ':PRODUCED', null, null, null);

INSERT INTO WritersMovies VALUES('LillyW', 'VforVendetta');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'VforVendetta', ':WROTE', null, null, null);
INSERT INTO WritersMovies VALUES('LanaW', 'VforVendetta');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'VforVendetta', ':WROTE', null, null, null);


INSERT INTO Movies VALUES('SpeedRacer', 'Speed Racer', 2008, 'Speed has no limits');

INSERT INTO Persons VALUES('EmileH', 'Emile Hirsch', 1985);
INSERT INTO Persons VALUES('JohnG', 'John Goodman', 1960);
INSERT INTO Persons VALUES('SusanS', 'Susan Sarandon', 1946);
INSERT INTO Persons VALUES('MatthewF', 'Matthew Fox', 1966);
INSERT INTO Persons VALUES('ChristinaR', 'Christina Ricci', 1980);
INSERT INTO Persons VALUES('Rain', 'Rain', 1982);

INSERT INTO ActorsMovies VALUES('EmileH', 'SpeedRacer', 'Speed Racer');
INSERT INTO PositionsActorsMovies VALUES('EmileH', 'SpeedRacer', ':ACTED_IN', 'Speed Racer', null, null);
INSERT INTO ActorsMovies VALUES('JohnG', 'SpeedRacer', 'Pops');
INSERT INTO PositionsActorsMovies VALUES('JohnG', 'SpeedRacer', ':ACTED_IN', 'Pops', null, null);
INSERT INTO ActorsMovies VALUES('SusanS', 'SpeedRacer', 'Mom');
INSERT INTO PositionsActorsMovies VALUES('SusanS', 'SpeedRacer', ':ACTED_IN', 'Mom', null, null);
INSERT INTO ActorsMovies VALUES('MatthewF', 'SpeedRacer', 'Racer X');
INSERT INTO PositionsActorsMovies VALUES('MatthewF', 'SpeedRacer', ':ACTED_IN', 'Racer X', null, null);
INSERT INTO ActorsMovies VALUES('ChristinaR', 'SpeedRacer', 'Trixie');
INSERT INTO PositionsActorsMovies VALUES('ChristinaR', 'SpeedRacer', ':ACTED_IN', 'Trixie', null, null);
INSERT INTO ActorsMovies VALUES('Rain', 'SpeedRacer', 'Taejo Togokahn');
INSERT INTO PositionsActorsMovies VALUES('Rain', 'SpeedRacer', ':ACTED_IN', 'Taejo Togokahn', null, null);
INSERT INTO ActorsMovies VALUES('BenM', 'SpeedRacer', 'Cass Jones');
INSERT INTO PositionsActorsMovies VALUES('BenM', 'SpeedRacer', ':ACTED_IN', 'Cass Jones', null, null);

INSERT INTO DirectorsMovies VALUES('LillyW', 'SpeedRacer');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'SpeedRacer', ':DIRECTED', null, null, null);
INSERT INTO DirectorsMovies VALUES('LanaW', 'SpeedRacer');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'SpeedRacer', ':DIRECTED', null, null, null);

INSERT INTO WritersMovies VALUES('LillyW', 'SpeedRacer');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'SpeedRacer', ':WROTE', null, null, null);
INSERT INTO WritersMovies VALUES('LanaW', 'SpeedRacer');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'SpeedRacer', ':WROTE', null, null, null);

INSERT INTO ProducersMovies VALUES('JoelS', 'SpeedRacer');
INSERT INTO PositionsActorsMovies VALUES('JoelS', 'SpeedRacer', ':PRODUCED', null, null, null);


INSERT INTO Movies VALUES('NinjaAssassin', 'Ninja Assassin', 2009, 'Prepare to enter a secret world of assassins');

INSERT INTO Persons VALUES('NaomieH', 'Naomie Harris', 0);

INSERT INTO ActorsMovies VALUES('Rain', 'NinjaAssassin', 'Raizo');
INSERT INTO PositionsActorsMovies VALUES('Rain', 'NinjaAssassin', ':ACTED_IN', 'Raizo', null, null);
INSERT INTO ActorsMovies VALUES('NaomieH', 'NinjaAssassin', 'Mika Coretti');
INSERT INTO PositionsActorsMovies VALUES('NaomieH', 'NinjaAssassin', ':ACTED_IN', 'Mika Coretti', null, null);
INSERT INTO ActorsMovies VALUES('RickY', 'NinjaAssassin', 'Takeshi');
INSERT INTO PositionsActorsMovies VALUES('RickY', 'NinjaAssassin', ':ACTED_IN', 'Takeshi', null, null);
INSERT INTO ActorsMovies VALUES('BenM', 'NinjaAssassin', 'Ryan Maslow');
INSERT INTO PositionsActorsMovies VALUES('BenM', 'NinjaAssassin', ':ACTED_IN', 'Ryan Maslow', null, null);

INSERT INTO DirectorsMovies VALUES('JamesM', 'NinjaAssassin');
INSERT INTO PositionsActorsMovies VALUES('JamesM', 'NinjaAssassin', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('LillyW', 'NinjaAssassin');
INSERT INTO PositionsActorsMovies VALUES('LillyW', 'NinjaAssassin', ':PRODUCED', null, null, null);
INSERT INTO ProducersMovies VALUES('LanaW', 'NinjaAssassin');
INSERT INTO PositionsActorsMovies VALUES('LanaW', 'NinjaAssassin', ':PRODUCED', null, null, null);
INSERT INTO ProducersMovies VALUES('JoelS', 'NinjaAssassin');
INSERT INTO PositionsActorsMovies VALUES('JoelS', 'NinjaAssassin', ':PRODUCED', null, null, null);


INSERT INTO Movies VALUES('TheGreenMile', 'The Green Mile', 1999, 'Walk a mile you\'ll never forget.');

INSERT INTO Persons VALUES('MichaelD', 'Michael Clarke Duncan', 1957);
INSERT INTO Persons VALUES('DavidM', 'David Morse', 1953);
INSERT INTO Persons VALUES('SamR', 'Sam Rockwell', 1968);
INSERT INTO Persons VALUES('GaryS', 'Gary Sinise', 1955);
INSERT INTO Persons VALUES('PatriciaC', 'Patricia Clarkson', 1959);
INSERT INTO Persons VALUES('FrankD', 'Frank Darabont', 1959);

INSERT INTO ActorsMovies VALUES('TomH', 'TheGreenMile', 'Paul Edgecomb');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'TheGreenMile', ':ACTED_IN', 'Paul Edgecomb', null, null);
INSERT INTO ActorsMovies VALUES('MichaelD', 'TheGreenMile', 'John Coffey');
INSERT INTO PositionsActorsMovies VALUES('MichaelD', 'TheGreenMile', ':ACTED_IN', 'John Coffey', null, null);
INSERT INTO ActorsMovies VALUES('DavidM', 'TheGreenMile', 'Brutus "Brutal" Howell');
INSERT INTO PositionsActorsMovies VALUES('DavidM', 'TheGreenMile', ':ACTED_IN', 'Brutus "Brutal" Howell', null, null);
INSERT INTO ActorsMovies VALUES('BonnieH', 'TheGreenMile', 'Jan Edgecomb');
INSERT INTO PositionsActorsMovies VALUES('BonnieH', 'TheGreenMile', ':ACTED_IN', 'Jan Edgecomb', null, null);
INSERT INTO ActorsMovies VALUES('JamesC', 'TheGreenMile', 'Warden Hal Moores');
INSERT INTO PositionsActorsMovies VALUES('JamesC', 'TheGreenMile', ':ACTED_IN', 'Warden Hal Moores', null, null);
INSERT INTO ActorsMovies VALUES('SamR', 'TheGreenMile', '"Wild Bill" Wharton');
INSERT INTO PositionsActorsMovies VALUES('SamR', 'TheGreenMile', ':ACTED_IN', '"Wild Bill" Wharton', null, null);
INSERT INTO ActorsMovies VALUES('GaryS', 'TheGreenMile', 'Burt Hammersmith');
INSERT INTO PositionsActorsMovies VALUES('GaryS', 'TheGreenMile', ':ACTED_IN', 'Burt Hammersmith', null, null);
INSERT INTO ActorsMovies VALUES('PatriciaC', 'TheGreenMile', 'Melinda Moores');
INSERT INTO PositionsActorsMovies VALUES('PatriciaC', 'TheGreenMile', ':ACTED_IN', 'Melinda Moores', null, null);

INSERT INTO DirectorsMovies VALUES('FrankD', 'TheGreenMile');
INSERT INTO PositionsActorsMovies VALUES('FrankD', 'TheGreenMile', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('FrostNixon', 'Frost/Nixon', 2008, '400 million people were waiting for the truth.');

INSERT INTO Persons VALUES('FrankL', 'Frank Langella', 1938);
INSERT INTO Persons VALUES('MichaelS', 'Michael Sheen', 1969);
INSERT INTO Persons VALUES('OliverP', 'Oliver Platt', 1960);

INSERT INTO ActorsMovies VALUES('FrankL', 'FrostNixon', 'Richard Nixon');
INSERT INTO PositionsActorsMovies VALUES('FrankL', 'FrostNixon', ':ACTED_IN', 'Richard Nixon', null, null);
INSERT INTO ActorsMovies VALUES('MichaelS', 'FrostNixon', 'David Frost');
INSERT INTO PositionsActorsMovies VALUES('MichaelS', 'FrostNixon', ':ACTED_IN', 'David Frost', null, null);
INSERT INTO ActorsMovies VALUES('KevinB', 'FrostNixon', 'Jack Brennan');
INSERT INTO PositionsActorsMovies VALUES('KevinB', 'FrostNixon', ':ACTED_IN', 'Jack Brennan', null, null);
INSERT INTO ActorsMovies VALUES('OliverP', 'FrostNixon', 'Bob Zelnick');
INSERT INTO PositionsActorsMovies VALUES('OliverP', 'FrostNixon', ':ACTED_IN', 'Bob Zelnick', null, null);
INSERT INTO ActorsMovies VALUES('SamR', 'FrostNixon', 'James Reston, Jr.');
INSERT INTO PositionsActorsMovies VALUES('SamR', 'FrostNixon', ':ACTED_IN', 'James Reston, Jr.', null, null);

INSERT INTO DirectorsMovies VALUES('RonH', 'FrostNixon');
INSERT INTO PositionsActorsMovies VALUES('RonH', 'FrostNixon', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('Hoffa', 'Hoffa', 1992, 'He didn\'t want law. He wanted justice.');

INSERT INTO Persons VALUES('DannyD', 'Danny DeVito', 1944);
INSERT INTO Persons VALUES('JohnR', 'John C. Reilly', 1965);

INSERT INTO ActorsMovies VALUES('JackN', 'Hoffa', 'Hoffa');
INSERT INTO PositionsActorsMovies VALUES('JackN', 'Hoffa', ':ACTED_IN', 'Hoffa', null, null);
INSERT INTO ActorsMovies VALUES('DannyD', 'Hoffa', 'Robert "Bobby" Ciaro');
INSERT INTO PositionsActorsMovies VALUES('DannyD', 'Hoffa', ':ACTED_IN', 'Robert "Bobby" Ciaro', null, null);
INSERT INTO ActorsMovies VALUES('JTW', 'Hoffa', 'Frank Fitzsimmons');
INSERT INTO PositionsActorsMovies VALUES('JTW', 'Hoffa', ':ACTED_IN', 'Frank Fitzsimmons', null, null);
INSERT INTO ActorsMovies VALUES('JohnR', 'Hoffa', 'Peter "Pete" Connelly');
INSERT INTO PositionsActorsMovies VALUES('JohnR', 'Hoffa', ':ACTED_IN', 'Peter "Pete" Connelly', null, null);

INSERT INTO DirectorsMovies VALUES('DannyD', 'Hoffa');
INSERT INTO PositionsActorsMovies VALUES('DannyD', 'Hoffa', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('Apollo13', 'Apollo 13', 1995, 'Houston, we have a problem.');

INSERT INTO Persons VALUES('EdH', 'Ed Harris', 1950);
INSERT INTO Persons VALUES('BillPax', 'Bill Paxton', 1955);

INSERT INTO ActorsMovies VALUES('TomH', 'Apollo13', 'Jim Lovell');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'Apollo13', ':ACTED_IN', 'Jim Lovell', null, null);
INSERT INTO ActorsMovies VALUES('KevinB', 'Apollo13', 'Jack Swigert');
INSERT INTO PositionsActorsMovies VALUES('KevinB', 'Apollo13', ':ACTED_IN', 'Jack Swigert', null, null);
INSERT INTO ActorsMovies VALUES('EdH', 'Apollo13', 'Gene Kranz');
INSERT INTO PositionsActorsMovies VALUES('EdH', 'Apollo13', ':ACTED_IN', 'Gene Kranz', null, null);
INSERT INTO ActorsMovies VALUES('BillPax', 'Apollo13', 'Fred Haise');
INSERT INTO PositionsActorsMovies VALUES('BillPax', 'Apollo13', ':ACTED_IN', 'Fred Haise', null, null);
INSERT INTO ActorsMovies VALUES('GaryS', 'Apollo13', 'Ken Mattingly');
INSERT INTO PositionsActorsMovies VALUES('GaryS', 'Apollo13', ':ACTED_IN', 'Ken Mattingly', null, null);

INSERT INTO DirectorsMovies VALUES('RonH', 'Apollo13');
INSERT INTO PositionsActorsMovies VALUES('RonH', 'Apollo13', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('Twister', 'Twister', 1996, 'Don\'t Breathe. Don\'t Look Back.');

INSERT INTO Persons VALUES('PhilipH', 'Philip Seymour Hoffman', 1967);
INSERT INTO Persons VALUES('JanB', 'Jan de Bont', 1943);

INSERT INTO ActorsMovies VALUES('BillPax', 'Twister', 'Bill Harding');
INSERT INTO PositionsActorsMovies VALUES('BillPax', 'Twister', ':ACTED_IN', 'Bill Harding', null, null);
INSERT INTO ActorsMovies VALUES('HelenH', 'Twister', 'Dr. Jo Harding');
INSERT INTO PositionsActorsMovies VALUES('HelenH', 'Twister', ':ACTED_IN', 'Dr. Jo Harding', null, null);
INSERT INTO ActorsMovies VALUES('ZachG', 'Twister', 'Eddie');
INSERT INTO PositionsActorsMovies VALUES('ZachG', 'Twister', ':ACTED_IN', 'Eddie', null, null);
INSERT INTO ActorsMovies VALUES('PhilipH', 'Twister', 'Dustin "Dusty" Davis');
INSERT INTO PositionsActorsMovies VALUES('PhilipH', 'Twister', ':ACTED_IN', 'Dustin "Dusty" Davis', null, null);

INSERT INTO DirectorsMovies VALUES('JanB', 'Twister');
INSERT INTO PositionsActorsMovies VALUES('JanB', 'Twister', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('CastAway', 'Cast Away', 2000, 'At the edge of the world, his journey begins.');

INSERT INTO Persons VALUES('RobertZ', 'Robert Zemeckis', 1951);

INSERT INTO ActorsMovies VALUES('TomH', 'CastAway', 'Chuck Noland');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'CastAway', ':ACTED_IN', 'Chuck Noland', null, null);
INSERT INTO ActorsMovies VALUES('HelenH', 'CastAway', 'Kelly Frears');
INSERT INTO PositionsActorsMovies VALUES('HelenH', 'CastAway', ':ACTED_IN', 'Kelly Frears', null, null);

INSERT INTO DirectorsMovies VALUES('RobertZ', 'CastAway');
INSERT INTO PositionsActorsMovies VALUES('RobertZ', 'CastAway', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('OneFlewOvertheCuckoosNest', 'One Flew Over the Cuckoo\'s Nest', 1975, 'If he\'s crazy, what does that make you?');

INSERT INTO Persons VALUES('MilosF', 'Milos Forman', 1932);

INSERT INTO ActorsMovies VALUES('JackN', 'OneFlewOvertheCuckoosNest', 'Randle McMurphy');
INSERT INTO PositionsActorsMovies VALUES('JackN', 'OneFlewOvertheCuckoosNest', ':ACTED_IN', 'Randle McMurphy', null, null);
INSERT INTO ActorsMovies VALUES('DannyD', 'OneFlewOvertheCuckoosNest', 'Martini');
INSERT INTO PositionsActorsMovies VALUES('DannyD', 'OneFlewOvertheCuckoosNest', ':ACTED_IN', 'Martini', null, null);

INSERT INTO DirectorsMovies VALUES('MilosF', 'OneFlewOvertheCuckoosNest');
INSERT INTO PositionsActorsMovies VALUES('MilosF', 'OneFlewOvertheCuckoosNest', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('SomethingsGottaGive', 'Something\'s Gotta Give', 2003, null);

INSERT INTO Persons VALUES('DianeK', 'Diane Keaton', 1946);
INSERT INTO Persons VALUES('NancyM', 'Nancy Meyers', 1949);

INSERT INTO ActorsMovies VALUES('JackN', 'SomethingsGottaGive', 'Harry Sanborn');
INSERT INTO PositionsActorsMovies VALUES('JackN', 'SomethingsGottaGive', ':ACTED_IN', 'Harry Sanborn', null, null);
INSERT INTO ActorsMovies VALUES('DianeK', 'SomethingsGottaGive', 'Erica Barry');
INSERT INTO PositionsActorsMovies VALUES('DianeK', 'SomethingsGottaGive', ':ACTED_IN', 'Erica Barry', null, null);
INSERT INTO ActorsMovies VALUES('Keanu', 'SomethingsGottaGive', 'Julian Mercer');
INSERT INTO PositionsActorsMovies VALUES('Keanu', 'SomethingsGottaGive', ':ACTED_IN', 'Julian Mercer', null, null);

INSERT INTO DirectorsMovies VALUES('NancyM', 'SomethingsGottaGive');
INSERT INTO PositionsActorsMovies VALUES('NancyM', 'SomethingsGottaGive', ':DIRECTED', null, null, null);

INSERT INTO ProducersMovies VALUES('NancyM', 'SomethingsGottaGive');
INSERT INTO PositionsActorsMovies VALUES('NancyM', 'SomethingsGottaGive', ':PRODUCED', null, null, null);

INSERT INTO WritersMovies VALUES('NancyM', 'SomethingsGottaGive');
INSERT INTO PositionsActorsMovies VALUES('NancyM', 'SomethingsGottaGive', ':WROTE', null, null, null);


INSERT INTO Movies VALUES('BicentennialMan', 'Bicentennial Man', 1999, 'One robot\'s 200 year journey to become an ordinary man.');

INSERT INTO Persons VALUES('ChrisC', 'Chris Columbus', 1958);

INSERT INTO ActorsMovies VALUES('Robin', 'BicentennialMan', 'Andrew Marin');
INSERT INTO PositionsActorsMovies VALUES('Robin', 'BicentennialMan', ':ACTED_IN', 'Andrew Marin', null, null);
INSERT INTO ActorsMovies VALUES('OliverP', 'BicentennialMan', 'Rupert Burns');
INSERT INTO PositionsActorsMovies VALUES('OliverP', 'BicentennialMan', ':ACTED_IN', 'Rupert Burns', null, null);

INSERT INTO DirectorsMovies VALUES('ChrisC', 'BicentennialMan');
INSERT INTO PositionsActorsMovies VALUES('ChrisC', 'BicentennialMan', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('CharlieWilsonsWar', 'Charlie Wilson\'s War', 2007, 'A stiff drink. A little mascara. A lot of nerve. Who said they couldn\'t bring down the Soviet empire.');

INSERT INTO Persons VALUES('JuliaR', 'Julia Roberts', 1967);

INSERT INTO ActorsMovies VALUES('TomH', 'CharlieWilsonsWar', 'Rep. Charlie Wilson');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'CharlieWilsonsWar', ':ACTED_IN', 'Rep. Charlie Wilson', null, null);
INSERT INTO ActorsMovies VALUES('JuliaR', 'CharlieWilsonsWar', 'Joanne Herring');
INSERT INTO PositionsActorsMovies VALUES('JuliaR', 'CharlieWilsonsWar', ':ACTED_IN', 'Joanne Herring', null, null);
INSERT INTO ActorsMovies VALUES('PhilipH', 'CharlieWilsonsWar', 'Gust Avrakotos');
INSERT INTO PositionsActorsMovies VALUES('PhilipH', 'CharlieWilsonsWar', ':ACTED_IN', 'Gust Avrakotos', null, null);

INSERT INTO DirectorsMovies VALUES('MikeN', 'CharlieWilsonsWar');
INSERT INTO PositionsActorsMovies VALUES('MikeN', 'CharlieWilsonsWar', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('ThePolarExpress', 'The Polar Express', 2004, 'This Holiday Season… Believe');

INSERT INTO ActorsMovies VALUES('TomH', 'ThePolarExpress', 'Hero Boy');
INSERT INTO ActorsMovies VALUES('TomH', 'ThePolarExpress', 'Father');
INSERT INTO ActorsMovies VALUES('TomH', 'ThePolarExpress', 'Conductor');
INSERT INTO ActorsMovies VALUES('TomH', 'ThePolarExpress', 'Hobo');
INSERT INTO ActorsMovies VALUES('TomH', 'ThePolarExpress', 'Scrooge');
INSERT INTO ActorsMovies VALUES('TomH', 'ThePolarExpress', 'Santa Claus');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'ThePolarExpress', ':ACTED_IN', 'Hero Boy,Father,Conductor,Hobo,Scrooge,Santa Claus', null, null);

INSERT INTO DirectorsMovies VALUES('RobertZ', 'ThePolarExpress');
INSERT INTO PositionsActorsMovies VALUES('RobertZ', 'ThePolarExpress', ':DIRECTED', null, null, null);


INSERT INTO Movies VALUES('ALeagueofTheirOwn', 'A League of Their Own', 1992, 'Once in a lifetime you get a chance to do something different.');

INSERT INTO Persons VALUES('Madonna', 'Madonna', 1954);
INSERT INTO Persons VALUES('GeenaD', 'Geena Davis', 1956);
INSERT INTO Persons VALUES('LoriP', 'Lori Petty', 1963);
INSERT INTO Persons VALUES('PennyM', 'Penny Marshall', 1943);

INSERT INTO ActorsMovies VALUES('TomH', 'ALeagueofTheirOwn', 'Jimmy Dugan');
INSERT INTO PositionsActorsMovies VALUES('TomH', 'ALeagueofTheirOwn', ':ACTED_IN', 'Jimmy Dugan', null, null);
INSERT INTO ActorsMovies VALUES('GeenaD', 'ALeagueofTheirOwn', 'Dottie Hinson');
INSERT INTO PositionsActorsMovies VALUES('GeenaD', 'ALeagueofTheirOwn', ':ACTED_IN', 'Dottie Hinson', null, null);
INSERT INTO ActorsMovies VALUES('LoriP', 'ALeagueofTheirOwn', 'Kit Keller');
INSERT INTO PositionsActorsMovies VALUES('LoriP', 'ALeagueofTheirOwn', ':ACTED_IN', 'Kit Keller', null, null);
INSERT INTO ActorsMovies VALUES('RosieO', 'ALeagueofTheirOwn', 'Doris Murphy');
INSERT INTO PositionsActorsMovies VALUES('RosieO', 'ALeagueofTheirOwn', ':ACTED_IN', 'Doris Murphy', null, null);
INSERT INTO ActorsMovies VALUES('Madonna', 'ALeagueofTheirOwn', '"All the Way" Mae Mordabito');
INSERT INTO PositionsActorsMovies VALUES('Madonna', 'ALeagueofTheirOwn', ':ACTED_IN', '"All the Way" Mae Mordabito', null, null);
INSERT INTO ActorsMovies VALUES('BillPax', 'ALeagueofTheirOwn', 'Bob Hinson');
INSERT INTO PositionsActorsMovies VALUES('BillPax', 'ALeagueofTheirOwn', ':ACTED_IN', 'Bob Hinson', null, null);

INSERT INTO DirectorsMovies VALUES('PennyM', 'ALeagueofTheirOwn');
INSERT INTO PositionsActorsMovies VALUES('PennyM', 'ALeagueofTheirOwn', ':DIRECTED', null, null, null);


INSERT INTO Persons VALUES('PaulBlythe', 'Paul Blythe', 0);
INSERT INTO Persons VALUES('AngelaScope', 'Angela Scope', 0);
INSERT INTO Persons VALUES('JessicaThompson', 'Jessica Thompson', 0);
INSERT INTO Persons VALUES('JamesThompson', 'James Thompson', 0);


INSERT INTO FollowersActors VALUES('JamesThompson', 'JessicaThompson');
INSERT INTO FollowersActors VALUES('AngelaScope', 'JessicaThompson');
INSERT INTO FollowersActors VALUES('PaulBlythe', 'AngelaScope');


INSERT INTO ReviewersMovies VALUES('JessicaThompson', 'CloudAtlas', 'An amazing journey', 95);
INSERT INTO PositionsActorsMovies VALUES('JessicaThompson', 'CloudAtlas', ':REVIEWED', null, 'An amazing journey', 95);
INSERT INTO ReviewersMovies VALUES('JessicaThompson', 'TheReplacements', 'Silly, but fun', 65);
INSERT INTO PositionsActorsMovies VALUES('JessicaThompson', 'TheReplacements', ':REVIEWED', null, 'Silly, but fun', 65);
INSERT INTO ReviewersMovies VALUES('JamesThompson', 'TheReplacements', 'The coolest football movie ever', 100);
INSERT INTO PositionsActorsMovies VALUES('JamesThompson', 'TheReplacements', ':REVIEWED', null, 'The coolest football movie ever', 100);
INSERT INTO ReviewersMovies VALUES('AngelaScope', 'TheReplacements', 'Pretty funny at times', 62);
INSERT INTO PositionsActorsMovies VALUES('AngelaScope', 'TheReplacements', ':REVIEWED', null, 'Pretty funny at times', 62);
INSERT INTO ReviewersMovies VALUES('JessicaThompson', 'Unforgiven', 'Dark, but compelling', 85);
INSERT INTO PositionsActorsMovies VALUES('JessicaThompson', 'Unforgiven', ':REVIEWED', null, 'Dark, but compelling', 85);
INSERT INTO ReviewersMovies VALUES('JessicaThompson', 'TheBirdcage', 'Slapstick redeemed only by the Robin Williams and Gene Hackman\'s stellar performances', 45);
INSERT INTO PositionsActorsMovies VALUES('JessicaThompson', 'TheBirdcage', ':REVIEWED', null, 'Slapstick redeemed only by the Robin Williams and Gene Hackman\'s stellar performances', 45);
INSERT INTO ReviewersMovies VALUES('JessicaThompson', 'TheDaVinciCode', 'A solid romp', 68);
INSERT INTO PositionsActorsMovies VALUES('JessicaThompson', 'TheDaVinciCode', ':REVIEWED', null, 'A solid romp', 68);
INSERT INTO ReviewersMovies VALUES('JamesThompson', 'TheDaVinciCode', 'Fun, but a little far fetched', 65);
INSERT INTO PositionsActorsMovies VALUES('JamesThompson', 'TheDaVinciCode', ':REVIEWED', null, 'Fun, but a little far fetched', 65);
INSERT INTO ReviewersMovies VALUES('JessicaThompson', 'JerryMaguire', 'You had me at Jerry', 92);
INSERT INTO PositionsActorsMovies VALUES('JessicaThompson', 'JerryMaguire', ':REVIEWED', null, 'You had me at Jerry', 92);
