INSERT INTO EFFECT (EFFECT_ID, NAME, TYPE, HP, POWER, STAMINA, DAMAGE, INCOMING_DAMAGE)
VALUES
--Armor
(1, 'Helmet Effect 1', 'Player', 10, NULL, NULL, 0.02, -0.02),
(2, 'Helmet Effect 2', 'Player', 15, NULL, NULL, NULL, -0.05),
(3, 'Helmet Effect 3', 'Player', NULL, NULL, 3, 0.1, NULL),
(4, 'Helmet Effect 4', 'Player', NULL, 2, NULL, NULL, -0.1),
(5, 'Helmet Effect 5', 'Player', NULL, 5, NULL, 0.05, NULL),
(6, 'Body Effect 1', 'Player', 15, NULL, NULL, 0.03, -0.03),
(7, 'Body Effect 2', 'Player', 20, NULL, NULL, NULL, -0.07),
(8, 'Body Effect 3', 'Player', NULL, NULL, 5, 0.03, NULL),
(9, 'Body Effect 4', 'Player', NULL, 1, NULL, NULL, -0.15),
(10, 'Body Effect 5', 'Player', NULL, 5, NULL, 0.08, NULL),
(11, 'Boots Effect 1', 'Player', 10, NULL, NULL, 0.02, -0.02),
(12, 'Boots Effect 2', 'Player', 15, NULL, NULL, NULL, -0.05),
(13, 'Boots Effect 3', 'Player', NULL, NULL, 3, 0.1, NULL),
(14, 'Boots Effect 4', 'Player', NULL, 2, NULL, NULL, -0.1),
(15, 'Boots Effect 5', 'Player', NULL, 4, NULL, 0.05, NULL),
(16, 'Hands Effect 1', 'Player', 5, NULL, NULL, 0.01, -0.01),
(17, 'Hands Effect 2', 'Player', 10, NULL, NULL, 0.07, NULL),
(18, 'Hands Effect 3', 'Player', NULL, NULL, 1, NULL, -0.05),
(19, 'Hands Effect 4', 'Player', NULL, 2, NULL, 0.07, NULL),
(20, 'Hands Effect 5', 'Player', NULL, 5, NULL, NULL, -0.05),
(21, 'Amulet Effect 1', 'Player', 10, NULL, NULL, NULL, -0.1),
(22, 'Amulet Effect 2', 'Player', NULL, NULL, 2, 0.05, -0.05),
(23, 'Amulet Effect 3', 'Player', 20, NULL, NULL, NULL, -0.15),
(24, 'Amulet Effect 4', 'Player', NULL, 3, NULL, 0.05, NULL),
(25, 'Amulet Effect 5', 'Player', NULL, 5, NULL, 0.1, NULL),
(26, 'Amulet Effect 5', 'Player', NULL, 2, NULL, 0.07, NULL),
(27, 'Ring Effect 1', 'Player', 5, NULL, NULL, NULL, -0.05),
(28, 'Ring Effect 2', 'Player', NULL, NULL, 2, 0.01, -0.01),
(29, 'Ring Effect 3', 'Player', NULL, NULL, 2, 0.02, -0.02),
(30, 'Ring Effect 4', 'Player', NULL, 3, NULL, 0.05, NULL),
(31, 'Ring Effect 5', 'Player', 10, NULL, NULL, NULL, -0.1),
(32, 'Ring Effect 6', 'Player', NULL, 2, NULL, 0.05, NULL),
--Weapon
(33, 'Weapon Effect 1', 'Player', NULL, 5, NULL, 0.07, NULL),
(34, 'Weapon Effect 2', 'Player', NULL, 7, NULL, 0.1, NULL),
(35, 'Weapon Effect 3', 'Player', NULL, 7, NULL, 0.15, NULL),
(36, 'Weapon Effect 4', 'Player', 0.1, 6, NULL, NULL, NULL),
(37, 'Weapon Effect 5', 'Player', 0.3, 8, NULL, NULL, NULL),
(38, 'Weapon Effect 6', 'Player', 0.25, 8, NULL, NULL, NULL),
(39, 'Weapon Effect 7', 'Player', NULL, 35, NULL, NULL, NULL),
(40, 'Weapon Effect 8', 'Player', NULL, 60, NULL, NULL, NULL),
(41, 'Weapon Effect 9', 'Player', NULL, 140, NULL, NULL, NULL),
--Iteam Usable
(42, 'Poison Effect 1', 'Enemy', NULL, NULL, NULL, -10, NULL),
(43, 'Poison Effect 2', 'Enemy', NULL, NULL, NULL, -15, NULL),
(44, 'Poison Effect 3', 'Enemy', NULL, NULL, NULL, -20, NULL),
(45, 'Poison Effect 4', 'Player', 5, NULL, NULL, NULL, NULL),
(46, 'Poison Effect 5', 'Player', 10, NULL, NULL, NULL, NULL),
(47, 'Poison Effect 6', 'Player', 20, NULL, NULL, NULL, NULL);


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
(6, 'Dragons Blood', 'assets/Sprites/Usables/dragonsBlood.png', 3, 25, 47);


