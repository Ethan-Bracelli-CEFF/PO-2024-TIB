USE `tib`;


-- Type : 0 = matu // 1 = métier
-- Difficulté : 1 = facile // 2 = moyen // 3 = difficile
-- Thème Matu : 1 = Français // 2 = Math // 3 = Anglais // 4 = Allemand // 5 = Histoire // 6 = Economie // 7 = Droit // 8 = Physique
-- Thème Métier : 1 = Informatique // 2 = Mécanique // 3 = Automation // 4 = Electronique // 5 = Dessin technique
INSERT INTO `questions` (`texte`, `type`, `diff`, `theme`) VALUES
-- Français
("Comment conjugue-t-on le verbe manger à l'imparfait (il) ?", 0, 1, 1),
("Compléter la phrase suivante : J'adore cette _____ plage", 0, 1, 1),
("Combien y a-t-il de conjonctions de coordination ?", 0, 2, 1),
("Lequel de ces romans a été écris par Victor Hugo ?", 0, 2, 1),
("Combien de syllabes compte un alexandrin ?", 0, 3, 1),
("Conjugue le verbe s'apitoyer au subjonctif imparfait (nous) ?", 0, 3, 1),
-- Math
("Combien fait 12 au carré ?", 0, 1, 2),
("Quel est la racine carré de 169 ?", 0, 1, 2),
("Que vaut x si x + 1/3 = 3x - 4/6 ?", 0, 2, 2),
("Que vaut l'aire d'un trapèze rectangle si h = 5, B = 4 et b = 2 ?", 0, 2, 2),
("Quel est la formule de la somme des angles du polygone à n cotés ?", 0, 3, 2),
("Réduit le polynôme suivant 2x^2 - 9x + 9 ?", 0, 3, 2),
-- Anglais
("Comment s'appelle l'équivalent du présent an Anglais ?", 0, 1, 3),
("Quel pronom du présent change la terminaison  du verbe (do --> does) ?", 0, 1, 3),
("Lequel de ces verbes est irrégulier ?", 0, 2, 3),
("Quelle est la bonne conjugaison au past continious ?", 0, 2, 3),
("Comment conjugue-on le verbe to eat ?", 0, 3, 3),
("Quelle phrase est correcte ?", 0, 3, 3),
-- Allemand
("Quelle est la traduction du verbe 'Sein' ?", 0, 1, 4),
("Quelle est la position d'un verbe dans une phrase classique ?", 0, 1, 4),
("Quelle phrase est correcte ?", 0, 2, 4),
("De quel genre est le mot 'Bank' ?", 0, 2, 4),
("Pourquoi la phrase suivante est-elle fausse : Der Apfel, dem ich gegessen habe, war lecker. ?", 0, 3, 4),
("Lequel de ces verbes est régulier ?", 0, 3, 4),
-- Histoire
("Les Années de la première guerre mondiale ?", 0, 1, 5),
("Qui s'opposait surant la guerre froide ?", 0, 1, 5),
("Quel est le surnom du Roi Louis XIV ?", 0, 2, 5),
("Dans quel pays a eu lieu la guerre de Sécession ?", 0, 2, 5),
("De quand date l'appel du général de Gaulle ?", 0, 3, 5),
("Qui opposait la guerre du Golfe ?", 0, 3, 5),
-- Economie
("Comment s'appelle la monnaie du Canada ?", 0, 1, 6),
("Qui est l'homme le plus riche de France ?", 0, 1, 6),
("Qui frappe la monnaie en Suisse ?", 0, 2, 6),
("Quelles sont les 4 éléments importants de l'économie circulaire ?", 0, 2, 6),
("Combien de pièces sont en circulation en Suisse ?", 0, 3, 6),
("En quelle année a eu lieu la crise des subprimes ?", 0, 3, 6),
-- Droit
("Comme s'appelle la personne qui rend le verdict final ?", 0, 1, 7),
("Qu'est-ce qu'une personne morale ?", 0, 1, 7),
("Combien y-a-t'il de tribunes fédérales en Suisse ?", 0, 2, 7),
("Qui élit les juges fédéraux ?", 0, 2, 7),
("Est-ce légal de se marier avec son cousin/sa cousine ?", 0, 3, 7),
("Par quelle déesse grecque est représenté la justice ?", 0, 3, 7),
-- Physique
("Qui a découvert la formule E = mc^2 ?", 0, 1, 8),
("Sans air, qu'est ce qui tombe le plus vite entre une plume et une enclume ?", 0, 1, 8),
("Quelle est la constante de gravité sur Terre ?", 0, 2, 8),
("Quelle est la masse volumique de l'eau ?", 0, 2, 8),
("Quelle est la chaleur massique de l'eau ?", 0, 3, 8),
("Sur quelle base est défini le mètre actuel ?", 0, 3, 8),
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Métier
-- Informatique
("C'est quoi le binaire ?", 1, 1, 1),
("C'est quoi un ordinateur quantique ?", 1, 1, 1),
("Qui a inventé Linux ?", 1, 2, 1),
("Quelle programme est installé sur la carte mère ?", 1, 2, 1),
("Combien de bits dans un térabyte ?", 1, 3, 1),
("Qui a inventé GIT (principe de GitHub) ?", 1, 3, 1),
-- Mécanique
("Quel précision peut-on atteindre avec un micromètre ?", 1, 1, 2),
("Comment nomme-t-on une machine commandé numériquement ?", 1, 1, 2),
("Comment appelle-on une machine servant à faire des pièces cylindriques ?", 1, 2, 2),
("Quelle est la matière la plus lourde ?", 1, 2, 2),
("Que signife l'abréviation PTFE ?", 1, 3, 2),
("Que signifie l'abréviation UGV ?", 1, 3, 2),
-- Automation
("Qu'est-ce qu'un vérin ?", 1, 1, 3),
("Quelle est la tension normal des prises en Suisse ?", 1, 1, 3),
("A quel tension alternative peut-on mourir ?", 1, 2, 3),
("Qu'est ce qu'une bobine ? ", 1, 2, 3),
("Quelle est la formule de la loi d'ohm ?", 1, 3, 3),
("Quel est l'ennemi de la pneumatique ?", 1, 3, 3),
-- Electronique
("C'est quoi le courant électrique ?", 1, 1, 4),
("C'est quoi les 2 types de courant électrique ?", 1, 1, 4),
("Quel langage est utilisé pour programmer de l'électronique ?", 1, 2, 4),
("Quel type d'ampoule est la plus rependu actuellement ?", 1, 2, 4),
("Qui a inventé la pile moderne ?", 1, 3, 4),
("Quelle est la fréquence de la tension dans les prises courante ?", 1, 3, 4),
-- Dessin technique
("Qu'est-ce qu'une cote ?", 1, 1, 5),
("Qu'est-ce que le dessin technique ?", 1, 1, 5),
("Une vue principale c'est quoi ?", 1, 2, 5),
("A quoi correspond un Ra 3,2 ?", 1, 2, 5),
("Qu'est-ce qu'un cartouche ?", 1, 3, 5),
("Quelle norme est souvent utilisée pour le dessin technique ?", 1, 3, 5)
;
-- ID de la question // texte de la réponse // 0 si fausse et 1 si correct
INSERT INTO `reponses` (`questions_idquestions`, `texte`, `bonne`) VALUES
-- 1
(1, 'il mangez', 0),
(1, 'il mangait', 0),
(1, 'il mangeait', 1),
(1, 'il a mangé', 0),
-- 2
(2, 'Belle', 1),
(2, 'Bel', 0),
(2, 'Beau', 0),
(2, 'Belles', 0),
-- 3
(3, '6', 0),
(3, '7', 1),
(3, '8', 0),
(3, '9', 0),
-- 4
(4, 'Les liaisons dangereuses', 0),
(4, 'Le rouge et le noir', 0),
(4, 'Les misérables', 1),
(4, "l'étranger", 0),
-- 5
(5, '11', 0),
(5, '13', 0),
(5, '12', 1),
(5, '14', 0),
-- 6
(6, 'Que nous nous apitoyassion', 0),
(6, 'Que nous nous apitoissons', 0),
(6, 'Que nous nous apitoyassions', 1),
(6, 'Que nous nous apitoiyons', 0),
-- 7
(7, '142', 0),
(7, '144', 1),
(7, '121', 0),
(7, '124', 0),
-- 8
(8, '16', 0),
(8, '13', 1),
(8, '19', 0),
(8, '11', 0),
-- 9
(9, 'X = 0.5', 1),
(9, 'X = 1', 0),
(9, 'X = 1.5', 0),
(9, 'X = 2', 0),
-- 10
(10, '40', 0),
(10, '20', 0),
(10, '15', 1),
(10, '25', 0),
-- 11
(11, 'n * 180', 0),
(11, 'n * 360 ', 0),
(11, "(n + 180) * n", 0),
(11, '(n - 2) * 180', 1),
-- 12
(12, '(x + 3)(2x - 3)', 0),
(12, '(x - 3)(2x - 3)', 1),
(12, '(2x - 3)(2x + 3)', 0),
(12, '(x + 3)(2x + 3)', 0),
-- 13
(13, 'Present perfect', 0),
(13, 'Present simple', 1),
(13, 'Present continious', 0),
(13, "Il n'y a pas de présent en Anglais", 0),
-- 14
(14, 'I', 0),
(14, 'You', 0),
(14, 'We', 0),
(14, 'He/She/It', 1),
-- 15
(15, 'To work', 0),
(15, 'To plan', 0),
(15, 'To break', 1),
(15, 'To walk', 0),
-- 16
(16, 'I were talking', 0),
(16, 'We have matching', 0),
(16, 'She was reading', 1),
(16, 'You had worked', 0),
-- 17
(17, 'eat / ate / eaten', 1),
(17, 'eat / eat / eaten', 0),
(17, 'eat / eat / aten', 0),
(17, 'eat / eated / eaten', 0),
-- 18
(18, "I havn't eaten anything today.", 1),
(18, "I didn't eaten anything today.", 0),
(18, "I did not eat anything.", 0),
(18, "I have not eat anything today.", 0),
-- 19
(19, 'Changer', 0),
(19, 'Bouger', 0),
(19, 'Slider', 0),
(19, 'Être', 1),
-- 20
(20, '1ère position', 0),
(20, '2ème position', 1),
(20, '3ème position', 0),
(20, 'Cela dépends du contexte de la phrase', 0),
-- 21
(21, 'Wenn du ein Eis isst, darfst du keinen Kuchen mehr essen.', 1),
(21, 'Wenn du isst ein Eis, darfst du keinen Kuchen mehr essen.', 0),
(21, 'Wenn du ein eis isst, darfst du keinen kuchen mehr essen.', 0),
(21, 'Wenn du ein Eis isst, darfst du keinen Kuchen mehr isst.', 0),
-- 22
(22, "Masculin (der)", 0),
(22, "Féminin (die)", 1),
(22, "Neutre (das)", 0),
(22, "Aucun", 0),
-- 23
(23, "Un des verbes n'est pas bien conjugué.", 0),
(23, "Le mot Apfel est neutre (das).", 0),
(23, "Le mot dem n'a pas la bonne terminaison", 1),
(23, 'Les virgules ne sont pas bien placés.', 0),
-- 24
(24, 'Sollen', 0),
(24, 'Schreiben', 0),
(24, 'Wollen', 0),
(24, 'Lieben', 1),
-- 25
(25, '1899-1901', 0),
(25, '1956-1961', 0),
(25, '1918-1921', 0),
(25, '1914-1918', 1),
-- 26
(26, 'La Chine et les USA', 0),
(26, 'La Russie et la Chine', 0),
(26, 'Le Vietnam et le Japon', 0),
(26, "L'URSS et les USA", 1),
-- 27
(27, 'Le Roi Soleil', 1),
(27, 'Le massacreur', 0),
(27, 'Le démocrate', 0),
(27, 'Le Roi de la gastronomie', 0),
-- 28
(28, 'Canada', 0),
(28, 'Nigéria', 0),
(28, 'Ouganda', 0),
(28, 'USA', 1),
-- 29
(29, '19 juin 1941', 0),
(29, '18 juin 1940', 1),
(29, '17 juillet 1944', 0),
(29, '18 juillet 1940', 0),
-- 30
(30, "L'Iran contre une coalition dirigée par les USA", 0),
(30, "L'Iran contre l'Irak", 0),
(30, "Les USA contre l'Afghanistan", 0),
(30, "L'Irak contre une coalition dirigée par les USA", 1),
-- 31
(31, "Le Franc canadien", 0),
(31, "Le Dollar canadien", 1),
(31, "Le pesos canadien", 0),
(31, "L'Euro", 0),
-- 32
(32, "Emmanuel Macron", 0),
(32, "Kylian Mbappe", 0),
(32, "Bernard Arnaud", 1),
(32, "Squeezie", 0),
-- 33
(33, "La banque nationale", 0),
(33, "Le conseil fédéral", 0),
(33, "Swissmint", 1),
(33, "Une entreprise privée", 0),
-- 34
(34, "Les ménages, les banques, les entreprises, l'armée", 0),
(34, "Les ménages, le gouvernement, les entreprises, les banques", 1),
(34, "Les ménages, les entreprises, les exports et les imports", 0),
(34, "Les entreprises, les exports, les imports, le gouvernement", 0),
-- 35
(35, "5.6 mia", 0),
(35, "5.7 mia", 0),
(35, "5.8 mia", 1),
(35, "5.9 mia", 0),
-- 36
(36, "2006", 0),
(36, "2007", 0),
(36, "2008", 1),
(36, "2009", 0),
-- 37
(37, "Le procureur", 0),
(37, "Le jury", 0),
(37, "Le juge", 1),
(37, "L'avocat", 0),
-- 38
(38, "Un humain", 0),
(38, "Une entreprise", 1),
(38, "Un psychologue", 0),
(38, "Un ami imaginaire", 0),
-- 39
(39, '1', 0),
(39, '2', 0),
(39, '3', 1),
(39, '4', 0),
-- 40
(40, 'Le conseil fédéral', 0),
(40, 'Le peuple', 0),
(40, 'Les juges précédents', 0),
(40, "L'assemblée fédérale", 1),
-- 41
(41, 'Oui mais seulement avant 18 ans', 0),
(41, "Non c'est illégal", 0),
(41, 'Seulement entre hétero', 0),
(41, 'Oui sans problème', 1),
-- 42
(42, 'Thémis', 1),
(42, 'Athena', 0),
(42, 'Aphrodite', 0),
(42, 'Héra', 0),
-- 43
(43, 'Isaac Newton', 0),
(43, 'Albert Einstein', 1),
(43, 'Pythagore', 0),
(43, 'Galilée', 0),
-- 44
(44, 'La plume', 0),
(44, "L'enclume", 0),
(44, 'En même temps', 1),
(44, "Dans le vide, la gravité n'agit pas", 0),
-- 45
(45, '9.71', 0),
(45, '9.81', 1),
(45, '9.91', 0),
(45, '9.18', 0),
-- 46
(46, '10000', 0),
(46, '1000', 1),
(46, '9785', 0),
(46, '2563', 0),
-- 47
(47, '4189', 0),
(47, '4156', 0),
(47, '4187', 1),
(47, '4123', 0),
-- 48
(48, "La longueur d'un pendule simple de 1kg ayant une période de 1 seconde.", 0),
(48, "La distance moyenne entre la Terre et le Soleil divisé par 150 milliard.", 0),
(48, "La longueur d'un arc méridien correspondant à un dix millionième de la distance entre l'équateur et le pôle Nord.", 0),
(48, "La distance parcourue par la lumière dans le vide en 1/299 792 458 de seconde.", 1),

