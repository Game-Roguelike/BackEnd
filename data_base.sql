-- SQLINES DEMO *** iaDB 10.1.48-MariaDB-0+deb9u2 dump

/* SET NAMES utf8; */
-- time_zone := '+00:00';
/* SET foreign_key_checks = 0; */
/* SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO'; */

DROP TABLE IF EXISTS Background;
-- SQLINES FOR EVALUATION USE ONLY (14 DAYS)
CREATE TABLE Background (
  Background_id int NOT NULL,
  Image varchar(255) NOT NULL,
  Gradient varchar(100) NOT NULL,
  Background varchar(255) NOT NULL,
  Room varchar(255) NOT NULL
) ;


DROP TABLE IF EXISTS Effect;
CREATE TABLE Effect (
  Effect_id int NOT NULL,
  Name varchar(100) NOT NULL,
  Type varchar(50) NOT NULL,
  HP int DEFAULT NULL,
  Power int DEFAULT NULL,
  Stamina int NOT NULL,
  PRIMARY KEY (Effect_id)
) ;


DROP TABLE IF EXISTS Enemy;
CREATE TABLE Enemy (
  Enemy_id int NOT NULL,
  Name varchar(100) NOT NULL,
  Sprite varchar(255) NOT NULL,
  HP int NOT NULL,
  Power int NOT NULL,
  XP int NOT NULL,
  Award int NOT NULL,
  Type varchar(50) NOT NULL,
  PRIMARY KEY (Enemy_id)
) ;


DROP TABLE IF EXISTS Equipment;
CREATE TABLE Equipment (
  Equipment_id int NOT NULL,
  Name varchar(100) NOT NULL,
  Sprite varchar(255) NOT NULL,
  type varchar(50) NOT NULL,
  Effect_id int NOT NULL,
  Price int NOT NULL,
  PRIMARY KEY (Equipment_id)
,
  CONSTRAINT Equipment_ibfk_1 FOREIGN KEY (Effect_id) REFERENCES Effect (Effect_id)
) ;

CREATE INDEX Effect_id ON Equipment (Effect_id);


DROP TABLE IF EXISTS Expoint;
CREATE TABLE Expoint (
  UniqueID int NOT NULL,
  Level int NOT NULL,
  Min_XP int NOT NULL,
  Max_XP int NOT NULL,
  PRIMARY KEY (UniqueID)
) ;


DROP TABLE IF EXISTS Item_Usable;
CREATE TABLE Item_Usable (
  Item_id int NOT NULL,
  Name varchar(100) NOT NULL,
  Sprite varchar(255) NOT NULL,
  Number_of_Units int NOT NULL,
  Price int NOT NULL,
  Effect_id int NOT NULL,
  PRIMARY KEY (Item_id)
,
  CONSTRAINT Item_Usable_ibfk_1 FOREIGN KEY (Effect_id) REFERENCES Effect (Effect_id)
) ;

CREATE INDEX Effect_id ON Item_Usable (Effect_id);


DROP TABLE IF EXISTS Level;
CREATE TABLE Level (
  Level_id int NOT NULL,
  Type varchar(50) NOT NULL,
  Sprite varchar(255) NOT NULL,
  PRIMARY KEY (Level_id),
  CONSTRAINT Level_ibfk_1 FOREIGN KEY (Level_id) REFERENCES Levels (Level_id)
) ;


DROP TABLE IF EXISTS Levels;
CREATE TABLE Levels (
  Level_id int NOT NULL,
  Order int NOT NULL,
  PRIMARY KEY (Level_id)
) ;