INSERT INTO LEVEL (LEVEL_ID, TYPE, SPRITE)
VALUES
(1, 'Trader', 'assets/Sprites/Level/trader.png'),
(2, 'Combat', 'assets/Sprites/Level/combat.png'),
(3, 'Boss Room', 'assets/Sprites/Level/bossRoom.png');


INSERT INTO LEVELS (LEVEL_ID, ORDER)
VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(1, 5),
(3, 6);


INSERT INTO SET (SET_ID, SET_NAME, EQUIPMENT_ID, WEAPON_ID, ITEM_USABLE_ID, SPRITE, HP, STAMINA, POWER)
VALUES
(1, 'Strongman', 10, 8, 1, 'assets/Sprites/Set/Strongman.png', 20, 1, 10),
(2, 'Tank', 8, 7, 5, 'assets/Sprites/Set/Tank.png', 40, 1, 1),
(3, 'Hardyman', 5, 1, 4, 'assets/Sprites/Set/Hardyman.png', 20, 10, 1);


INSERT INTO BACKGROUND (BACKGROUND_ID, IMAGE, GRADIENT, BACKGROUND_LIGHT, ROOM)
VALUES
(1, "./demoImg/levelGenImg/background/sky1.png", "linear-gradient(180deg,rgba(72, 172, 212, 1) 0%, rgba(142, 224, 230, 1) 50%, rgba(193, 242, 247, 1) 100%)", "rgba(72, 172, 212, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(2, "./demoImg/levelGenImg/background/sky2.png", "linear-gradient(180deg,rgba(72, 172, 212, 1) 0%, rgba(230, 142, 167, 1) 50%, rgba(237, 83, 93, 1) 100%)", "rgba(230, 142, 167, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(3, "./demoImg/levelGenImg/background/sky3.png", "linear-gradient(180deg,rgba(28, 61, 89, 1) 0%, rgba(41, 47, 135, 1) 50%, rgba(41, 47, 135, 1) 100%)", "rgba(41, 47, 135, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(4, "./demoImg/levelGenImg/background/sky4.png", "linear-gradient(180deg,rgba(36, 52, 143, 1) 0%, rgba(169, 73, 184, 1) 50%, rgba(255, 173, 206, 1) 100%)", "rgba(169, 73, 184, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(5, "./demoImg/levelGenImg/background/sky5.png", "linear-gradient(180deg,rgba(199, 226, 255, 1) 0%, rgba(67, 151, 230, 1) 50%, rgba(196, 233, 255, 1) 100%)", "rgba(67, 151, 230, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(6, "./demoImg/levelGenImg/background/sky6.png", "linear-gradient(180deg,rgba(235, 193, 110, 1) 0%, rgba(255, 87, 15, 1) 50%, rgba(212, 66, 158, 1) 100%)", "rgba(255, 87, 15, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(7, "./demoImg/levelGenImg/background/sky7.png", "linear-gradient(180deg,rgba(240, 67, 148, 1) 0%, rgba(255, 87, 15, 1) 50%, rgba(242, 146, 78, 1) 100%)", "rgba(255, 87, 15, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(8, "./demoImg/levelGenImg/background/sky8.png", "linear-gradient(180deg,rgba(179, 67, 240, 1) 0%, rgba(130, 28, 199, 1) 50%, rgba(100, 38, 199, 1) 100%)", "rgba(130, 28, 199, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(9, "./demoImg/levelGenImg/background/city1.png", "linear-gradient(180deg,rgba(86, 143, 196, 1) 0%, rgba(212, 217, 108, 1) 50%, rgba(51, 109, 143, 1) 100%)", "rgba(212, 217, 108, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(10, "./demoImg/levelGenImg/background/city2.png", "linear-gradient(180deg,rgba(252, 199, 229, 1) 0%, rgba(230, 55, 180, 1) 50%, rgba(3, 0, 0, 1) 100%)", "rgba(230, 55, 180, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(11, "./demoImg/levelGenImg/background/city3.png", "linear-gradient(180deg,rgba(199, 239, 252, 1) 0%, rgba(37, 187, 217, 1) 50%, rgba(3, 0, 0, 1) 100%)", "rgba(37, 187, 217, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(12, "./demoImg/levelGenImg/background/city4.png", "linear-gradient(180deg,rgba(252, 199, 231, 1) 0%, rgba(217, 37, 109, 1) 70%, rgba(3, 0, 0, 1) 100%)", "rgba(217, 37, 109, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(13, "./demoImg/levelGenImg/background/city5.png", "linear-gradient(180deg,rgba(252, 199, 231, 1) 0%, rgba(217, 37, 109, 1) 70%, rgba(3, 0, 0, 1) 100%)", "rgba(217, 37, 109, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(14, "./demoImg/levelGenImg/background/city6.png", "linear-gradient(180deg,rgba(106, 184, 196, 1) 0%, rgba(29, 130, 145, 1) 50%, rgba(3, 0, 0, 1) 100%)", "rgba(29, 130, 145, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(15, "./demoImg/levelGenImg/background/city7.png", "linear-gradient(180deg,rgba(255, 177, 99, 1) 0%, rgba(255, 158, 54, 1) 50%, rgba(171, 86, 7, 1) 100%)", "rgba(255, 158, 54, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(16, "./demoImg/levelGenImg/background/city8.png", "linear-gradient(180deg,rgba(2, 16, 168, 1) 0%, rgba(255, 77, 54, 1) 30%, rgba(158, 97, 186, 1) 100%)", "rgba(255, 77, 54, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(17, "./demoImg/levelGenImg/background/city9.png", "linear-gradient(180deg,rgba(161, 0, 72, 1) 0%, rgba(214, 17, 17, 1) 30%, rgba(130, 66, 66, 1) 100%)", "rgba(214, 17, 17, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(18, "./demoImg/levelGenImg/background/city10.png", "linear-gradient(180deg,rgba(232, 146, 223, 1) 0%, rgba(227, 104, 155, 1) 50%, rgba(130, 66, 95, 1) 100%)", "rgba(227, 104, 155, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(19, "./demoImg/levelGenImg/background/sky9.png", "linear-gradient(180deg,rgba(255, 0, 0, 1) 0%, rgba(163, 0, 0, 1) 30%, rgba(105, 0, 0, 1) 100%)", "rgba(163, 0, 0, 1)", "./demoImg/levelGenImg/rooms/room1Pixel.png"),
(20, "./demoImg/levelGenImg/background/city11.png", "linear-gradient(180deg,rgba(182, 234, 252, 1) 0%, rgba(175, 83, 189, 1) 50%, rgba(72, 28, 89, 1) 100%)", "rgba(175, 83, 189, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(21, "./demoImg/levelGenImg/background/city12.png", "linear-gradient(180deg,rgba(6, 45, 138, 1) 0%, rgba(189, 74, 207, 1) 50%, rgba(72, 28, 89, 1) 100%)", "rgba(189, 74, 207, 1)", "./demoImg/levelGenImg/rooms/room2Pixel.png"),
(22, "./demoImg/levelGenImg/background/landscape1.png", "linear-gradient(180deg,rgb(190, 153, 119) 0%, rgba(242, 131, 51, 1) 50%, rgba(130, 80, 33, 1) 100%)", "rgba(242, 131, 51, 1)", "./demoImg/levelGenImg/rooms/room3Pixel.png"),
(23, "./demoImg/levelGenImg/background/landscape2.png", "linear-gradient(180deg,rgb(226, 178, 235) 0%, rgba(255, 181, 220, 1) 30%, rgba(217, 197, 143, 1) 100%)", "rgba(255, 181, 220, 1)", "./demoImg/levelGenImg/rooms/room3Pixel.png"),
(24, "./demoImg/levelGenImg/background/landscape3.png", "linear-gradient(180deg,rgba(72, 20, 128, 1) 0%, rgba(237, 126, 152, 1) 30%, rgb(103, 28, 115) 100%)", "rgba(237, 126, 152, 1)", "./demoImg/levelGenImg/rooms/room3Pixel.png"),
(25, "./demoImg/levelGenImg/background/landscape4.png", "linear-gradient(180deg,rgba(125, 188, 209, 1) 0%, rgba(245, 199, 140, 1) 50%, rgb(219, 64, 149) 75%, rgba(50, 28, 115, 1) 100%)", "rgba(245, 199, 140, 1)", "./demoImg/levelGenImg/rooms/room3Pixel.png"),
(26, "./demoImg/levelGenImg/background/landscape5.png", "linear-gradient(180deg,rgba(250, 222, 167, 1) 0%, rgba(240, 164, 110, 1) 50%, rgba(168, 45, 34, 1) 100%)", "rgba(240, 164, 110, 1)", "./demoImg/levelGenImg/rooms/room3Pixel.png"),
(27, "./demoImg/levelGenImg/background/landscape6.png", "linear-gradient(180deg,rgba(255, 116, 56, 0.5) 0%, rgba(212, 62, 42, 1) 50%, rgba(150, 28, 17, 1) 100%)", "rgba(212, 62, 42, 1)", "./demoImg/levelGenImg/rooms/room3Pixel.png"),
(28, "./demoImg/levelGenImg/background/landscape7.png", "linear-gradient(180deg,rgba(163, 83, 49, 1) 0%, rgba(242, 86, 19, 1) 50%, rgb(235, 40, 102) 100%)", "rgb(235, 40, 108)", "./demoImg/levelGenImg/rooms/room3Pixel.png");


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

