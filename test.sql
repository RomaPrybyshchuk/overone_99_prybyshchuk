CREATE TABLE toys (
  id INT(11) NOT NULL,
  toy_id INT(11) NOT NULL,
  name VARCHAR(40),
  status VARCHAR(100),
  status_updated CHAR(100)
);

CREATE TABLE games (
  id INT(11) NOT NULL,
  games_id INT(11) NOT NULL,
  name VARCHAR(40),
  date DATE
);

CREATE TABLE toys_games
    AS SELECT id.toys, games.games_id, toys.toy_id
    FROM  games, toys
ALTER TABLE toys_games
ADD note VARCHAR(100);                                # Task 1


CREATE TABLE toys_repair (
  id INT(11) NOT NULL,
  toy_id INT(11) NOT NULL
  issue_description CHAR(100),
  PRIMARY KEY (id)
);                                               # Task 2


SELECT
    toys.toy_id,
    toys.name,
    toys.status,
    toys.status_updated,
    games.name,
    games.date,
    games.note
FROM
    toys,
    games
WHERE
    toys.id = games.id                           # Task 4


SELECT status FROM toys
WHERE status_updated
BETWEEN SUBDATE(CURDATE(), INTERVAL -1 YEAR) AND CURDATE();      # Task 5