DROP TABLE IF EXISTS Set;
CREATE TABLE Set (
  Set_id int NOT NULL,
  Set_Name varchar(100) NOT NULL,
  Equipment_id int NOT NULL,
  Weapon_id int NOT NULL,
  Item_Usable_id int NOT NULL,
  Sprite varchar(255) NOT NULL,
  HP int NOT NULL,
  Stamina int NOT NULL,
  Power int NOT NULL,
  PRIMARY KEY (Set_id)
,
  CONSTRAINT Set_ibfk_1 FOREIGN KEY (Equipment_id) REFERENCES Equipment (Equipment_id),
  CONSTRAINT Set_ibfk_2 FOREIGN KEY (Weapon_id) REFERENCES Weapon (Weapon_id),
  CONSTRAINT Set_ibfk_3 FOREIGN KEY (Item_Usable_id) REFERENCES Item_Usable (Item_id)
) ;

CREATE INDEX Equipment_id ON Set (Equipment_id);
CREATE INDEX Weapon_id ON Set (Weapon_id);
CREATE INDEX Item_Usable_id ON Set (Item_Usable_id);


DROP TABLE IF EXISTS Weapon;
CREATE TABLE Weapon (
  Weapon_id int NOT NULL,
  Name varchar(100) NOT NULL,
  Sprite varchar(255) NOT NULL,
  type varchar(50) NOT NULL,
  Damage int NOT NULL,
  Price int NOT NULL,
  Effect_id int NOT NULL,
  PRIMARY KEY (Weapon_id)
,
  CONSTRAINT Weapon_ibfk_1 FOREIGN KEY (Effect_id) REFERENCES Effect (Effect_id)
) ;

CREATE INDEX Effect_id ON Weapon (Effect_id);


-- SQLINES DEMO *** 45 UTC

INSERT INTO Enemy (Enemy_id, Name, Sprite, HP, Power, XP, Award, Type)
VALUES
(1, 'Goblin', 'assets/Sprites/Enemies/goblin.png', 20, 5, 7, 10, 'Close'),
(2, 'Mini Goblin', 'assets/Sprites/Enemies/miniGoblin.png', 15, 7, 5, 8, 'Close');
(3, 'Giant Slime', 'assets/Sprites/Enemies/giantSlime.png', 50, 2, 11, 12, 'Close'),
(4, 'Dead Knight', 'assets/Sprites/Enemies/deadKnight.png', 40, 10, 20, 25, 'Close');
(5, 'Orc', 'assets/Sprites/Enemies/orc.png', 30, 5, 9, 12, 'Close'),
(6, 'Dead Archer', 'assets/Sprites/Enemies/darkMage.png', 10, 2, 4, 6, 'Remote');
(7, 'Poltergeist', 'assets/Sprites/Enemies/poltergeist.png', 25, 5, 8, 11, 'Close'),
(8, 'Generall Goblin', 'assets/Sprites/Enemies/generallGoblin.png', 20, 10, 15, 20, 'Close');
(9, 'Guardian Spirit', 'assets/Sprites/Enemies/guardianSpirit.png', 60, 15, 27, 38, 'Close'),
(10, 'Spirit of the Afterlife', 'assets/Sprites/Enemies/spiritOfTheAfterlife.png', 2, 50, 27, 18, 'Close');
(11, 'Goblin Mage', 'assets/Sprites/Enemies/goblinMage.png', 10, 5, 8, 50, 'Close'),
(12, 'Big Orc', 'assets/Sprites/Enemies/bigOrc.png', 35, 7, 15, 17, 'Close');
(13, 'Snake', 'assets/Sprites/Enemies/snake.png', 24, 6, 9, 11, 'Close'),
(14, 'Slime', 'assets/Sprites/Enemies/slime.png', 14, 2, 5, 7, 'Close');
(15, 'Big Dragon', 'assets/Sprites/Enemies/bigDragon.png', 100, 27, 37, 50, 'Remote'),
(16, 'Scary Skeleton', 'assets/Sprites/Enemies/scarySkeleton.png', 25, 7, 12, 15, 'Close');
(17, 'Goblin Knight', 'assets/Sprites/Enemies/goblinKnight.png', 20, 5, 8, 18, 'Close'),
(18, 'Worm', 'assets/Sprites/Enemies/worm.png', 35, 1, 4, 5, 'Close');
(19, 'Medusa', 'assets/Sprites/Enemies/medusa.png', 24, 8, 10, 15, 'Close'),
(20, 'Dragon', 'assets/Sprites/Enemies/dragon.png', 40, 17, 25, 32, 'Close');