-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Metier
-- Informatique
(49, "Un système de nombre en base 2", 1),
(49, "Un logiciel utilisé pour le code", 0),
(49, "Une graduation utilisé pour évaluer un progrès", 0),
(49, "Une manière de compter", 0),

(50, "Un ordinateur super puissant", 0),
(50, "Un ordinateur virtuel dans un autre ordinateur", 0),
(50, "Un ordinateur qui utilise la physique quantique", 1),
(50, "Un truc compliqué", 0),

(51, "Linus Torvalds", 1),
(51, "Steve Jobs", 0),
(51, "Bill Gates", 0),
(51, "Lee Byung-Chui", 0),

(52, "Windows", 0),
(52, "Microsoft Office", 0),
(52, "Windows Defender", 0),
(52, "Le BIOS", 1),

(53, "133 143 986 176 bits", 1),
(53, "1 024 bits", 0),
(53, "1 048 576 bits", 0),
(53, "1 073 741 824 bits", 0),

(54, "Steve Jobs", 0),
(54, "Bill Gates", 0),
(54, "Lee Byung-Chui", 0),
(54, "Linus Torvalds", 1),
-- Mécanique
(55, "1cm", 0),
(55, "1 micro-ondes", 0),
(55, "1hz", 0),
(55, "1μm", 1),

