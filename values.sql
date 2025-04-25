INSERT INTO EFFECT (EFFECT_ID, NAME, TYPE, HP, POWER, STAMINA, DAMAGE, INCOMING_DAMAGE)
VALUES
--Armor
(1, 'Helmet Effect 1', 'Player', 10, 2, 2, 0.1, -0.1),
(2, 'Helmet Effect 2', 'Player', 15, 5, 5, NULL, -0.2),
(3, 'Helmet Effect 3', 'Player', 10, 10, 3, 0.6, NULL),
(4, 'Helmet Effect 4', 'Player', 10, 2, 10, NULL, -0.5),
(5, 'Helmet Effect 5', 'Player', 5, 4, 5, 0.5, NULL),
(6, 'Body Effect 1', 'Player', 15, 3, 3, 0.1, -0.1),
(7, 'Body Effect 2', 'Player', 20, 7, 7, NULL, -0.3),
(8, 'Body Effect 3', 'Player', 3, 3, 5, 0.4, NULL),
(9, 'Body Effect 4', 'Player', 15, 1, 15, NULL, -0.6),
(10, 'Body Effect 5', 'Player', 8, 5, 8, 0.6, NULL),
(11, 'Boots Effect 1', 'Player', 10, 2, 2, 0.2, -0.2),
(12, 'Boots Effect 2', 'Player', 15, 5, 5, NULL, -0.3),
(13, 'Boots Effect 3', 'Player', 10, 10, 3, 0.4, NULL),
(14, 'Boots Effect 4', 'Player', 10, 2, 10, NULL, -0.3),
(15, 'Boots Effect 5', 'Player', 5, 4, 5, 0.3, NULL),
(16, 'Hands Effect 1', 'Player', 5, 1, 1, 0.05, -0.05),
(17, 'Hands Effect 2', 'Player', 10, 7, 7, 0.1, NULL),
(18, 'Hands Effect 3', 'Player', 5, 5, 1, NULL, -0.2),
(19, 'Hands Effect 4', 'Player', 7, 2, 7, 0.1, NULL),
(20, 'Hands Effect 5', 'Player', 5, 5, 5, NULL, -0.1),
--what is the experience and money? We don't have colums for that
(21, 'Amulet Effect 1', 'Player', 0, 0, 0, NULL, NULL),
(22, 'Amulet Effect 2', 'Player', 0, 0, 0, NULL, NULL),
(23, 'Amulet Effect 3', 'Player', 0, 0, 0, NULL, NULL),
(24, 'Amulet Effect 4', 'Player', 0, 0, 0, NULL, NULL),
(25, 'Amulet Effect 5', 'Player', 0, 0, 0, NULL, NULL),
(26, 'Amulet Effect 5', 'Player', 0, 0, 0, NULL, NULL),
(27, 'Ring Effect 1', 'Player', 0, 0, 0, NULL, NULL),
(28, 'Ring Effect 2', 'Player', 0, 0, 0, NULL, NULL),
(29, 'Ring Effect 3', 'Player', 0, 0, 0, NULL, NULL),
(30, 'Ring Effect 4', 'Player', 0, 0, 0, NULL, NULL),
(31, 'Ring Effect 5', 'Player', 0, 0, 0, NULL, NULL),
(32, 'Ring Effect 6', 'Player', 0, 0, 0, NULL, NULL),
--Weapon
--I think we don't need "Value for effect"
(33, 'Weapon Effec 1', 'Player', 0, 5, 0, 0.2, NULL),
(34, 'Weapon Effec 2', 'Player', 0, 7, 0, 0.25, NULL),
(35, 'Weapon Effec 3', 'Player', 0, 7, 0, 0.3, NULL),
(36, 'Weapon Effec 4', 'Player', 0, 6, 0, NULL, 0.05),
(37, 'Weapon Effec 5', 'Player', 0, 8, 0, NULL, 0.1),
(38, 'Weapon Effec 6', 'Player', 0, 8, 0, NULL, 0.15),
--what does mean "Deals damage X times"?
(39, 'Weapon Effec 7', 'Player', 0, 5, 0, NULL, NULL),
(40, 'Weapon Effec 8', 'Player', 0, 6, 0, NULL, NULL),
(41, 'Weapon Effec 9', 'Player', 0, 7, 0, NULL, NULL),
--Iteam Usable
(42, 'Poison Effect 1', 'Enemy', 0, 0, 0, -10, NULL),
(43, 'Poison Effect 2', 'Enemy', 0, 0, 0, -15, NULL),
(44, 'Poison Effect 3', 'Enemy', 0, 0, 0, -20, NULL),
(45, 'Poison Effect 4', 'Player', 5, 0, 0, NULL, NULL),
(46, 'Poison Effect 5', 'Player', 10, 0, 0, NULL, NULL),
(47, 'Poison Effect 6', 'Player', 20, 0, 0, NULL, NULL),
(48, 'Poison Effect 7', 'Player', 10, 10, 10, 0.1, 0.1),
(49, 'Poison Effect 8', 'Player', 20, 20, 20, 0.2, 0.2);