INSERT INTO Equipment (Equipment_id, Name, Sprite, Type, Effect_id, Price)
VALUES
(1, 'Helmet of Quiet Warrior', 'assets/Sprites/Equipment/helmet1.png.png', 'Helmet', 2, 25),
(2, 'Helmet of Lone Bandit', 'assets/Sprites/Equipment/helmet2.png', 'Helmet', 5, 25),
(3, 'Helmet of Noble Knight', 'assets/Sprites/Equipment/helmet3.png', 'Helmet', 10, 30),
(4, 'Helmet of Disgraced General', 'assets/Sprites/Equipment/helmet4.png', 'Helmet', 10, 25),
(5, 'Helmet of Mad Executioner', 'assets/Sprites/Equipment/helmet5.png', 'Helmet', 5, 30),
(6, 'Robe of Quiet Warrior', 'assets/Sprites/Equipment/chestplate1.png', 'Body', 3, 40),
(7, 'Robe of Lone Bandit', 'assets/Sprites/Equipment/chestplate2.png', 'Body', 7, 45),
(8, 'Chestplate of Noble Knight', 'assets/Sprites/Equipment/chestplate3.png', 'Body', 3, 35),
(9, 'Shirt of Disgraced General', 'assets/Sprites/Equipment/chestplate4.png', 'Body', 15, 40),
(10, 'Shirt of Mad Executioner', 'assets/Sprites/Equipment/chestplate5.png', 'Body', 8, 45),
(11, 'Boots of Quiet Warrior', 'assets/Sprites/Equipment/boots1.png', 'Legs', 2, 25),
(12, 'Boots of Lone Bandit', 'assets/Sprites/Equipment/boots2.png', 'Legs', 5, 25),
(13, 'Boots of Noble Knight', 'assets/Sprites/Equipment/boots3.png', 'Legs', 10, 25),
(14, 'Boots of Disgraced General', 'assets/Sprites/Equipment/boots4.png', 'Legs', 10, 25),
(15, 'Boots of Mad Executioner', 'assets/Sprites/Equipment/boots5.png', 'Legs', 5, 30),
(16, 'Gloves of Quiet Warrior', 'assets/Sprites/Equipment/gloves1.png', 'Gloves', 1, 20),
(17, 'Gloves of Lone Bandit', 'assets/Sprites/Equipment/gloves2.png', 'Gloves', 7, 25),
(18, 'Gauntlet of Noble Knight', 'assets/Sprites/Equipment/gloves3.png', 'Gloves', 5, 30),
(19, 'Gloves of Disgraced General', 'assets/Sprites/Equipment/gloves4.png', 'Gloves', 7, 25),
(20, 'Gloves of Mad Executioner', 'assets/Sprites/Equipment/gloves5.png', 'Gloves', 10, 25),
(21, 'Keepsake of Young Student', 'assets/Sprites/Equipment/keepsake1.png', 'Amulet', 10, 25),
(22, 'Keepsake of Lost Scholar', 'assets/Sprites/Equipment/keepsake2.png', 'Amulet', 20, 30),
(23, 'Keepsake of Tricky Witch', 'assets/Sprites/Equipment/keepsake3.png', 'Amulet', 5, 25),
(24, 'Keepsake of Lucky Thief', 'assets/Sprites/Equipment/keepsake4.png', 'Amulet', 10, 30),
(25, 'Keepsake of Experienced Fighter', 'assets/Sprites/Equipment/keepsake5.png', 'Amulet', 7, 25),
(26, 'Keepsake of Maddened Divine', 'assets/Sprites/Equipment/keepsake6.png', 'Amulet', 15, 30),
(27, 'Ring of Determination', 'assets/Sprites/Equipment/ring1.png', 'Ring', 10, 20),
(28, 'Ring of a Lieutenant', 'assets/Sprites/Equipment/ring2.png', 'Ring', 15, 25),
(29, 'Ring of a Ruller', 'assets/Sprites/Equipment/ring3.png', 'Ring', 10, 20),
(30, 'Ring of Nobility', 'assets/Sprites/Equipment/ring4.png', 'Ring', 15, 25),
(31, 'Ring of Stoicity', 'assets/Sprites/Equipment/ring5.png', 'Ring', 10, 20),
(32, 'Ring of Willpower', 'assets/Sprites/Equipment/ring6.png', 'Ring', 15, 25);