(56, "Remote controlled Machine", 0),
(56, "RCM", 0),
(56, "MCN", 0),
(56, "CNC", 1),

(57, "Un tour", 1),
(57, "Une hélice", 0),
(57, "Une vis", 0),
(57, "Un cylindreur", 0),

(58, "Acier", 0),
(58, "Aluminium", 0),
(58, "Laiton", 0),
(58, "Plomb", 1),

(59, "Plurituraféroide éxpansé", 0),
(59, "Polytetrafluoroéthylène", 1),
(59, "Paladium rafiné", 0),
(59, "Plastique limer", 0),

(60, "Uranium grandement valorisé", 0),
(60, "Usinage grande vitesse", 1),
(60, "Usage géré vigoureusement", 0),
(60, "Usure généralement variable", 0),

-- Automation
(61, "Appareil de levage à vis (piston)", 1),
(61, "Une voiture", 0),
(61, "Une perceuse", 0),
(61, "Un récipient", 0),

(62, "230V", 1),
(62, "220V", 0),
(62, "10V", 0),
(62, "160V", 0),

(63, "10VAC", 0),
(63, "25VAC", 0),
(63, "35VAC", 0),
(63, "50VAC", 1),

(64, "Une spirale qui génère de l'électricité via un champ magnétique", 0),
(64, "Un moteur", 0),
(64, "Un phénomène de champ magnétique en forme de C", 0),
(64, "Une batterie de tension", 1),