INSERT INTO EQUIPMENT (EQUIPMENT_ID, NAME, SPRITE, TYPE, EFFECT_ID, PRICE)
VALUES
(1, 'Helmet of Quiet Warrior', 'assets/Sprites/Equipment/helmet1.png.png', 'Helmet', 1, 25),
(2, 'Helmet of Lone Bandit', 'assets/Sprites/Equipment/helmet2.png', 'Helmet', 2, 25),
(3, 'Helmet of Noble Knight', 'assets/Sprites/Equipment/helmet3.png', 'Helmet', 3, 30),
(4, 'Helmet of Disgraced General', 'assets/Sprites/Equipment/helmet4.png', 'Helmet', 4, 25),
(5, 'Helmet of Mad Executioner', 'assets/Sprites/Equipment/helmet5.png', 'Helmet', 5, 30),
(6, 'Robe of Quiet Warrior', 'assets/Sprites/Equipment/chestplate1.png', 'Body', 6, 40),
(7, 'Robe of Lone Bandit', 'assets/Sprites/Equipment/chestplate2.png', 'Body', 7, 45),
(8, 'Chestplate of Noble Knight', 'assets/Sprites/Equipment/chestplate3.png', 'Body', 8, 35),
(9, 'Shirt of Disgraced General', 'assets/Sprites/Equipment/chestplate4.png', 'Body', 9, 40),
(10, 'Shirt of Mad Executioner', 'assets/Sprites/Equipment/chestplate5.png', 'Body', 10, 45),
(11, 'Boots of Quiet Warrior', 'assets/Sprites/Equipment/boots1.png', 'Legs', 11, 25),
(12, 'Boots of Lone Bandit', 'assets/Sprites/Equipment/boots2.png', 'Legs', 12, 25),
(13, 'Boots of Noble Knight', 'assets/Sprites/Equipment/boots3.png', 'Legs', 13, 25),
(14, 'Boots of Disgraced General', 'assets/Sprites/Equipment/boots4.png', 'Legs', 14, 25),
(15, 'Boots of Mad Executioner', 'assets/Sprites/Equipment/boots5.png', 'Legs', 15, 30),
(16, 'Gloves of Quiet Warrior', 'assets/Sprites/Equipment/gloves1.png', 'Gloves', 16, 20),
(17, 'Gloves of Lone Bandit', 'assets/Sprites/Equipment/gloves2.png', 'Gloves', 17, 25),
(18, 'Gauntlet of Noble Knight', 'assets/Sprites/Equipment/gloves3.png', 'Gloves', 18, 30),
(19, 'Gloves of Disgraced General', 'assets/Sprites/Equipment/gloves4.png', 'Gloves', 19, 25),
(20, 'Gloves of Mad Executioner', 'assets/Sprites/Equipment/gloves5.png', 'Gloves', 20, 25),
(21, 'Keepsake of Young Student', 'assets/Sprites/Equipment/keepsake1.png', 'Amulet', 21, 25),
(22, 'Keepsake of Lost Scholar', 'assets/Sprites/Equipment/keepsake2.png', 'Amulet', 22, 30),
(23, 'Keepsake of Tricky Witch', 'assets/Sprites/Equipment/keepsake3.png', 'Amulet', 23, 25),
(24, 'Keepsake of Lucky Thief', 'assets/Sprites/Equipment/keepsake4.png', 'Amulet', 24, 30),
(25, 'Keepsake of Experienced Fighter', 'assets/Sprites/Equipment/keepsake5.png', 'Amulet', 25, 25),
(26, 'Keepsake of Maddened Divine', 'assets/Sprites/Equipment/keepsake6.png', 'Amulet', 26, 30),
(27, 'Ring of Determination', 'assets/Sprites/Equipment/ring1.png', 'Ring', 27, 20),
(28, 'Ring of a Lieutenant', 'assets/Sprites/Equipment/ring2.png', 'Ring', 28, 25),
(29, 'Ring of a Ruller', 'assets/Sprites/Equipment/ring3.png', 'Ring', 29, 20),
(30, 'Ring of Nobility', 'assets/Sprites/Equipment/ring4.png', 'Ring', 30, 25),
(31, 'Ring of Stoicity', 'assets/Sprites/Equipment/ring5.png', 'Ring', 31, 20),
(32, 'Ring of Willpower', 'assets/Sprites/Equipment/ring6.png', 'Ring', 32, 25);


INSERT INTO WEAPON (WEAPON_ID, NAME, SPRITE, TYPE, DAMAGE, PRICE, EFFECT_ID)
VALUES
(1, 'Great Sword', 'assets/Sprites/Weapon/greatSword.png', 'Weapon', 5, 15, 33),
(2, 'Ax', 'assets/Sprites/Weapon/ax.png', 'Weapon', 7, 25, 34),
(3, 'Pirate Sword', 'assets/Sprites/Weapon/pirateSword.png', 'Weapon', 7, 30, 35),
(4, 'Bolo Knife', 'assets/Sprites/Weapon/boloKnife.png', 'Weapon', 6, 20, 36),
(5, 'Long Sword', 'assets/Sprites/Weapon/longSword.png', 'Weapon', 8, 45, 37),
(6, 'Special Bow', 'assets/Sprites/Weapon/specialBow.png', 'Weapon', 8, 40, 38),
(7, 'Bow', 'assets/Sprites/Weapon/Bow.png', 'Weapon', 5, 15, 39),
(8, 'Flail', 'assets/Sprites/Weapon/Flail.png', 'Weapon', 6, 20, 40),
(9, 'Hammer', 'assets/Sprites/Weapon/Hammer.png', 'Weapon', 7, 30, 41);