INSERT INTO Weapon (Weapon_id, Name, Sprite, type, Damage, Price, Effect_id)
VALUES
(1, 'Great Sword', 'assets/Sprites/Weapon/greatSword.png', 'Weapon', 5, 15, 7),
(2, 'Ax', 'assets/Sprites/Weapon/ax.png', 'Weapon', 7, 25, 10),
(3, 'Pirate Sword', 'assets/Sprites/Weapon/pirateSword.png', 'Weapon', 7, 30, 15),
(4, 'Bolo Knife', 'assets/Sprites/Weapon/boloKnife.png', 'Weapon', 6, 20, 10),
(5, 'Long Sword', 'assets/Sprites/Weapon/longSword.png', 'Weapon', 8, 45, 30),
(6, 'Special Bow', 'assets/Sprites/Weapon/specialBow.png', 'Weapon', 8, 40, 25),
(7, 'Bow', 'assets/Sprites/Weapon/Bow.png', 'Weapon', 5, 15, 7),
(8, 'Flail', 'assets/Sprites/Weapon/Flail.png', 'Weapon', 6, 20, 10),
(9, 'Hammer', 'assets/Sprites/Weapon/Hammer.png', 'Weapon', 7, 30, 20);

INSERT INTO Item_Usable (Item_id, Name, Sprite, Number_of_Units, Price, Effect_id)
VALUES
(1, 'Rat Poison', 'assets/Sprites/Usables/ratPoison.png', 2, 15, 10),
(2, 'Snake Poison', 'assets/Sprites/Usables/snakePoison.png', 2, 25, 15),
(3, 'The Forgotten Book', 'assets/Sprites/Usables/theForgottenBook.png', 3, 40, 25),
(4, 'Cheese', 'assets/Sprites/Usables/cheese.png', 2, 10, 20),
(5, 'Grandfathers Tincture', 'assets/Sprites/Usables/grandfathersTincture.png', 2, 20, 30),
(6, 'Dragons Blood', 'assets/Sprites/Usables/dragonsBlood.png', 3, 25, 25),
(7, 'Medusa Tear', 'assets/Sprites/Usables/medusaTear.png', 1, 25, 2),
(8, 'Power of the Dead', 'assets/Sprites/Usables/powerOfTheDead.png', 1, 50, 5);

INSERT INTO Expoint (UniqueID, Level, Min_XP, Max_XP)
VALUES
(1, 1, 0, 6),
(2, 2, 7, 14),
(3, 3, 15, 22),
(4, 4, 23, 31),
(5, 5, 32, 40),
(6, 6, 41, 54),
(7, 7, 55, 66),
(8, 8, 67, 79),
(9, 9, 80, 94),
(10, 10, 95, 114),
(11, 11, 115, 132),
(12, 12, 133, 152),
(13, 13, 153, 175),
(14, 14, 176, 200),
(15, 15, 201, 229),
(16, 16, 230, 265),
(17, 17, 266, 292),
(18, 18, 293, 320),
(19, 19, 321, 360),
(20, 20, 361, 400),
(21, 21, 401, 999);