(65, "R = I/U", 0),
(65, "U = R*I", 1),
(65, "R = P/U", 0),
(65, "I = R*U", 0),

(66, "La lumière ambiante", 0),
(66, "La pression atmosphérique", 0),
(66, "La condensation de l'eau", 1),
(66, "La gravité", 0),

-- Electronique
(67, "De la lumière", 0),
(67, "Des atomes d'uranium qui transitent", 0),
(67, "Des électrons qui transitent", 1),
(67, "Un liquide qui coule dans les prise", 0),

(68, "Courant allumé et éteint", 0),
(68, "Courant alternatif et continu", 1),
(68, "Courant propre et sale", 0),
(68, "Courant fort et faible", 0),

(69, "C#", 0),
(69, "Javascript", 0),
(69, "Python", 0),
(69, "C", 1),

(70, "Néon", 0),
(70, "A incandescence", 0),
(70, "Halogène", 0),
(70, "LED ", 1),

(71, "Alessendro Volta", 1),
(71, "Thomas Edison", 0),
(71, "Nicolus Teslas", 0),
(71, "Elon Musk", 0),

(72, "60Hz", 0),
(72, "240Hz", 0),
(72, "50Hz", 1),
(72, "144Hz", 0),

-- Dessin technique
(73, "La désignation technique d'un côté", 0),
(73, "Une dimension d'une pièce", 1),
(73, "Un os dans le corps", 0),
(73, "Une droite", 0),

(74, "Un art abstrait sans aucune règle", 0),
(74, "Un moyen de communication graphique pour représenter des objets", 1),
(74, "Un style de peinture utilisé en architecture", 0),
(74, "Un type de photographie", 0),

(75, "La vue la plus représentative sur un plan", 1),
(75, "La vue la plus grande", 0),
(75, "La vue de devant", 0),
(75, "La vue la plus simple à dessiner", 0),

(76, "La valeur réelle d'une pièce", 0),
(76, "L'épaisseur de la pièce de 3,2", 0),
(76, "La rugosité de la surface de 3,2", 1),
(76, "Rapport algébrique", 0),

(77, "Le truc d'encre qu'on met dans une imprimante", 0),
(77, "L'endroit ou se trouve toute les informations pour une pièce", 1),
(77, "La zone prévu seulement à l'écriture du nom de l'auteur du dessin", 0),
(77, "Le truc pour tailler les outils", 0),

(78, "ISO 9001", 0),
(78, "ISO 1101", 1),
(78, "ISO 14001", 0),
(78, "ISO 15001", 0)
;