INSERT INTO ITEM_USABLE (ITEM_ID, NAME, SPRITE, NUMBER_OF_UNITS, PRICE, EFFECT_ID)
VALUES
(1, 'Rat Poison', 'assets/Sprites/Usables/ratPoison.png', 2, 15, 42),
(2, 'Snake Poison', 'assets/Sprites/Usables/snakePoison.png', 2, 25, 43),
(3, 'The Forgotten Book', 'assets/Sprites/Usables/theForgottenBook.png', 3, 40, 44),
(4, 'Cheese', 'assets/Sprites/Usables/cheese.png', 2, 10, 45),
(5, 'Grandfathers Tincture', 'assets/Sprites/Usables/grandfathersTincture.png', 2, 20, 46),
(6, 'Dragons Blood', 'assets/Sprites/Usables/dragonsBlood.png', 3, 25, 47),
(7, 'Medusa Tear', 'assets/Sprites/Usables/medusaTear.png', 1, 25, 48),
(8, 'Power of the Dead', 'assets/Sprites/Usables/powerOfTheDead.png', 1, 50, 49);


INSERT INTO LEVELS (LEVEL_ID, ORDER)
VALUES


INSERT INTO LEVEL (LEVEL_ID, TYPE, SPRITE)
VALUES


INSERT INTO SET (SET_ID, SET_NAME, EQUIPMENT_ID, WEAPON_ID, ITEM_USABLE_ID, SPRITE, HP, STAMINA, POWER)
VALUES


INSERT INTO BACKGROUND (BACKGROUND_ID, IMAGE, GRADIENT, BACKGROUND, ROOM)
VALUES


INSERT INTO ENEMY (ENEMY_ID, NAME, SPRITE, HP, POWER, XP, AWARD, TYPE)
VALUES
(1, 'Goblin', 'assets/Sprites/Enemies/goblin.png', 20, 5, 7, 10, 'Enemy'),
(2, 'Mini Goblin', 'assets/Sprites/Enemies/miniGoblin.png', 15, 7, 5, 8, 'Enemy');
(3, 'Giant Slime', 'assets/Sprites/Enemies/giantSlime.png', 50, 2, 11, 12, 'Boss'),
(4, 'Dead Knight', 'assets/Sprites/Enemies/deadKnight.png', 40, 10, 20, 25, 'Boss');
(5, 'Orc', 'assets/Sprites/Enemies/orc.png', 30, 5, 9, 12, 'Enemy'),
(6, 'Dead Archer', 'assets/Sprites/Enemies/darkMage.png', 10, 2, 4, 6, 'Enemy');
(7, 'Poltergeist', 'assets/Sprites/Enemies/poltergeist.png', 25, 5, 8, 11, 'Enemy'),
(8, 'Generall Goblin', 'assets/Sprites/Enemies/generallGoblin.png', 20, 10, 15, 20, 'Boss');
(9, 'Guardian Spirit', 'assets/Sprites/Enemies/guardianSpirit.png', 60, 15, 27, 38, 'Boss'),
(10, 'Spirit of the Afterlife', 'assets/Sprites/Enemies/spiritOfTheAfterlife.png', 2, 50, 27, 18, 'Enemy');
(11, 'Goblin Mage', 'assets/Sprites/Enemies/goblinMage.png', 10, 5, 8, 50, 'Enemy'),
(12, 'Big Orc', 'assets/Sprites/Enemies/bigOrc.png', 35, 7, 15, 17, 'Enemy');
(13, 'Snake', 'assets/Sprites/Enemies/snake.png', 24, 6, 9, 11, 'Enemy'),
(14, 'Slime', 'assets/Sprites/Enemies/slime.png', 14, 2, 5, 7, 'Enemy'),
(15, 'Big Dragon', 'assets/Sprites/Enemies/bigDragon.png', 100, 27, 37, 50, 'Boss'),
(16, 'Scary Skeleton', 'assets/Sprites/Enemies/scarySkeleton.png', 25, 7, 12, 15, 'Enemy');
(17, 'Goblin Knight', 'assets/Sprites/Enemies/goblinKnight.png', 20, 5, 8, 18, 'Enemy'),
(18, 'Worm', 'assets/Sprites/Enemies/worm.png', 35, 1, 4, 5, 'Enemy');
(19, 'Medusa', 'assets/Sprites/Enemies/medusa.png', 24, 8, 10, 15, 'Enemy'),
(20, 'Dragon', 'assets/Sprites/Enemies/dragon.png', 40, 17, 25, 32, 'Enemy');


INSERT INTO EXPOINT (UNIQUEID, LEVEL, MIN_XP, MAX_XP)
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

