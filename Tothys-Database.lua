
-- This is the full database of tips.

local _, addon = ...;

addon.contentCatalog = addon.contentCatalog or {
	classic = {
		order = 1,
		name = {
			enUS = "Classic",
			deDE = "Classic",
		},
		instances = {},
	},
	tbc = {
		order = 2,
		name = {
			enUS = "The Burning Crusade",
			deDE = "The Burning Crusade",
		},
		instances = {
			hellfire_ramparts = {
				order = 1,
				type = "Dungeon",
				mapIDs = {347},
				name = {
					enUS = "Hellfire Ramparts",
					deDE = "Hellfire Ramparts",
				},
				npcNames = {
					[17259] = { enUS = "Bonechewer Hungerer" },
					[17264] = { enUS = "Bonechewer Ravener" },
					[17269] = { enUS = "Bleeding Hollow Darkcaster" },
					[17270] = { enUS = "Bleeding Hollow Archer" },
					[17271] = { enUS = "Bonechewer Destroyer" },
					[17280] = { enUS = "Shattered Hand Warhound" },
					[17281] = { enUS = "Bonechewer Ripper" },
					[17306] = { enUS = "Watchkeeper Gargolmar" },
					[17308] = { enUS = "Omor the Unscarred" },
					[17309] = { enUS = "Hellfire Watcher" },
					[17455] = { enUS = "Bonechewer Beastmaster" },
					[17478] = { enUS = "Bleeding Hollow Scryer" },
					[17517] = { enUS = "Hellfire Sentry" },
					[17536] = { enUS = "Nazan" },
					[17537] = { enUS = "Vazruden" },
					[17540] = { enUS = "Fiendish Hound" },
				},
				npcIDs = {
					17259, 17264, 17269, 17270, 17271, 17280, 17281,
					17306, 17308, 17309, 17455, 17478, 17517, 17536, 17537, 17540,
				},
			},
			blood_furnace = {
				order = 2,
				type = "Dungeon",
				mapIDs = {261},
				name = {
					enUS = "The Blood Furnace",
					deDE = "The Blood Furnace",
				},
				npcNames = {
					[17370] = { enUS = "Laughing Skull Enforcer" },
					[17371] = { enUS = "Shadowmoon Warlock" },
					[17377] = { enUS = "Keli'dan the Breaker" },
					[17380] = { enUS = "Broggok" },
					[17381] = { enUS = "The Maker" },
					[17395] = { enUS = "Shadowmoon Summoner" },
					[17397] = { enUS = "Shadowmoon Adept" },
					[17398] = { enUS = "Nascent Fel Orc" },
					[17399] = { enUS = "Seductress" },
					[17400] = { enUS = "Felguard Annihilator" },
					[17401] = { enUS = "Felhound Manastalker" },
					[17414] = { enUS = "Shadowmoon Technician" },
					[17429] = { enUS = "Fel Orc Neophyte" },
					[17477] = { enUS = "Hellfire Imp" },
					[17491] = { enUS = "Laughing Skull Rogue" },
					[17624] = { enUS = "Laughing Skull Warden" },
					[17626] = { enUS = "Laughing Skull Legionnaire" },
					[17653] = { enUS = "Shadowmoon Channeler" },
					[18894] = { enUS = "Felguard Brute" },
					[19016] = { enUS = "Hellfire Familiar" },
				},
				npcIDs = {
					17370, 17371, 17377, 17380, 17381, 17395, 17397, 17398, 17399, 17400,
					17401, 17414, 17429, 17477, 17491, 17624, 17626, 17653, 18894, 19016,
				},
			},
			auchenai_crypts = {
				order = 3,
				type = "Dungeon",
				mapIDs = {256, 257},
				name = {
					enUS = "Auchenai Crypts",
					deDE = "Auchenaikrypta",
				},
				npcNames = {
					[18371] = { enUS = "Shirrak the Dead Watcher" },
					[18373] = { enUS = "Exarch Maladaar" },
					[18441] = { enUS = "Stolen Soul" },
					[18478] = { enUS = "Avatar of the Martyred" },
					[18493] = { enUS = "Auchenai Soulpriest" },
					[18495] = { enUS = "Auchenai Vindicator" },
					[18497] = { enUS = "Auchenai Monk" },
					[18498] = { enUS = "Unliving Soldier" },
					[18499] = { enUS = "Unliving Sorcerer" },
					[18500] = { enUS = "Unliving Cleric" },
					[18501] = { enUS = "Unliving Stalker" },
					[18503] = { enUS = "Phantasmal Possessor" },
					[18506] = { enUS = "Raging Soul" },
					[18521] = { enUS = "Raging Skeleton" },
					[18524] = { enUS = "Angered Skeleton" },
					[18556] = { enUS = "Phasing Soldier" },
					[18557] = { enUS = "Phasing Cleric" },
					[18558] = { enUS = "Phasing Sorcerer" },
					[18559] = { enUS = "Phasing Stalker" },
					[18700] = { enUS = "Reanimated Bones" },
					[18702] = { enUS = "Auchenai Necromancer" },
				},
				npcIDs = {
					18371, -- Shirrak the Dead Watcher
					18373, -- Exarch Maladaar
					18441, -- Stolen Soul
					18478, -- Avatar of the Martyred
					18493, -- Auchenai Soulpriest
					18495, -- Auchenai Vindicator
					18497, -- Auchenai Monk
					18498, -- Unliving Soldier
					18499, -- Unliving Sorcerer
					18500, -- Unliving Cleric
					18501, -- Unliving Stalker
					18503, -- Phantasmal Possessor
					18506, -- Raging Soul
					18521, -- Raging Skeleton
					18524, -- Angered Skeleton
					18556, -- Phasing Soldier
					18557, -- Phasing Cleric
					18558, -- Phasing Sorcerer
					18559, -- Phasing Stalker
					18700, -- Reanimated Bones
					18702, -- Auchenai Necromancer
				},
			},
			sethekk_halls = {
				order = 4,
				type = "Dungeon",
				mapIDs = {258, 259},
				name = {
					enUS = "Sethekk Halls",
					deDE = "Sethekk Halls",
				},
				npcNames = {
					[18318] = { enUS = "Sethekk Initiate" },
					[18319] = { enUS = "Time-Lost Scryer" },
					[18320] = { enUS = "Time-Lost Shadowmage" },
					[18321] = { enUS = "Sethekk Talon Lord" },
					[18322] = { enUS = "Sethekk Ravenguard" },
					[18323] = { enUS = "Sethekk Guard" },
					[18325] = { enUS = "Sethekk Prophet" },
					[18326] = { enUS = "Sethekk Shaman" },
					[18327] = { enUS = "Time-Lost Controller" },
					[18328] = { enUS = "Sethekk Oracle" },
					[18472] = { enUS = "Darkweaver Syth" },
					[18473] = { enUS = "Talon King Ikiss" },
					[18701] = { enUS = "Dark Vortex" },
					[19203] = { enUS = "Syth Fire Elemental" },
					[19204] = { enUS = "Syth Frost Elemental" },
					[19205] = { enUS = "Syth Arcane Elemental" },
					[19206] = { enUS = "Syth Shadow Elemental" },
					[19428] = { enUS = "Cobalt Serpent" },
					[19429] = { enUS = "Avian Darkhawk" },
					[20343] = { enUS = "Charming Totem" },
					[21891] = { enUS = "Avian Ripper" },
					[21904] = { enUS = "Avian Warhawk" },
					[23035] = { enUS = "Anzu" },
					[23132] = { enUS = "Brood of Anzu" },
				},
				npcIDs = {
					18318, 18319, 18320, 18321, 18322, 18323, 18325, 18326, 18327, 18328,
					18472, 18473, 18701, 19203, 19204, 19205, 19206, 19428, 19429, 20343,
					21891, 21904, 23035, 23132,
				},
			},
			shadow_labyrinth = {
				order = 5,
				type = "Dungeon",
				mapIDs = {260},
				name = {
					enUS = "Shadow Labyrinth",
					deDE = "Shadow Labyrinth",
				},
				npcNames = {
					[18631] = { enUS = "Cabal Cultist" },
					[18632] = { enUS = "Cabal Executioner" },
					[18633] = { enUS = "Cabal Acolyte" },
					[18634] = { enUS = "Cabal Summoner" },
					[18635] = { enUS = "Cabal Deathsworn" },
					[18636] = { enUS = "Cabal Assassin" },
					[18637] = { enUS = "Cabal Shadow Priest" },
					[18638] = { enUS = "Cabal Zealot" },
					[18639] = { enUS = "Cabal Spellbinder" },
					[18640] = { enUS = "Cabal Warlock" },
					[18641] = { enUS = "Cabal Familiar" },
					[18642] = { enUS = "Maiden of Discipline" },
					[18663] = { enUS = "Maiden of Discipline" },
					[18667] = { enUS = "Blackheart the Inciter" },
					[18708] = { enUS = "Murmur" },
					[18731] = { enUS = "Ambassador Hellmaw" },
					[18732] = { enUS = "Grandmaster Vorpil" },
					[18794] = { enUS = "Cabal Ritualist" },
					[18796] = { enUS = "Fel Overseer" },
					[18797] = { enUS = "Tortured Skeleton" },
					[18830] = { enUS = "Cabal Fanatic" },
					[18848] = { enUS = "Malicious Instructor" },
					[19208] = { enUS = "Summoned Cabal Acolyte" },
					[19209] = { enUS = "Summoned Cabal Deathsworn" },
					[19226] = { enUS = "Void Traveler" },
					[22890] = { enUS = "First Fragment Guardian" },
				},
				npcIDs = {
					18731, 18667, 18732, 18708, 19226, 18631, 18632, 18633, 18634, 18635,
					18636, 18637, 18638, 18639, 18640, 18641, 18642, 18663, 18794, 18796,
					18797, 18830, 18848, 19208, 19209, 22890,
				},
			},
			karazhan = {
				order = 6,
				type = "Raid",
				mapIDs = {350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366},
				name = {
					enUS = "Karazhan",
					deDE = "Karazhan",
				},
				npcNames = {
					[15687] = { enUS = "Moroes" },
					[15688] = { enUS = "Terestian Illhoof" },
					[15691] = { enUS = "The Curator" },
					[16151] = { enUS = "Midnight" },
					[16152] = { enUS = "Attumen the Huntsman" },
					[16457] = { enUS = "Maiden of Virtue" },
					[16812] = { enUS = "Barnes" },
				},
				npcIDs = {
					15687, 15688, 15691, 16151, 16152, 16457, 16812,
				},
			},
			gruuls_lair = {
				order = 7,
				type = "Raid",
				name = {
					enUS = "Gruul's Lair",
					deDE = "Gruul's Lair",
				},
				npcNames = {
					[18831] = { enUS = "High King Maulgar" },
					[18832] = { enUS = "Krosh Firehand" },
					[18834] = { enUS = "Olm the Summoner" },
					[18835] = { enUS = "Kiggler the Crazed" },
					[18836] = { enUS = "Blindeye the Seer" },
					[18847] = { enUS = "Wild Fel Stalker" },
					[19044] = { enUS = "Gruul the Dragonkiller" },
					[19389] = { enUS = "Lair Brute" },
					[21350] = { enUS = "Gronn-Priest" },
				},
				npcIDs = {
					18831, 18832, 18834, 18835, 18836, 18847, 19044, 19389, 21350,
				},
			},
			magtheridons_lair = {
				order = 8,
				type = "Raid",
				name = {
					enUS = "Magtheridon's Lair",
					deDE = "Magtheridon's Lair",
				},
				npcNames = {
					[17256] = { enUS = "Hellfire Channeler" },
					[17257] = { enUS = "Magtheridon" },
					[17454] = { enUS = "Burning Abyssal" },
					[18829] = { enUS = "Hellfire Warder" },
				},
				npcIDs = {
					17256, 17257, 17454, 18829,
				},
			},
			zulaman = {
				order = 9,
				type = "Raid",
				name = {
					enUS = "Zul'Aman",
					deDE = "Zul'Aman",
				},
				npcNames = {
					[23542] = { enUS = "Amani'shi Axe Thrower" },
					[23574] = { enUS = "Akil'zon" },
					[23576] = { enUS = "Nalorakk" },
					[23577] = { enUS = "Halazzi" },
					[23578] = { enUS = "Jan'alai" },
					[23580] = { enUS = "Amani'shi Warbringer" },
					[23581] = { enUS = "Amani'shi Medicine Man" },
					[23582] = { enUS = "Amani'shi Tribesman" },
					[23584] = { enUS = "Amani Bear" },
					[23586] = { enUS = "Amani'shi Scout" },
					[23596] = { enUS = "Amani'shi Flame Caster" },
					[23597] = { enUS = "Amani'shi Guardian" },
					[23774] = { enUS = "Amani'shi Trainer" },
					[23834] = { enUS = "Amani Dragonhawk" },
					[23863] = { enUS = "Zul'jin" },
					[23889] = { enUS = "Amani'shi Savage" },
					[24043] = { enUS = "Amani Lynx" },
					[24047] = { enUS = "Amani Crocolisk" },
					[24059] = { enUS = "Amani'shi Beast Tamer" },
					[24064] = { enUS = "Amani Lynx Cub" },
					[24065] = { enUS = "Amani'shi Handler" },
					[24138] = { enUS = "Tamed Amani Crocolisk" },
					[24175] = { enUS = "Amani'shi Lookout" },
					[24179] = { enUS = "Amani'shi Wind Walker" },
					[24180] = { enUS = "Amani'shi Protector" },
					[24217] = { enUS = "Amani Bear Mount" },
					[24239] = { enUS = "Hex Lord Malacrass" },
					[24374] = { enUS = "Amani'shi Berserker" },
					[24530] = { enUS = "Amani Elder Lynx" },
					[24549] = { enUS = "Amani'shi Tempest" },
				},
				npcIDs = {
					23542, 23574, 23576, 23577, 23578, 23580, 23581, 23582, 23584, 23586,
					23596, 23597, 23774, 23834, 23863, 23889, 24043, 24047, 24059, 24064,
					24065, 24138, 24175, 24179, 24180, 24217, 24239, 24374, 24530, 24549,
				},
			},
			shattered_halls = {
				order = 10,
				type = "Dungeon",
				mapIDs = {246},
				name = {
					enUS = "The Shattered Halls",
					deDE = "The Shattered Halls",
				},
				npcNames = {
					[16507] = { enUS = "Shattered Hand Sentry" },
					[16523] = { enUS = "Shattered Hand Savage" },
					[16593] = { enUS = "Shattered Hand Brawler" },
					[16594] = { enUS = "Shadowmoon Acolyte" },
					[16699] = { enUS = "Shattered Hand Reaver" },
					[16700] = { enUS = "Shattered Hand Legionnaire" },
					[16704] = { enUS = "Shattered Hand Sharpshooter" },
					[16807] = { enUS = "Grand Warlock Nethekurse" },
					[16808] = { enUS = "Warchief Kargath Bladefist" },
					[16809] = { enUS = "Warbringer O'mrogg" },
					[17083] = { enUS = "Fel Orc Convert" },
					[17301] = { enUS = "Shattered Hand Executioner" },
					[17356] = { enUS = "Creeping Ooze" },
					[17357] = { enUS = "Creeping Oozeling" },
					[17420] = { enUS = "Shattered Hand Heathen" },
					[17427] = { enUS = "Shattered Hand Archer" },
					[17461] = { enUS = "Shattered Hand Blood Guard" },
					[17462] = { enUS = "Shattered Hand Zealot" },
					[17464] = { enUS = "Shattered Hand Gladiator" },
					[17465] = { enUS = "Shattered Hand Centurion" },
					[17578] = { enUS = "Hellfire Training Dummy" },
					[17621] = { enUS = "Heathen Guard" },
					[17622] = { enUS = "Sharpshooter Guard" },
					[17623] = { enUS = "Reaver Guard" },
					[17669] = { enUS = "Rabid Warhound" },
					[17670] = { enUS = "Shattered Hand Houndmaster" },
					[17671] = { enUS = "Shattered Hand Champion" },
					[17693] = { enUS = "Shattered Hand Scout" },
					[17694] = { enUS = "Shadowmoon Darkcaster" },
					[17695] = { enUS = "Shattered Hand Assassin" },
					[20923] = { enUS = "Blood Guard Porung" },
				},
				npcIDs = {
					16807, 20923, 16809, 16808, 17621, 17622, 17623, 16507, 16523, 16593,
					16594, 16699, 16700, 16704, 17083, 17301, 17356, 17357, 17420, 17427,
					17461, 17462, 17464, 17465, 17578, 17669, 17670, 17671, 17693, 17694,
					17695,
				},
			},
			slave_pens = {
				order = 11,
				type = "Dungeon",
				mapIDs = {265},
				name = {
					enUS = "The Slave Pens",
					deDE = "The Slave Pens",
				},
				npcNames = {
					[17816] = { enUS = "Bogstrok" },
					[17817] = { enUS = "Greater Bogstrok" },
					[17893] = { enUS = "Naturalist Bite" },
					[17938] = { enUS = "Coilfang Observer" },
					[17940] = { enUS = "Coilfang Technician" },
					[17941] = { enUS = "Mennu the Betrayer" },
					[17942] = { enUS = "Quagmirran" },
					[17957] = { enUS = "Coilfang Champion" },
					[17958] = { enUS = "Coilfang Defender" },
					[17959] = { enUS = "Coilfang Slavehandler" },
					[17960] = { enUS = "Coilfang Soothsayer" },
					[17961] = { enUS = "Coilfang Enchantress" },
					[17962] = { enUS = "Coilfang Collaborator" },
					[17963] = { enUS = "Wastewalker Slave" },
					[17964] = { enUS = "Wastewalker Worker" },
					[17991] = { enUS = "Rokmar the Crackler" },
					[18176] = { enUS = "Tainted Earthgrab Totem" },
					[18177] = { enUS = "Tainted Stoneskin Totem" },
					[18179] = { enUS = "Corrupted Nova Totem" },
					[20208] = { enUS = "Mennu's Healing Ward" },
					[21126] = { enUS = "Coilfang Scale-Healer" },
					[21127] = { enUS = "Coilfang Tempest" },
					[21128] = { enUS = "Coilfang Ray" },
				},
				npcIDs = {
					17893, 17941, 17991, 17942, 18176, 18177, 18179, 20208, 17816, 17817,
					17938, 17940, 17957, 17958, 17959, 17960, 17961, 17962, 17963, 17964,
					21126, 21127, 21128,
				},
			},
			underbog = {
				order = 12,
				type = "Dungeon",
				mapIDs = {262},
				name = {
					enUS = "The Underbog",
					deDE = "The Underbog",
				},
				npcNames = {
					[17723] = { enUS = "Bog Giant" },
					[17724] = { enUS = "Underbat" },
					[17725] = { enUS = "Underbog Lurker" },
					[17726] = { enUS = "Wrathfin Myrmidon" },
					[17727] = { enUS = "Wrathfin Sentry" },
					[17728] = { enUS = "Murkblood Tribesman" },
					[17729] = { enUS = "Murkblood Spearman" },
					[17730] = { enUS = "Murkblood Healer" },
					[17731] = { enUS = "Fen Ray" },
					[17732] = { enUS = "Lykul Wasp" },
					[17734] = { enUS = "Underbog Lord" },
					[17735] = { enUS = "Wrathfin Warrior" },
					[17770] = { enUS = "Hungarfen" },
					[17771] = { enUS = "Murkblood Oracle" },
					[17826] = { enUS = "Swamplord Musel'ek" },
					[17827] = { enUS = "Claw" },
					[17871] = { enUS = "Underbog Shambler" },
					[17882] = { enUS = "The Black Stalker" },
					[17990] = { enUS = "Underbog Mushroom" },
					[18105] = { enUS = "Ghaz'an" },
					[18107] = { enUS = "Overseer Tidewrath" },
					[19632] = { enUS = "Lykul Stinger" },
					[20465] = { enUS = "Underbog Frenzy" },
					[22299] = { enUS = "Spore Strider" },
				},
				npcIDs = {
					17770, 18105, 17826, 17827, 17882, 18107, 22299, 17723, 17724, 17725,
					17726, 17727, 17728, 17729, 17730, 17731, 17732, 17734, 17735, 17771,
					17871, 17990, 19632, 20465,
				},
			},
			steamvaults = {
				order = 13,
				type = "Dungeon",
				mapIDs = {263, 264},
				name = {
					enUS = "The Steamvault",
					deDE = "The Steamvault",
				},
				npcNames = {
					[17721] = { enUS = "Coilfang Engineer" },
					[17722] = { enUS = "Coilfang Sorceress" },
					[17796] = { enUS = "Mekgineer Steamrigger" },
					[17797] = { enUS = "Hydromancer Thespia" },
					[17798] = { enUS = "Warlord Kalithresh" },
					[17799] = { enUS = "Warlord Kalithresh's Naga Distiller" },
					[17800] = { enUS = "Coilfang Myrmidon" },
					[17801] = { enUS = "Coilfang Siren" },
					[17802] = { enUS = "Coilfang Warrior" },
					[17803] = { enUS = "Coilfang Oracle" },
					[17805] = { enUS = "Coilfang Slavemaster" },
					[17917] = { enUS = "Coilfang Water Elemental" },
					[17951] = { enUS = "Steamrigger Mechanic" },
					[17954] = { enUS = "Warlord Kalithresh" },
					[21338] = { enUS = "Coilfang Leper" },
					[21694] = { enUS = "Bog Overlord" },
					[21695] = { enUS = "Tidal Surger" },
					[21696] = { enUS = "Steam Surger" },
					[22891] = { enUS = "Second Fragment Guardian" },
				},
				npcIDs = {
					17797, 17796, 17798, 17917, 17951, 17954, 17721, 17722, 17800, 17801,
					17802, 17803, 17805, 17799, 21338, 21694, 21695, 21696, 22891,
				},
			},
			mana_tombs = {
				order = 14,
				type = "Dungeon",
				mapIDs = {272},
				name = {
					enUS = "Mana-Tombs",
					deDE = "Mana-Tombs",
				},
				npcNames = {
					[18309] = { enUS = "Ethereal Scavenger" },
					[18311] = { enUS = "Ethereal Crypt Raider" },
					[18312] = { enUS = "Ethereal Spellbinder" },
					[18313] = { enUS = "Ethereal Sorcerer" },
					[18314] = { enUS = "Nexus Stalker" },
					[18315] = { enUS = "Ethereal Theurgist" },
					[18317] = { enUS = "Ethereal Priest" },
					[18331] = { enUS = "Ethereal Darkcaster" },
					[18341] = { enUS = "Pandemonius" },
					[18343] = { enUS = "Tavarok" },
					[18344] = { enUS = "Nexus-Prince Shaffar" },
					[18394] = { enUS = "Ethereal Wraith" },
					[18429] = { enUS = "Arcane Fiend" },
					[18430] = { enUS = "Ethereal Apprentice" },
					[18431] = { enUS = "Ethereal Beacon" },
					[19306] = { enUS = "Mana Leech" },
					[19307] = { enUS = "Nexus Terror" },
					[22930] = { enUS = "Yor" },
				},
				npcIDs = {
					18341, 18343, 18344, 22930, 18431, 18430, 18309, 18311, 18312, 18313,
					18314, 18315, 18317, 18331, 18394, 18429, 19306, 19307,
				},
			},
			old_hillsbrad = {
				order = 15,
				type = "Dungeon",
				mapIDs = {274},
				name = {
					enUS = "Old Hillsbrad Foothills",
					deDE = "Old Hillsbrad Foothills",
				},
				npcNames = {
					[17814] = { enUS = "Lordaeron Watchman" },
					[17815] = { enUS = "Lordaeron Sentry" },
					[17819] = { enUS = "Durnholde Sentry" },
					[17820] = { enUS = "Durnholde Rifleman" },
					[17833] = { enUS = "Durnholde Warden" },
					[17840] = { enUS = "Durnholde Tracking Hound" },
					[17846] = { enUS = "Pit Spectator" },
					[17848] = { enUS = "Lieutenant Drake" },
					[17860] = { enUS = "Durnholde Veteran" },
					[17862] = { enUS = "Captain Skarloc" },
					[18092] = { enUS = "Tarren Mill Guardsman" },
					[18093] = { enUS = "Tarren Mill Protector" },
					[18094] = { enUS = "Tarren Mill Lookout" },
					[18096] = { enUS = "Epoch Hunter" },
					[18170] = { enUS = "Infinite Slayer" },
					[18171] = { enUS = "Infinite Defiler" },
					[18172] = { enUS = "Infinite Saboteur" },
					[18673] = { enUS = "Pit Announcer" },
					[18725] = { enUS = "Brazen" },
					[18764] = { enUS = "Durnholde Armorer" },
					[18765] = { enUS = "Durnholde Cook" },
					[18786] = { enUS = "Thrall" },
					[18934] = { enUS = "Durnholde Mage" },
					[26650] = { enUS = "Durnholde Captain" },
					[28132] = { enUS = "Don Carlos" },
					[28163] = { enUS = "Guerrero" },
				},
				npcIDs = {
					17848, 17862, 18096, 18725, 18786, 17814, 17815, 17819, 17820, 17833,
					17840, 17846, 17860, 18092, 18093, 18094, 18170, 18171, 18172, 18673,
					18764, 18765, 18934, 26650, 28132, 28163,
				},
			},
			black_morass = {
				order = 16,
				type = "Dungeon",
				mapIDs = {173, 733},
				name = {
					enUS = "The Black Morass",
					deDE = "The Black Morass",
				},
				npcNames = {
					[15608] = { enUS = "Medivh" },
					[17023] = { enUS = "Shadow Council Enforcer" },
					[17835] = { enUS = "Infinite Assassin" },
					[17839] = { enUS = "Rift Lord" },
					[17879] = { enUS = "Chrono Lord Deja" },
					[17880] = { enUS = "Temporus" },
					[17881] = { enUS = "Aeonus" },
					[17892] = { enUS = "Infinite Chronomancer" },
					[17918] = { enUS = "Time Keeper" },
					[17952] = { enUS = "Darkwater Crocolisk" },
					[18982] = { enUS = "Sable Jaguar" },
					[18983] = { enUS = "Blackfang Tarantula" },
					[18994] = { enUS = "Infinite Executioner" },
					[18995] = { enUS = "Infinite Vanquisher" },
					[20201] = { enUS = "Sa'at" },
					[21104] = { enUS = "Rift Keeper" },
					[21697] = { enUS = "Infinite Chrono-Lord" },
					[21698] = { enUS = "Infinite Timereaver" },
					[21818] = { enUS = "Infinite Whelp" },
				},
				npcIDs = {
					15608, 17023, 17918, 20201, 17879, 17880, 17881, 17839, 21104, 21697,
					21698, 17835, 17892, 18994, 18995, 21818, 17952, 18982, 18983,
				},
			},
			mechanar = {
				order = 17,
				type = "Dungeon",
				mapIDs = {267, 268},
				name = {
					enUS = "The Mechanar",
					deDE = "The Mechanar",
				},
				npcNames = {
					[19166] = { enUS = "Tempest-Forge Patroller" },
					[19167] = { enUS = "Bloodwarder Slayer" },
					[19168] = { enUS = "Sunseeker Astromage" },
					[19218] = { enUS = "Gatewatcher Gyro-Kill" },
					[19219] = { enUS = "Mechano-Lord Capacitus" },
					[19220] = { enUS = "Pathaleon the Calculator" },
					[19221] = { enUS = "Nethermancer Sepethrea" },
					[19231] = { enUS = "Mechanar Crusher" },
					[19510] = { enUS = "Bloodwarder Centurion" },
					[19710] = { enUS = "Gatewatcher Iron-Hand" },
					[19712] = { enUS = "Mechanar Driller" },
					[19713] = { enUS = "Mechanar Wrecker" },
					[19716] = { enUS = "Mechanar Tinkerer" },
					[19735] = { enUS = "Tempest-Forge Destroyer" },
					[20059] = { enUS = "Sunseeker Netherbinder" },
					[20478] = { enUS = "Arcane Servant" },
					[20481] = { enUS = "Nether Charge" },
					[20988] = { enUS = "Sunseeker Engineer" },
					[20990] = { enUS = "Bloodwarder Physician" },
					[21062] = { enUS = "Nether Wraith" },
				},
				npcIDs = {
					19219, 19221, 19220, 19218, 19710, 20481, 21062, 19166, 19167, 19168,
					19231, 19510, 19712, 19713, 19716, 19735, 20059, 20478, 20988, 20990,
				},
			},
			botanica = {
				order = 18,
				type = "Dungeon",
				mapIDs = {266},
				name = {
					enUS = "The Botanica",
					deDE = "The Botanica",
				},
				npcNames = {
					[17975] = { enUS = "High Botanist Freywinn" },
					[17976] = { enUS = "Commander Sarannis" },
					[17977] = { enUS = "Warp Splinter" },
					[17978] = { enUS = "Thorngrin the Tender" },
					[17980] = { enUS = "Laj" },
					[17993] = { enUS = "Bloodwarder Protector" },
					[17994] = { enUS = "Bloodwarder Falconer" },
					[18155] = { enUS = "Bloodfalcon" },
					[18404] = { enUS = "Bloodwarder Steward" },
					[18405] = { enUS = "Tempest-Forge Peacekeeper" },
					[18419] = { enUS = "Bloodwarder Greenkeeper" },
					[18420] = { enUS = "Sunseeker Geomancer" },
					[18421] = { enUS = "Sunseeker Researcher" },
					[18422] = { enUS = "Sunseeker Botanist" },
					[18587] = { enUS = "Frayer" },
					[19486] = { enUS = "Sunseeker Chemist" },
					[19505] = { enUS = "Sunseeker Channeler" },
					[19507] = { enUS = "Sunseeker Gene-Splicer" },
					[19508] = { enUS = "Sunseeker Herbalist" },
					[19509] = { enUS = "Sunseeker Harvester" },
					[19511] = { enUS = "Nethervine Inciter" },
					[19512] = { enUS = "Nethervine Reaper" },
					[19513] = { enUS = "Mutate Fear-Shrieker" },
					[19557] = { enUS = "Greater Frayer" },
					[19598] = { enUS = "Mutate Fleshlasher" },
					[19608] = { enUS = "Frayer Wildling" },
					[19633] = { enUS = "Bloodwarder Mender" },
					[19843] = { enUS = "Nethervine Trickster" },
					[19865] = { enUS = "Mutate Horror" },
					[19919] = { enUS = "Thorn Lasher" },
					[19920] = { enUS = "Thorn Flayer" },
					[19949] = { enUS = "Sapling" },
					[19953] = { enUS = "Frayer Protector" },
					[19958] = { enUS = "White Seedling" },
					[19962] = { enUS = "Blue Seedling" },
					[19964] = { enUS = "Red Seedling" },
					[19969] = { enUS = "Green Seedling" },
					[20078] = { enUS = "Summoned Bloodwarder Reservist" },
					[20083] = { enUS = "Summoned Bloodwarder Mender" },
					[25354] = { enUS = "Mutate Fleshlasher" },
				},
				npcIDs = {
					17976, 17975, 17978, 17980, 17977, 20078, 20083, 19953, 19958, 19962,
					19964, 19969, 19919, 19920, 19949, 17993, 17994, 18155, 18404, 18405,
					18419, 18420, 18421, 18422, 18587, 19486, 19505, 19507, 19508, 19509,
					19511, 19512, 19513, 19557, 19598, 19608, 19633, 19843, 19865, 25354,
				},
			},
			arcatraz = {
				order = 19,
				type = "Dungeon",
				mapIDs = {269, 270, 271},
				name = {
					enUS = "The Arcatraz",
					deDE = "The Arcatraz",
				},
				npcNames = {
					[20857] = { enUS = "Arcatraz Defender" },
					[20859] = { enUS = "Arcatraz Warder" },
					[20864] = { enUS = "Protean Nightmare" },
					[20865] = { enUS = "Protean Horror" },
					[20866] = { enUS = "Soul Devourer" },
					[20867] = { enUS = "Death Watcher" },
					[20868] = { enUS = "Entropic Eye" },
					[20869] = { enUS = "Arcatraz Sentinel" },
					[20870] = { enUS = "Zereketh the Unbound" },
					[20873] = { enUS = "Negaton Warp-Master" },
					[20875] = { enUS = "Negaton Screamer" },
					[20879] = { enUS = "Eredar Soul-Eater" },
					[20880] = { enUS = "Eredar Deathbringer" },
					[20881] = { enUS = "Unbound Devastator" },
					[20882] = { enUS = "Skulking Witch" },
					[20883] = { enUS = "Spiteful Temptress" },
					[20885] = { enUS = "Dalliah the Doomsayer" },
					[20886] = { enUS = "Wrath-Scryer Soccothrates" },
					[20896] = { enUS = "Ethereum Slayer" },
					[20897] = { enUS = "Ethereum Wave-Caster" },
					[20898] = { enUS = "Gargantuan Abyssal" },
					[20900] = { enUS = "Unchained Doombringer" },
					[20901] = { enUS = "Sargeron Archer" },
					[20902] = { enUS = "Sargeron Hellcaller" },
					[20904] = { enUS = "Warden Mellichar" },
					[20905] = { enUS = "Blazing Trickster" },
					[20906] = { enUS = "Phase-Hunter" },
					[20908] = { enUS = "Akkiris Lightning-Waker" },
					[20909] = { enUS = "Sulfuron Magma-Thrower" },
					[20910] = { enUS = "Twilight Drakonaar" },
					[20911] = { enUS = "Blackwing Drakonaar" },
					[20912] = { enUS = "Harbinger Skyriss" },
					[20977] = { enUS = "Millhouse Manastorm" },
					[21303] = { enUS = "Defender Corpse" },
					[21346] = { enUS = "Sightless Eye" },
					[21395] = { enUS = "Protean Spawn" },
					[21702] = { enUS = "Ethereum Life-Binder" },
					[22892] = { enUS = "Third Fragment Guardian" },
				},
				npcIDs = {
					20870, 20885, 20886, 20912, 20904, 20905, 20906, 20977, 20908, 20909,
					20910, 20911, 20857, 20859, 20864, 20865, 20866, 20867, 20868, 20869,
					20873, 20875, 20879, 20880, 20881, 20882, 20883, 20896, 20897, 20898,
					20900, 20901, 20902, 21303, 21346, 21395, 21702, 22892,
				},
			},
			magisters_terrace = {
				order = 20,
				type = "Dungeon",
				name = {
					enUS = "Magisters' Terrace",
					deDE = "Magisters' Terrace",
				},
				npcNames = {
					[24552] = { enUS = "Sliver" },
					[24553] = { enUS = "Apoko" },
					[24554] = { enUS = "Eramas Brightblaze" },
					[24555] = { enUS = "Garaxxas" },
					[24556] = { enUS = "Zelfan" },
					[24557] = { enUS = "Kagani Nightstrike" },
					[24558] = { enUS = "Ellrys Duskhallow" },
					[24559] = { enUS = "Warlord Salaris" },
					[24560] = { enUS = "Priestess Delrissa" },
					[24561] = { enUS = "Yazzai" },
					[24656] = { enUS = "Fizzle" },
					[24664] = { enUS = "Kael'thas Sunstrider" },
					[24674] = { enUS = "Phoenix" },
					[24675] = { enUS = "Phoenix Egg" },
					[24683] = { enUS = "Sunblade Mage Guard" },
					[24684] = { enUS = "Sunblade Blood Knight" },
					[24685] = { enUS = "Sunblade Magister" },
					[24686] = { enUS = "Sunblade Warlock" },
					[24687] = { enUS = "Sunblade Physician" },
					[24688] = { enUS = "Wretched Skulker" },
					[24689] = { enUS = "Wretched Bruiser" },
					[24690] = { enUS = "Wretched Husk" },
					[24696] = { enUS = "Coilskar Witch" },
					[24697] = { enUS = "Sister of Torment" },
					[24698] = { enUS = "Ethereum Smuggler" },
					[24722] = { enUS = "Fel Crystal" },
					[24723] = { enUS = "Selin Fireheart" },
					[24744] = { enUS = "Vexallus" },
					[24745] = { enUS = "Pure Energy" },
					[24761] = { enUS = "Brightscale Wyrm" },
					[24762] = { enUS = "Sunblade Keeper" },
					[24777] = { enUS = "Sunblade Sentinel" },
					[24781] = { enUS = "Nether Energy" },
					[24815] = { enUS = "Sunblade Imp" },
				},
				npcIDs = {
					24723, 24744, 24560, 24664, 24552, 24553, 24554, 24555, 24556, 24557,
					24558, 24559, 24561, 24656, 24674, 24675, 24683, 24684, 24685, 24686,
					24687, 24688, 24689, 24690, 24696, 24697, 24698, 24722, 24745, 24761,
					24762, 24777, 24781, 24815,
				},
			},
			serpentshrine_cavern = {
				order = 21,
				type = "Raid",
				name = {
					enUS = "Serpentshrine Cavern",
					deDE = "Serpentshrine Cavern",
				},
				npcNames = {
					[21212] = { enUS = "Lady Vashj" },
					[21213] = { enUS = "Morogrim Tidewalker" },
					[21214] = { enUS = "Fathom-Lord Karathress" },
					[21215] = { enUS = "Leotheras the Blind" },
					[21216] = { enUS = "Hydross the Unstable" },
					[21217] = { enUS = "The Lurker Below" },
					[21218] = { enUS = "Vashj'ir Honor Guard" },
					[21220] = { enUS = "Coilfang Priestess" },
					[21221] = { enUS = "Coilfang Beast-Tamer" },
					[21224] = { enUS = "Tidewalker Depth-Seer" },
					[21225] = { enUS = "Tidewalker Warrior" },
					[21226] = { enUS = "Tidewalker Shaman" },
					[21227] = { enUS = "Tidewalker Harpooner" },
					[21228] = { enUS = "Tidewalker Hydromancer" },
					[21229] = { enUS = "Greyheart Tidecaller" },
					[21230] = { enUS = "Greyheart Nether-Mage" },
					[21231] = { enUS = "Greyheart Shield-Bearer" },
					[21232] = { enUS = "Greyheart Skulker" },
					[21246] = { enUS = "Serpentshrine Sporebat" },
					[21251] = { enUS = "Underbog Colossus" },
					[21253] = { enUS = "Tainted Water Elemental" },
					[21263] = { enUS = "Greyheart Technician" },
					[21298] = { enUS = "Coilfang Serpentguard" },
					[21299] = { enUS = "Coilfang Fathom-Witch" },
					[21301] = { enUS = "Coilfang Shatterer" },
					[21339] = { enUS = "Coilfang Hate-Screamer" },
					[21508] = { enUS = "Coilfang Frenzy" },
					[21806] = { enUS = "Greyheart Spellbinder" },
					[21857] = { enUS = "Inner Demon" },
					[21863] = { enUS = "Serpentshrine Lurker" },
					[21865] = { enUS = "Coilfang Ambusher" },
					[21873] = { enUS = "Coilfang Guardian" },
					[21875] = { enUS = "Shadow of Leotheras" },
					[21920] = { enUS = "Tidewalker Lurker" },
					[21958] = { enUS = "Enchanted Elemental" },
					[21964] = { enUS = "Fathom-Guard Caribdis" },
					[21965] = { enUS = "Fathom-Guard Tidalvess" },
					[21966] = { enUS = "Fathom-Guard Sharkkis" },
					[22009] = { enUS = "Tainted Elemental" },
					[22035] = { enUS = "Pure Spawn of Hydross" },
					[22036] = { enUS = "Tainted Spawn of Hydross" },
					[22055] = { enUS = "Coilfang Elite" },
					[22056] = { enUS = "Coilfang Strider" },
					[22119] = { enUS = "Fathom Lurker" },
					[22120] = { enUS = "Fathom Sporebat" },
					[22238] = { enUS = "Serpentshrine Tidecaller" },
					[22250] = { enUS = "Rancid Mushroom" },
					[22347] = { enUS = "Colossus Lurker" },
					[22352] = { enUS = "Colossus Rager" },
					[22820] = { enUS = "Seer Olum" },
				},
				npcIDs = {
					21216, 21217, 21215, 21214, 21213, 21212, 21964, 21965, 21966, 21218,
					21220, 21221, 21224, 21225, 21226, 21227, 21228, 21229, 21230, 21231,
					21232, 21246, 21251, 21253, 21263, 21298, 21299, 21301, 21339, 21508,
					21806, 21857, 21863, 21865, 21873, 21875, 21920, 21958, 22009, 22035,
					22036, 22055, 22056, 22119, 22120, 22238, 22250, 22347, 22352, 22820,
				},
			},
			tempest_keep_the_eye = {
				order = 22,
				type = "Raid",
				name = {
					enUS = "Tempest Keep: The Eye",
					deDE = "Tempest Keep: The Eye",
				},
				npcNames = {
					[18805] = { enUS = "High Astromancer Solarian" },
					[18806] = { enUS = "Solarium Priest" },
					[18925] = { enUS = "Solarium Agent" },
					[19514] = { enUS = "Al'ar" },
					[19516] = { enUS = "Void Reaver" },
					[19551] = { enUS = "Ember of Al'ar" },
					[19622] = { enUS = "Kael'thas Sunstrider" },
					[20031] = { enUS = "Bloodwarder Legionnaire" },
					[20032] = { enUS = "Bloodwarder Vindicator" },
					[20033] = { enUS = "Astromancer" },
					[20034] = { enUS = "Star Scryer" },
					[20035] = { enUS = "Bloodwarder Marshal" },
					[20036] = { enUS = "Bloodwarder Squire" },
					[20037] = { enUS = "Tempest Falconer" },
					[20038] = { enUS = "Phoenix-Hawk Hatchling" },
					[20039] = { enUS = "Phoenix-Hawk" },
					[20040] = { enUS = "Crystalcore Devastator" },
					[20041] = { enUS = "Crystalcore Sentinel" },
					[20042] = { enUS = "Tempest-Smith" },
					[20043] = { enUS = "Apprentice Star Scryer" },
					[20044] = { enUS = "Novice Astromancer" },
					[20045] = { enUS = "Nether Scryer" },
					[20046] = { enUS = "Astromancer Lord" },
					[20047] = { enUS = "Crimson Hand Battle Mage" },
					[20048] = { enUS = "Crimson Hand Centurion" },
					[20049] = { enUS = "Crimson Hand Blood Knight" },
					[20050] = { enUS = "Crimson Hand Inquisitor" },
					[20052] = { enUS = "Crystalcore Mechanic" },
					[20060] = { enUS = "Lord Sanguinar" },
					[20062] = { enUS = "Grand Astromancer Capernian" },
					[20063] = { enUS = "Master Engineer Telonicus" },
					[20064] = { enUS = "Thaladred the Darkener" },
					[21268] = { enUS = "Netherstrand Longbow" },
					[21269] = { enUS = "Devastation" },
					[21270] = { enUS = "Cosmic Infuser" },
					[21271] = { enUS = "Infinity Blades" },
					[21272] = { enUS = "Warp Slicer" },
					[21273] = { enUS = "Phaseshift Bulwark" },
					[21274] = { enUS = "Staff of Disintegration" },
					[21362] = { enUS = "Phoenix" },
					[21364] = { enUS = "Phoenix Egg" },
				},
				npcIDs = {
					19516, 19514, 18805, 19622, 20060, 20062, 20063, 20064, 21268, 21269,
					21270, 21271, 21272, 21273, 21274, 18806, 18925, 19551, 20031, 20032,
					20033, 20034, 20035, 20036, 20037, 20038, 20039, 20040, 20041, 20042,
					20043, 20044, 20045, 20046, 20047, 20048, 20049, 20050, 20052, 21362,
					21364,
				},
			},
			hyjal_summit = {
				order = 23,
				type = "Raid",
				name = {
					enUS = "Hyjal Summit",
					deDE = "Hyjal Summit",
				},
				npcNames = {
					[17767] = { enUS = "Rage Winterchill" },
					[17808] = { enUS = "Anetheron" },
					[17818] = { enUS = "Towering Infernal" },
					[17842] = { enUS = "Azgalor" },
					[17864] = { enUS = "Lesser Doomguard" },
					[17888] = { enUS = "Kaz'rogal" },
					[17895] = { enUS = "Ghoul" },
					[17897] = { enUS = "Crypt Fiend" },
					[17898] = { enUS = "Abomination" },
					[17899] = { enUS = "Shadowy Necromancer" },
					[17902] = { enUS = "Skeleton Invader" },
					[17903] = { enUS = "Skeleton Mage" },
					[17905] = { enUS = "Banshee" },
					[17906] = { enUS = "Gargoyle" },
					[17907] = { enUS = "Frost Wyrm" },
					[17908] = { enUS = "Giant Infernal" },
					[17916] = { enUS = "Fel Stalker" },
					[17968] = { enUS = "Archimonde" },
				},
				npcIDs = {
					17767, 17808, 17888, 17842, 17968, 17818, 17864, 17895, 17897, 17898,
					17899, 17902, 17903, 17905, 17906, 17907, 17908, 17916,
				},
			},
			black_temple = {
				order = 24,
				type = "Raid",
				name = {
					enUS = "Black Temple",
					deDE = "Black Temple",
				},
				npcNames = {
					[22841] = { enUS = "Shade of Akama" },
					[22844] = { enUS = "Ashtongue Battlelord" },
					[22845] = { enUS = "Ashtongue Mystic" },
					[22846] = { enUS = "Ashtongue Stormcaller" },
					[22847] = { enUS = "Ashtongue Primalist" },
					[22848] = { enUS = "Storm Fury" },
					[22849] = { enUS = "Ashtongue Feral Spirit" },
					[22853] = { enUS = "Illidari Defiler" },
					[22855] = { enUS = "Illidari Nightlord" },
					[22869] = { enUS = "Illidari Boneslicer" },
					[22871] = { enUS = "Teron Gorefiend" },
					[22873] = { enUS = "Coilskar General" },
					[22874] = { enUS = "Coilskar Harpooner" },
					[22875] = { enUS = "Coilskar Sea-Caller" },
					[22876] = { enUS = "Coilskar Soothsayer" },
					[22877] = { enUS = "Coilskar Wrangler" },
					[22878] = { enUS = "Aqueous Lord" },
					[22879] = { enUS = "Shadowmoon Reaver" },
					[22880] = { enUS = "Shadowmoon Champion" },
					[22881] = { enUS = "Aqueous Surger" },
					[22882] = { enUS = "Shadowmoon Deathshaper" },
					[22883] = { enUS = "Aqueous Spawn" },
					[22884] = { enUS = "Leviathan" },
					[22885] = { enUS = "Dragon Turtle" },
					[22887] = { enUS = "High Warlord Naj'entus" },
					[22898] = { enUS = "Supremus" },
					[22917] = { enUS = "Illidan Stormrage" },
					[22929] = { enUS = "Greater Shadowfiend" },
					[22939] = { enUS = "Temple Concubine" },
					[22945] = { enUS = "Shadowmoon Blood Mage" },
					[22946] = { enUS = "Shadowmoon War Hound" },
					[22947] = { enUS = "Mother Shahraz" },
					[22948] = { enUS = "Gurtogg Bloodboil" },
					[22949] = { enUS = "Gathios the Shatterer" },
					[22950] = { enUS = "High Nethermancer Zerevor" },
					[22951] = { enUS = "Lady Malande" },
					[22952] = { enUS = "Veras Darkshadow" },
					[22953] = { enUS = "Wrathbone Flayer" },
					[22954] = { enUS = "Illidari Fearbringer" },
					[22955] = { enUS = "Charming Courtesan" },
					[22956] = { enUS = "Sister of Pain" },
					[22957] = { enUS = "Priestess of Dementia" },
					[22959] = { enUS = "Spellbound Attendant" },
					[22960] = { enUS = "Dragonmaw Wyrmcaller" },
					[22962] = { enUS = "Priestess of Delight" },
					[22963] = { enUS = "Bonechewer Worker" },
					[22964] = { enUS = "Sister of Pleasure" },
					[22965] = { enUS = "Enslaved Servant" },
					[22996] = { enUS = "Blade of Azzinoth" },
					[22997] = { enUS = "Flame of Azzinoth" },
					[23018] = { enUS = "Shadowmoon Houndmaster" },
					[23028] = { enUS = "Bonechewer Taskmaster" },
					[23030] = { enUS = "Dragonmaw Sky Stalker" },
					[23047] = { enUS = "Shadowmoon Soldier" },
					[23049] = { enUS = "Shadowmoon Weapon Master" },
					[23083] = { enUS = "Shadowmoon Riding Hound" },
					[23109] = { enUS = "Vengeful Spirit" },
					[23111] = { enUS = "Shadowy Construct" },
					[23147] = { enUS = "Shadowmoon Grunt" },
					[23172] = { enUS = "Hand of Gorefiend" },
					[23196] = { enUS = "Bonechewer Behemoth" },
					[23215] = { enUS = "Ashtongue Sorcerer" },
					[23216] = { enUS = "Ashtongue Defender" },
					[23222] = { enUS = "Bonechewer Brawler" },
					[23223] = { enUS = "Bonechewer Spectator" },
					[23232] = { enUS = "Mutant War Hound" },
					[23235] = { enUS = "Bonechewer Blade Fury" },
					[23236] = { enUS = "Bonechewer Shield Disciple" },
					[23237] = { enUS = "Bonechewer Blood Prophet" },
					[23239] = { enUS = "Bonechewer Combatant" },
					[23318] = { enUS = "Ashtongue Rogue" },
					[23319] = { enUS = "Ashtongue Broken" },
					[23330] = { enUS = "Dragonmaw Wind Reaver" },
					[23337] = { enUS = "Illidari Centurion" },
					[23339] = { enUS = "Illidari Heartseeker" },
					[23371] = { enUS = "Shadowmoon Fallen" },
					[23374] = { enUS = "Ashtongue Stalker" },
					[23375] = { enUS = "Shadow Demon" },
					[23389] = { enUS = "Fallen Ally" },
					[23394] = { enUS = "Promenade Sentinel" },
					[23397] = { enUS = "Illidari Blood Lord" },
					[23398] = { enUS = "Angered Soul Fragment" },
					[23399] = { enUS = "Suffering Soul Fragment" },
					[23400] = { enUS = "Illidari Archon" },
					[23401] = { enUS = "Hungering Soul Fragment" },
					[23402] = { enUS = "Illidari Battle-mage" },
					[23403] = { enUS = "Illidari Assassin" },
					[23418] = { enUS = "Essence of Suffering" },
					[23419] = { enUS = "Essence of Desire" },
					[23420] = { enUS = "Essence of Anger" },
					[23421] = { enUS = "Ashtongue Channeler" },
					[23436] = { enUS = "Image of Dementia" },
					[23469] = { enUS = "Enslaved Soul" },
					[23498] = { enUS = "Parasitic Shadowfiend" },
					[23523] = { enUS = "Ashtongue Elementalist" },
					[23524] = { enUS = "Ashtongue Spiritbinder" },
				},
				npcIDs = {
					22887, 22898, 22841, 22871, 22948, 23418, 23419, 23420, 22947, 22949,
					22950, 22951, 22952, 22917, 22844, 22845, 22846, 22847, 22848, 22849,
					22853, 22855, 22869, 22873, 22874, 22875, 22876, 22877, 22878, 22879,
					22880, 22881, 22882, 22883, 22884, 22885, 22929, 22939, 22945, 22946,
					22953, 22954, 22955, 22956, 22957, 22959, 22960, 22962, 22963, 22964,
					22965, 22996, 22997, 23018, 23028, 23030, 23047, 23049, 23083, 23109,
					23111, 23147, 23172, 23196, 23215, 23216, 23222, 23223, 23232, 23235,
					23236, 23237, 23239, 23318, 23319, 23330, 23337, 23339, 23371, 23374,
					23375, 23389, 23394, 23397, 23398, 23399, 23400, 23401, 23402, 23403,
					23421, 23436, 23469, 23498, 23523, 23524,
				},
			},
			sunwell_plateau = {
				order = 25,
				type = "Raid",
				name = {
					enUS = "Sunwell Plateau",
					deDE = "Sunwell Plateau",
				},
				npcNames = {
					[24850] = { enUS = "Kalecgos" },
					[24882] = { enUS = "Brutallus" },
					[24892] = { enUS = "Sathrovarr the Corruptor" },
					[25038] = { enUS = "Felmyst" },
					[25165] = { enUS = "Lady Sacrolash" },
					[25166] = { enUS = "Grand Warlock Alythess" },
					[25268] = { enUS = "Unyielding Dead" },
					[25315] = { enUS = "Kil'jaeden" },
					[25363] = { enUS = "Sunblade Cabalist" },
					[25367] = { enUS = "Sunblade Arch Mage" },
					[25368] = { enUS = "Sunblade Slayer" },
					[25369] = { enUS = "Sunblade Vindicator" },
					[25370] = { enUS = "Sunblade Dusk Priest" },
					[25371] = { enUS = "Sunblade Dawn Priest" },
					[25372] = { enUS = "Sunblade Scout" },
					[25373] = { enUS = "Shadowsword Soulbinder" },
					[25483] = { enUS = "Shadowsword Manafiend" },
					[25484] = { enUS = "Shadowsword Assassin" },
					[25485] = { enUS = "Shadowsword Deathbringer" },
					[25486] = { enUS = "Shadowsword Vanquisher" },
					[25502] = { enUS = "Shield Orb" },
					[25506] = { enUS = "Shadowsword Lifeshaper" },
					[25507] = { enUS = "Sunblade Protector" },
					[25508] = { enUS = "Shadowsword Guardian" },
					[25509] = { enUS = "Priestess of Torment" },
					[25588] = { enUS = "Hand of the Deceiver" },
					[25591] = { enUS = "Painbringer" },
					[25592] = { enUS = "Doomfire Destroyer" },
					[25593] = { enUS = "Apocalypse Guard" },
					[25595] = { enUS = "Chaos Gazer" },
					[25597] = { enUS = "Oblivion Mage" },
					[25598] = { enUS = "Volatile Felfire Fiend" },
					[25599] = { enUS = "Cataclysm Hound" },
					[25708] = { enUS = "Sinister Reflection" },
					[25741] = { enUS = "M'uru" },
					[25744] = { enUS = "Dark Fiend" },
					[25772] = { enUS = "Void Sentinel" },
					[25798] = { enUS = "Shadowsword Berserker" },
					[25799] = { enUS = "Shadowsword Fury Mage" },
					[25824] = { enUS = "Void Spawn" },
					[25837] = { enUS = "Shadowsword Commander" },
					[25840] = { enUS = "Entropius" },
					[25851] = { enUS = "Volatile Fiend" },
					[25867] = { enUS = "Sunblade Dragonhawk" },
					[25948] = { enUS = "Doomfire Shard" },
					[26101] = { enUS = "Fire Fiend" },
				},
				npcIDs = {
					24850, 24892, 24882, 25038, 25166, 25165, 25741, 25840, 25315, 25268,
					25363, 25367, 25368, 25369, 25370, 25371, 25372, 25373, 25483, 25484,
					25485, 25486, 25502, 25506, 25507, 25508, 25509, 25588, 25591, 25592,
					25593, 25595, 25597, 25598, 25599, 25708, 25744, 25772, 25798, 25799,
					25824, 25837, 25851, 25867, 25948, 26101,
				},
			},
		},
	},
}

addon.instanceKeyByMapID = addon.instanceKeyByMapID or {
	[173] = "black_morass",
	[246] = "shattered_halls",
	[256] = "auchenai_crypts",
	[257] = "auchenai_crypts",
	[258] = "sethekk_halls",
	[259] = "sethekk_halls",
	[260] = "shadow_labyrinth",
	[261] = "blood_furnace",
	[262] = "underbog",
	[263] = "steamvaults",
	[264] = "steamvaults",
	[265] = "slave_pens",
	[266] = "botanica",
	[267] = "mechanar",
	[268] = "mechanar",
	[269] = "arcatraz",
	[270] = "arcatraz",
	[271] = "arcatraz",
	[272] = "mana_tombs",
	[274] = "old_hillsbrad",
	[347] = "hellfire_ramparts",
	[350] = "karazhan",
	[351] = "karazhan",
	[352] = "karazhan",
	[353] = "karazhan",
	[354] = "karazhan",
	[355] = "karazhan",
	[356] = "karazhan",
	[357] = "karazhan",
	[358] = "karazhan",
	[359] = "karazhan",
	[360] = "karazhan",
	[361] = "karazhan",
	[362] = "karazhan",
	[363] = "karazhan",
	[364] = "karazhan",
	[365] = "karazhan",
	[366] = "karazhan",
	[733] = "black_morass",
}

instanceInfo_enUS = instanceInfo_enUS or {}
instanceInfo_deDE = instanceInfo_deDE or {}
instanceDetails_enUS = instanceDetails_enUS or {}
instanceDetails_deDE = instanceDetails_deDE or {}

instanceDetails_enUS.hellfire_ramparts = instanceDetails_enUS.hellfire_ramparts or {
	travel = "Hellfire Citadel in Hellfire Peninsula.",
	attunement = "No attunement required.",
	notes = "Compact first TBC dungeon with straightforward pacing and some dangerous ranged trash.",
	lore = "The Alliance and Horde push into Hellfire Citadel by breaching its outer defenses.",
}

instanceDetails_enUS.blood_furnace = instanceDetails_enUS.blood_furnace or {
	travel = "Hellfire Citadel in Hellfire Peninsula.",
	attunement = "No attunement required.",
	notes = "More chaotic than Ramparts, with heavier caster pressure and volatile pulls.",
	lore = "Magtheridon's fel orcs are forged here in the industrial heart of the citadel.",
}

instanceInfo_enUS.hellfire_ramparts = instanceInfo_enUS.hellfire_ramparts or {
	{"ramparts_instance_001", "Important", "Expect frequent pulls with ranged pressure, knockbacks, and patrol risks in narrow spaces.", 30},
	{"ramparts_instance_002", "TANK", "Try to keep dangerous trash faced away from the party and be careful near edges and corners.", 20},
	{"ramparts_instance_003", "Interrupts", "Clean interrupts and controlled pulls are often more valuable here than raw damage.", 10},
}

instanceInfo_enUS.blood_furnace = instanceInfo_enUS.blood_furnace or {
	{"bloodfurnace_instance_001", "Important", "Blood Furnace has several pulls where positioning and crowd control smooth out incoming damage a lot.", 30},
	{"bloodfurnace_instance_002", "HEALER", "Be ready for sudden spikes from explosives, poison, and chaotic multi-target pulls.", 20},
	{"bloodfurnace_instance_003", "PriorityTargets", "Watch for casters and support mobs that can destabilize the pull if left alone too long.", 10},
}

instanceInfo_enUS.auchenai_crypts = instanceInfo_enUS.auchenai_crypts or {
	{"auchenai_instance_001", "Important", "TEST: Auchenai Crypts instance notes are now loaded through instanceKey and mapID lookup.", 30},
	{"auchenai_instance_002", "Important", "Use this area later for personal dungeon notes and shared baseline instance reminders.", 20},
	{"auchenai_instance_003", "HEALER", "HEALER TEST: Watch for fear, burst damage, and awkward bridge knockbacks in this dungeon.", 10},
}

instanceDetails_enUS.auchenai_crypts = instanceDetails_enUS.auchenai_crypts or {
	travel = "Auchindoun in Terokkar Forest.",
	attunement = "No attunement required.",
	notes = "Short but awkward instance with fears, bridges, knockbacks, and punishing caster trash.",
	lore = "A sacred draenei burial complex later corrupted by dark rituals and restless dead.",
}

instanceInfo_enUS.sethekk_halls = instanceInfo_enUS.sethekk_halls or {
	{"sethekk_instance_001", "Important", "Sethekk Halls mixes caster pressure, crowd control, and dangerous add phases across multiple pulls.", 30},
	{"sethekk_instance_002", "PriorityTargets", "Respect healer and controller mobs so the run does not get derailed by avoidable casts or mind control.", 20},
	{"sethekk_instance_003", "Dodge", "Line-of-sight and movement matter a lot in boss mechanics and caster-heavy trash packs here.", 10},
}

instanceDetails_enUS.sethekk_halls = instanceDetails_enUS.sethekk_halls or {
	travel = "Auchindoun in Terokkar Forest.",
	attunement = "No attunement required. Heroic access still follows the usual key rules.",
	notes = "Known for dangerous caster trash, mind control, and boss mechanics that punish slow reactions.",
	lore = "The arakkoa turned these halls into a haunt of dark magic, summoning and scheming in the shadows.",
}

instanceInfo_enUS.shadow_labyrinth = instanceInfo_enUS.shadow_labyrinth or {
	{"slabs_instance_001", "Important", "Shadow Labyrinth rewards controlled positioning and awareness more than rushing pulls.", 30},
	{"slabs_instance_002", "HEALER", "Expect fear effects, burst windows, and moments where line of sight can make healing awkward.", 20},
	{"slabs_instance_003", "TANK", "Use corners and tunnel space to keep dangerous mobs stable and facing away from the group.", 10},
}

instanceDetails_enUS.shadow_labyrinth = instanceDetails_enUS.shadow_labyrinth or {
	travel = "Auchindoun in Terokkar Forest.",
	attunement = "No attunement required. Heroic access still follows the usual key rules.",
	notes = "A slower, more punishing dungeon where positioning, line of sight, and fear management matter a lot.",
	lore = "These depths hide cabals, demons, and the terrible resonance of Murmur itself.",
}

instanceInfo_enUS.karazhan = instanceInfo_enUS.karazhan or {
	{"kara_instance_001", "Important", "Karazhan is a long raid where preparation, assignments, and clean transitions matter as much as raw throughput.", 30},
	{"kara_instance_002", "Advanced", "Many encounters reward clear phase calls and disciplined threat management during transitions.", 20},
	{"kara_instance_003", "HEALER", "Plan healer assignments early, especially on fights with split damage patterns or sudden raid-wide pressure.", 10},
}

instanceDetails_enUS.karazhan = instanceDetails_enUS.karazhan or {
	travel = "Deadwind Pass.",
	attunement = "Requires the Karazhan key chain in the original TBC progression model.",
	notes = "Long introductory raid with strong atmosphere, varied encounters, and many iconic progression lessons.",
	lore = "Medivh's haunted tower is a nexus of arcane secrets, ghosts, opera, and old disasters waiting upstairs.",
}

instanceInfo_enUS.gruuls_lair = instanceInfo_enUS.gruuls_lair or {
	{"gruul_instance_001", "Important", "Gruul's Lair is compact but punishes sloppy positioning and threat mistakes quickly.", 30},
	{"gruul_instance_002", "TANK", "Threat order and boss facing are central to keeping both encounters under control.", 20},
	{"gruul_instance_003", "HEALER", "Be ready for heavy tank focus healing and punishing damage spikes during progression pulls.", 10},
}

instanceDetails_enUS.gruuls_lair = instanceDetails_enUS.gruuls_lair or {
	travel = "Blade's Edge Mountains.",
	attunement = "No attunement required.",
	notes = "Short raid with very direct mechanics where positioning and execution get tested immediately.",
	lore = "Gruul rules a brutal ogre stronghold carved into the blades of the mountains.",
}

instanceInfo_enUS.magtheridons_lair = instanceInfo_enUS.magtheridons_lair or {
	{"mag_instance_001", "Important", "Magtheridon's Lair depends heavily on assignments, coordination, and players knowing their exact jobs.", 30},
	{"mag_instance_002", "Advanced", "Rotation planning and execution matter as much as damage output on this encounter.", 20},
	{"mag_instance_003", "HEALER", "Be prepared to support assigned groups and react quickly during high-pressure transition moments.", 10},
}

instanceDetails_enUS.magtheridons_lair = instanceDetails_enUS.magtheridons_lair or {
	travel = "Hellfire Citadel in Hellfire Peninsula.",
	attunement = "No attunement required.",
	notes = "Assignment-heavy one-boss raid where discipline matters more than improvisation.",
	lore = "Deep under the citadel, Magtheridon is chained and bled by Illidan's fel industry.",
}

instanceInfo_enUS.zulaman = instanceInfo_enUS.zulaman or {
	{"za_instance_001", "Important", "Zul'Aman combines fast trash pacing with boss fights that punish poor awareness and slow reactions.", 30},
	{"za_instance_002", "PriorityTargets", "Pay close attention to dangerous support and trash mobs so the run stays controlled between bosses.", 20},
	{"za_instance_003", "DAMAGE", "Good target swaps and mechanics discipline usually save more time than greedy damage tunneling.", 10},
}

instanceDetails_enUS.zulaman = instanceDetails_enUS.zulaman or {
	travel = "Ghostlands, eastern Zul'Aman entrance.",
	attunement = "No attunement required.",
	notes = "A timed raid with fast movement, compact boss progression, and a strong reward for clean execution.",
	lore = "The Amani return in force under Zul'jin, turning the old troll city into a brutal warfront.",
}


-- The Tips maps holds tooltip information and mob ID's for all 13 legion dungeons, 10 BFA dungeons and the 8 Shadowlands dungeons. This is basically the database.
-- Each array uses the format: {{"Type", "Tip1"}, {"Type", "Tip2"}}
tipsMap_enUS = {
	-- Example
	[126389] = {{"Blank", "A+ Tip right here. \n It's a shame it's so damn long eh? It just goes on and on and on and ooon"}, 
				{"Interrupts", "INTERRUPT: Stone Bolt"}}, -- In this example case, all roles will see "A+ Tip right here" on the mobs tooltip but only Healers will see the second tip.
	
		--
	[99999] = {{"Important", "PlaceholderImportant"}, {"Important", "PlaceholderImportant"},
				{"Advanced", "PlaceholderAdvanced"}}, -- Tirnenn Villager	



	---------------------------------------------------
	----------------Burning Crusade--------------------
	---------------------------------------------------

	------- World Boss -----------------

	[17711] = {{"Legion", ""}}, -- Doomwalker
	[18728] = {{"Legion", ""}}, -- Doom Lord Kazzak


	------- Raid: Karazhan -----------------

	---Bosses
	[16151] = {{"Important", "Make sure that the trash leading up to Attumen has been cleared (has a 25 min respawn timer while Midnight is still alive)"},
				{"Important", "Midnight AND Attumen are immune to taunt effects, so make sure that ALL raiders are properly managing their threat for their role and during phase changes!"},
				{"Advanced", "PHASE ONE"},
				{"Important", "Place offtank on Midnight during start of the fight. Warrior maintank should be reserved for Attumen"},
				{"HEALER", "Each tank should have its own dedicated healer for start of fight plus another for raid healing"},
				{"Advanced", "PHASE TWO (Starts when Midnight is at 95% and Attumen appears)"},
				{"TANK", "Warrior/MT should pick up Attumen and move boss slightly away from Midnight and facing away from group to avoid cleaves"},
				{"HEALER", "STOP Heals when Attumen appears in order for MT to pick up aggro on Attumen"},
				{"DAMAGE", "STOP DPS at start of phase 2 as Attumen wipes threat at start of transition"},
				{"DAMAGE", "DPS should stack behind Attumen to avoid his cleave damage"},
				{"Important", "Dispel/Spell Reflect CURSE: Intangible Presence (Reduce player hit chance by 50%)"},
				{"DRUID", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE"},
				{"MAGE", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE"},
				{"WARRIOR", "If Tank: Use Spell Reflect when boss about to apply curse (instant cast)"},
				{"DAMAGE", "When Attumen appears (when Midnight is at 95%), DPS should swap to Attumen"},
				{"Advanced", "PHASE THREE (Starts when Midnight/Attumen is dropped to 25% - Attumen will mount Midnight at this phase)"},
				{"TANK", "Attumen wipes threat at start of transition, pick him up quick!"},
				{"HEALER", "STOP Heals at start of phase 3 as Attumen wipes threat at start of transition"},
				{"DAMAGE", "STOP DPS at start of phase 3 as Attumen wipes threat at start of transition"},
				{"TANK", "OT that was assigned to Midnight should swap to DPS'ing Attumen"}}, -- Midnight
	[16152] = {{"Important", "Make sure that the trash leading up to Attumen has been cleared (has a 25 min respawn timer while Midnight is still alive)"},
				{"Important", "Midnight AND Attumen are immune to taunt effects, so make sure that ALL raiders are properly managing their threat for their role and during phase changes!"},
				{"Advanced", "PHASE ONE"},
				{"Important", "Place offtank on Midnight during start of the fight. Warrior maintank should be reserved for Attumen"},
				{"HEALER", "Each tank should have its own dedicated healer for start of fight plus another for raid healing"},
				{"Advanced", "PHASE TWO (Starts when Midnight is at 95% and Attumen appears)"},
				{"TANK", "Warrior/MT should pick up Attumen and move boss slightly away from Midnight and facing away from group to avoid cleaves"},
				{"HEALER", "STOP Heals when Attumen appears in order for MT to pick up aggro on Attumen"},
				{"DAMAGE", "STOP DPS at start of phase 2 as Attumen wipes threat at start of transition"},
				{"DAMAGE", "DPS should stack behind Attumen to avoid his cleave damage"},
				{"Important", "Dispel/Spell Reflect CURSE: Intangible Presence (Reduce player hit chance by 50%)"},
				{"DRUID", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE"},
				{"MAGE", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE"},
				{"WARRIOR", "If Tank: Use Spell Reflect when boss about to apply curse (instant cast)"},
				{"DAMAGE", "When Attumen appears (when Midnight is at 95%), DPS should swap to Attumen"},
				{"Advanced", "PHASE THREE (Starts when Midnight/Attumen is dropped to 25% - Attumen will mount Midnight at this phase)"},
				{"TANK", "Attumen wipes threat at start of transition, pick him up quick!"},
				{"HEALER", "STOP Heals at start of phase 3 as Attumen wipes threat at start of transition"},
				{"DAMAGE", "STOP DPS at start of phase 3 as Attumen wipes threat at start of transition"},
				{"TANK", "OT that was assigned to Midnight should swap to DPS'ing Attumen"}}, -- Attumen the Huntsman
	[15687] = {{"Important", "Clear room before engaging Moroes so that you'll have room to deal with boss"},
				{"Important", "Mark Boss and his 4 dinner guests and assign MT/OT/CC of those targets"},
				{"Important", "When fight starts, MT should be on Moroes, CC targets should be applied when on their initial platform or one side of room, while OT should be on Top Kill Prio Dinner guest & remain #2 on Moroes threat"},
				{"PriorityTargets", "CC/Kill Priority for Moroes' Dinner Guests:"},
				{"Important", "1) Baroness Dorothea Millstipe (mana burner)"},
				{"Important", "2) Lady Catriona Von'Indi and Lady Keira Berrybuck (healers that will buff/heal other dinner guests"},
				{"Important", "3) Baron Rafe Dreuger (stunner that can result in loss of aggro)"},
				{"Important", "4) Lord Robin Daris (warrior-type mob that should be fought away from other raid members due to his Whirlwind ability)"},
				{"Important", "5) Moroes (boss)"},
				{"Important", "6) Lord Crispin Ference (survivalist, takes long time to kill, deal with this guy AFTER Moroes)"},
				{"Advanced", "DEALING WITH GARROTE"},
				{"Important", "GARROTE: Every 30 seconds, Moroes vanishes and applies this LARGE bleed on random raid target. This player should be called out so that they can receive heal priority."},
				{"Important", "Dwarves can use STONEFORM racial to remove their own bleed"},
				{"PALADIN", "Remove garrote using Divine Shield (from self) / Blessing of Protection (from raid member)"},
				{"MAGE", "Remove garrote using Ice Block"},
				{"Advanced", "DEALING WITH GOUGE"},
				{"Important", "MT and OT should remain #1 and #2 on threat meters"},
				{"Important", "Moroes will Gouge/Stun MT and then swap to #2 threat, during that stun."},
				{"Advanced", "DEALING WITH BLIND"},
				{"Important", "Assign a non-tank player to stand on top of Moroes at all times to receive the Blind (10 sec CC)"},
				{"Important", "Paladins, Druids, Shamans can remove Blinds (disease)"}}, -- Moroes <Tower Steward>
	[16812] = {{"Legion", "Speak to Barnes when ready to start Opera boss event"}}, -- Barnes <The Stage Manager>
	[16457] = {{"Important", "Maiden is immune to taunt, so allow tank(s) chance to build up aggro on boss before others engage. Maiden's abilities are used at random and not a strict timer, but knowing her ability CD can help plan for dealing with Repentance"},
				{"Advanced", "POSITIONING"},
				{"Important", "Tank and Melee DPS (the fewer Melee the better) will fight boss in center of room"},
				{"Important", "Melee DPS should stand in a triangle around Maiden to minimize chance of a chained Holy Wrath hitting multiple targets"},
				{"Important", "Ranged DPS and Healers should be assigned to their own gap between pillars. When fight begins, Ranged should take one step forward to ensure they are in LoS of Healers"},
				{"Important", "Healers should be placed opposite the other(s) to ensure they are within range of their assigned raid members"},
				{"Advanced", "DEALING WITH REPENTANCE"},
				{"Important", "Maiden casts Repentance stunning raid for 12 seconds (broken on damage or certain abilities)"},
				{"HEALER", "When Maiden's Repentance timer is almost up, healers should run to center of platform to take Holy Ground damage to break the upcoming Repentance. When Repentance is used, Healers should return to original positions OFF of center platform. If healer can break Repentance, they don't need to run into Holy Ground AoE"},
				{"TANK", "DEFENSIVE: When group takes Repentance, tank(s) should be popping defensives until healers can break free of Repentance. If Healer is stunned with Repentance and can't break free, pull Maiden over Healer(s) so that Holy Ground AoE can break healers free of stun"},
				{"HUNTER", "Using Bestial Wrath before Repentance can negate its effect"},
				{"PRIEST", "Using Shadow Word: Pain during the 0.5 sec Repentance cast can break the Priest free when they are hit with Repentance"},
				{"WARRIOR", "Popping Berserker Rage can allow warrior to become immune or break Repentance"},
				{"Advanced", "DEALING WITH HOLY FIRE (Magic Debuff causing Fire Damage)"},
				{"Important", "Using a Major Fire Protection Potion can mitigate Holy Fire DoT"},
				{"Important", "Restorative Potion can remove Holy Fire"},
				{"MAGE", "HOLY FIRE: Remove with ICE BLOCK"},
				{"PALADIN", "HOLY FIRE: Dispel Magic with CLEANSE or DIVINE SHIELD"},
				{"PRIEST", "HOLY FIRE: Dispel Magic with DISPEL MAGIC"},
				{"ROGUE", "HOLY FIRE: Remove with CLOAK OF SHADOWS"},
				{"SHAMAN", "Effective positioning of Grounding Totem can remove a nearby player's Holy Fire debuff"},
				{"WARRIOR", "HOLY FIRE: Use SPELL REFLECTION"},
				{"WARLOCK", "HOLY FIRE: Dispel Magic with DEVOUR MAGIC (Felhound)"}}, -- Maiden of Virtue
	[15691] = {{"Advanced", "FLARE PHASE"},
				{"PriorityTargets", "Curator summons an Astral Flare every 10 sec at 10% of boss' mana. Flares must be destroyed before next flare is launched"},
				{"Important", "During this phase, Curator should ONLY be damaged IF/WHEN there are no Flares up!"}, 
				{"Advanced", "EVOCATION PHASE (starts when boss has 0% mana):"},
				{"Important", "Curator takes increased damage during this phase. Make sure that ALL Flares are destroyed before switching to Curator!"},
				{"Advanced", "ENRAGE PHASE (starts at 15% health:"},
				{"Important", "Curator stops launching Flares and its damage output increases. Tank n spank phase"}}, 
				-- The Curator
	[15688] = {{"Important", "Kill Priority: DEMON CHAINS > KIL'REK > ILLHOOF"},
				{"Important", "Composition: Should have a paladin healer w/Concentration Aura (for warlock) and Destro Lock with Nether Protection and Intensity. Paladin healer should be dedicated to healing Warlock and Warlock should use Hellfire to deal with portal imps. A priest buffing Prayer of Shadow Protection can help resist Sacrifice DoT"},
				{"WARLOCK", "Destruction Locks speced with Nether Protection are immune to most firebolts (and Sacrifice damage when Nether Protection is active). They should be spamming Seed of Corruption on Illhoof to also deal with non-elite imps"},
				{"TANK", "Maintank should be on Illhoof and Kil'rek. Illhoof should be tanked next to green circle on the floor"},
				{"Advanced", "DEALING WITH SACRIFICE"},
				{"Important", "Occasionally boss will sacrifice a player putting Demon Chains around player (placing them in center of room) and begin leeching their HP. The Demon Chains need to be taken down ASAP!"},
				{"Important", "Have a dedicated player watch Illhoof's castbar and target to call out to healers who the sacrifice victim will be."},
				{"TANK", "If Main-Tank is being Sacrificed, the OT should pick up Illhoof"},
				{"Important", "While Demon Chains are not up, focus on Kil'rek. Raid leader should call out for AoE to destroy the non-elite imps once in awhile"},
				{"MAGE", "Using Ice Block can remove Demon Chains from Mage"},
				{"PALADIN", "Using Bubble can remove Demon Chains from Paladin"},
				{"Advanced", "DEALING WITH KIL'REK"},
				{"WARLOCK", "Placing Curse of Tongues on Kil'rek can reduce the incoming damage"},
				{"Important", "Killing Kil'rek will place a debuff on Illhoof that increases damage the boss takes for 25 seconds. Kil'rek will respawn after ~45 seconds"}},
				-- Terestian Illhoof
	[16524] = {{"Important", "No tanks are needed for this fight. Threat-reducing buffs should be replaced with DPS-increasing buffs. Having healers that can heal while moving, such as Druids or Priests are most helpful for this fight"},
				{"Advanced", "POSITIONING"},
				{"Important", "Tanks and Melee should stand in center of room fighting Aran. Casters and Healers should stand at least 10 yards from Aran to avoid boss' AoE Counterspell. Healers using instant heals will not be interrupted by the counterspell"},
				{"Advanced", "SPECIAL ABILITIES"},
				{"Important", "Circular Blizzard (Ranged players should move clockwise around room to avoid Blizzard. If snared, ranged player should move to center of room)"},
				{"Important", "Flame Wreath (Whole raid needs to stop moving to see where Flame Wreath will be placed. Moving into or out of a ring (or using Reincarn/SS or accepting a resurrection) will trigger a very large explosion! This ring dissipates after 20 seconds)"},
				{"Important", "Turning your character either inside or outside of Flame Wreath will NOT trigger the explosion"},
				{"DRUID", "NO Shapeshifting inside a ring, otherwise it will trigger the Flame Wreath explosion"},
				{"MAGE", "NO Blinking into or out of a ring otherwise you'll trigger the Flame Wreath explosion"},
				{"SHAMAN", "Shaman elementals crossing into or out of a ring will trigger the Flame Wreath explosion"},
				{"Important", "Arcane Explosion (Players should IMMEDIATELY run to the outside of the room"},
				{"Advanced", "POLYMORPH PHASE (20% mana):"},
				{"Important", "Aran polymorphs raid members, if you're not polymorphed because of being broken out by Aran's Water Elementals or a Druid's Tree of Life, Aran's drinking should NOT be interrupted"},
				{"Important", "Because Polymorph regenerates player health/mana quickly, this phase shouldn't run at the same time as the water elemental phase"},
				{"Advanced", "WATER ELEMENTAL PHASE (40% health)"},
				{"Important", "Water Elementals last for 90 seconds should be killed quickly or controlled with a Warlock's fear/banish. They are immune to Frost damage"}}, 
				-- Shade of Aran
	[15689] = {{"Advanced", "PORTAL PHASE (lasts 60 sec):"},
				{"Important", "Assign and alternate players for specific portals. After player leaves portal's beam for 8-20 seconds, the player will receive debuff preventing interaction with that color portal for 90 seconds"},
				{"TANK", "The tank (red beam) can sidestep 3-5 yards out of red beam for a few seconds to slow negative effect stack of reducing max HP of 1k per tick"},
				{"Important", "TANK: Red Beam (Netherspite will aggro to this player. Tanks should alternate ONLY with each portal phase because of the debuff timer. If necessary, a well-armored DPS can ride the red beam for 20 seconds before trading out."},
				{"HEALER", "It is unnecessary for healers to heal the player in the red beam because of it's health regen abilities"},
				{"Important", "HEALER: Green Beam (Healers are especially helpful to primary this beam as it quickly regenerates mana and increases healing done. Classes that need to have their mana quickly regenerated can stand briefly in this beam before the assigned healer, but this beam must ALWAYS be blocked, otherwise it will quickly regen Netherspite's HP"},
				{"Important", "DPS: Blue Beam (Ideally a DPS with Shadow Resistance, or a Warlock/Shadow Priest to replenish their health lost)"},
				{"HEALER", "The player in the Blue (DPS) Beam will need big heals!"},
				{"Important", "Even Number Portal Phase Rotation Suggestion:"},
				{"Legion", "RED: main-tank, BLUE: dps-a then dps-b, GREEN: off-tank and/or healer"},
				{"Important", "Odd Number Portal Phase Rotation Suggestion:"},
				{"Legion", "RED: off-tank, BLUE: dps-c then dps-d, GREEN: main-tank and/or healer"},
				{"Advanced", "BANISH PHASE (lasts 30 sec)"},
				{"Important", "After short time of inactivity, Boss will cast Netherbreath (Frontal cone dealing Arcane Damage +Knockback)"},
				{"DAMAGE", "DPS should run by the telescope to regen mana and bandage up as necessary"},
				{"SHAMAN", "Dropping a Searing Totem during this phase will not be killable by Netherbreath and after the phase ends, Netherspite will go after the Searing Totem, allowing tank time to pick up boss with red beam"},
				{"TANK", "The tank that will be doing the next phase's red beam should have their back against the door to the room to deal with knockback and prevent other players from receiving Netherbreath"},
				{"HEALER", "Healer should stand on side of Netherspite to keep up the tank that is dealing with boss during this phase"},
				{"Important", "After Banish Phase ends, boss will go back to Poral Phase until it is defeated"}}, 
				-- Netherspite
	[15690] = {{"Important", "Positioning: TANK and MELEE should have back against wall to avoid Shadow Nova knockback, ranged and healers should stand ~30 yds from boss to avoid Shadow Nova, Players (esp melee) need to be aware of Falling Infernals and Enfeeble"},
				{"Advanced", "PHASE ONE"},
				{"Important", "Prince will put Shadow Word: Pain on the MT and another target during P1 and P3 - this should be esp dispelled from the tank"},
				{"Important", "Prince summons Netherspite Infernals (Every 45 seconds in P1 and P2, cast Hellfire AoE ~3 seconds after landing; Despawn in ~180 seconds). The Infernals are stationary and MUST be avoided by raid members!"},
				{"Important", "Assign and mark a ranged raider to watch for the falling infernals coming from the sky. The spotter will need to move to a safe spot, but still in range of healers"},
				{"TANK", "Watch/Listen to your infernal spotter so that you and your melee teammates don't take Hellfire damage"},
				{"Important", "Using an Elixir of Detect Demon (esp the tank who will be adjusting Prince's location), during this fight can point out locations of Infernals on the minimap"},
				{"HUNTER", "Turning on your Track Demons will help show you where Infernals are located, without needing the Elixir of Detect Demon"},
				{"WARLOCK", "Turning on your Track Demons will help show you where Infernals are located, without needing the Elixir of Detect Demon"},
				{"HEALER", "Work things out with healers so that the tank will continue to receive heals when the group must move to avoid an Infernal's Hellfire AoE"},
				{"Advanced", "DEALING WITH ENFEEBLE"},
				{"Important", "Enfeeble is cast on five random players excluding the current target (tank). This debuff reduces player health to 1 for 7 seconds and can't be removed"},
				{"HEALER", "Players with Enfeeble debuff can't be healed above 1 health, so don't waste your mana. Their HP will return after the effect ends"},
				{"Important", "Shadow Nova (~24 yd range around Prince; 3 sec cast also has knockback) is usually cast ~4 sec after Enfeeble during P1 and P2"},
				{"PALADIN", "During P1 and P2, Paladin MUST not use Seal of Blood as this will cause an instant death if paladin is hit with Enfeeble"},
				{"Important", "Melee DPS should have an escape route planned to avoid infernals when also enfeebled"},
				{"Advanced", "PHASE TWO (Starts at 60% health)"},
				{"TANK", "Tank will need to use Defensive CDs esp during this phase as it is most dangerous for them during P2 (esp with Sunder Armor)"},
				{"HEALER", "Because of Thrash and Sunder Armor, healers should keep tank as close to max health as much as possible"},
				{"TANK", "During P2, Paladin tanks can focus on using magic damaging abilities, instead of melee attacks to maximize the number of hits to get past boss' increased parry"},
				{"WARLOCK", "Use Thunderclap, Demoralizing Shout, or Curse of Weakness on Prince to keep his AP and speed reduced at all times (esp in P2 onward)"},
				{"WARRIOR", "Use Thunderclap, Demoralizing Shout, or Curse of Weakness on Prince to keep his AP and speed reduced at all times (esp in P2 onward)"},
				{"Advanced", "PHASE THREE (Starts at 30% health) - POP HERO/LUST!"},
				{"Important", "There will be more Enfeebles, but Infernals will land every 15 seconds (instead of every 45 seconds)"},
				{"TANK", "Melee damage on tanks will reduce to P1 levels during this phase"}}, -- Prince Malchezaar
	[17225] = {{"Important", "During Air to Ground transition, make sure that the Nightbane tank has enought time to build up their aggro before others engage in fight!"},
				{"HUNTER", "Hunters casting Misdirect onto the Nightbane tank can help build up the tank's aggro!"},
				{"Advanced", "POSITIONING"},
				{"Important", "Tank assigned to Nightbane should have back to outside wall to direct cleave and breath away from raid members"},
				{"Important", "Ranged should split into two groups: GROUP A standing against inside wall, and GROUP B standing to the outside wall. Healers should stand with GROUP B to ensure they are in range of Nightbane tank. Groups A and B should be at max range to avoid his 35 yd Bellowing Roar AoE Fear (used every 45-60 seconds)"},
				{"Important", "Melee DPS should stand on side of hind leg closest to Groups A and B to stay in range of heals"},
				{"Important", "Nightbane's frontal cone and tail sweep are reasons why ONLY the tank should be standing in front of Nightbane and NO ONE should be standing behind the boss"},
				{"Advanced", "GROUND PHASE"},
				{"Important", "Nightbane will apply Distracting Ash that will reduce hit chance by 30% for 40 seconds. This should be dispelled, esp if applied to the tank"},
				{"Important", "Smoldering Ash is a frontal cone attack dealing 5-6k damage plus a 1.6-1.9k DoT every 3 seconds for 15 seconds!"},
				{"Important", "Cleave hits for ~6k on plate and 11k on cloth."},
				{"TANK", "Use Defensive CDs wisely when dealing with Cleave when also having Smoldering Ash debuff on you"},
				{"HEALER", "Be prepared to use extra heals on tank during Cleave +Smolding Ash periods"},
				{"Dodge", "DODGE: Nightbane will char the ground below a random player (~5 yd radius) that deals ~3k fire damage each second"},
				{"Important", "DEALING WITH FEAR"},
				{"Important", "PVP Trinkets or Undead Racial can drop some of the fears"},
				{"PRIEST", "Using Fear Ward on a non-warrior Nightbane tank or leading melee DPS could be helpful to minimize damage from raid being feared"},
				{"SHAMAN", "Shamans using Tremor Totem can stop the fear of some of the Bellowing Roars on melee raid members"},
				{"WARRIOR", "Use Berserker Rage (stance dance to Berserker Stance first, if necessary) to drop Fear"},
				{"Important", "When fear is concluded, adjust your positioning to ~ how it was when fight began"},
				{"Advanced", "FLIGHT PHASE starts when Nightbane health at 75%, 50% and 25%"},
				{"TANK", "DPS and TANKS should swap to killing the summoned skeletons during this phase"},
				{"DAMAGE", "DPS and TANKS should swap to killing the summoned skeletons during this phase"},
				{"Important", "If DPS is having harder time dealing with Skeletons, they can farm some Stratholme Holy Water (Undead side of Stratholme) to help burn these down more quickly"},
				{"HEALER", "Usually a healer will be targeted by Smoking Blast and that healer will need increased healing"},
				{"Important", "After Flight phase, Nighbane will land again until you've defeated it"}}, -- Nightbane

	---Servant Quarters
	[16179] = {{"Important", "Tanks should be #1 and #2 on threat meters"},
				{"Important", "Boss will apply webbing (magic debuff) to MT and swap to OT"},
				{"Important", "Boss will apply Acidic Wound (Reduces armor and Nature DoT"}}, -- Hyakiss the Lurker
	[16180] = {{"Important", "Tank and spank fight"}}, -- Shadikith the Glider
	[16181] = {{"Important", "Pull boss into the room leading into his room"},
				{"Important", "Due to AoE knockback, MT should stand with back against wall and Ranged DPS, Healers should stand with back against adjacent wall"}, 
				{"Important", "Boss will charge furthest member of raid, this player should be OT due to this being a hard-hitting ability"},
				{"Important", "MT should have their back should be against wall to avoid being knocked back, while OT should stand with back against adjacent wall furthest from boss (due to his hard-hitting charge on furthest player)"},
				{"Important", "Boss does cast Sonic Burst (5 sec AoE Silence with 20 yd range)"}}, -- Rokad the Ravager

	---Moroes' Dinner Guests
	[17007] = {{"Legion", "HOLY PALADIN-Type Mob"},
				{"PriorityTargets", "Kill/CC Priority: 2nd"},
				{"Important", "Keep target CC'd unless group is fighting this mob"},
				{"Important", "Mob will heal and buff other dinner guests w/Holy Light heal & Blessing of Might"}}, -- Lady Keira Berrybuck
	[19872] = {{"Legion", "HOLY PRIEST-Type Mob"},
				{"PriorityTargets", "Kill/CC Priority: 2nd"},
				{"Important", "Keep target CC'd unless group is fighting this mob"},
				{"Important", "Mob will heal and buff other dinner guests w/Greater Heal & PW: Shield"}}, -- Lady Catriona Von'Indi
	[19873] = {{"Legion", "PROTECTION WARRIOR-Type Mob"},
				{"PriorityTargets", "Kill/CC Priority: 6th (Least priority mob of Moroes fight)"},
				{"Important", "Will occasionally cast Disarm on player"}}, -- Lord Crispin Ference
	[19874] = {{"Legion", "PROT/RET PALADIN-Type Mob"},
				{"PriorityTargets", "Kill/CC Priority: 3rd"},
				{"Important", "Should be OT or CC'd as mob will stun player with Hammer of Justice"}}, -- Baron Rafe Dreuger
	[19875] = {{"Legion", "SHADOW PRIEST-Type Mob"},
				{"PriorityTargets", "Kill/CC Priority: 1st"},
				{"Important", "Due to Mana Burn, this target should remain CC'd"}}, -- Baroness Dorothea Millstipe
	[19876] = {{"Legion", "MORTAL STRIKE WARRIOR-Type Mob"},
				{"PriorityTargets", "Kill/CC Priority: 4th"},
				{"Important", "Due to mob's Whirlwind ability, players should not stand close to him"},
				{"TANK", "If Robin is OT, should place this target away from MT, Moroes and other players due to WW Damage"}}, -- Lord Robin Daris

	---Opera Event
	[17603] = {{"Important", "Only 1 tank is needed; best that this is a warrior due to their Berserker Rage during Boss' Fear ability"},
				{"TANK", "Tank wolf along one wall medium distance away from rest of raid"},
				{"Important", "Ranged DPS and HEALERS should stand a third to a half-stage length from boss on adjacent wall to allow reaction time for RED RIDING HOOD stage"},
				{"Important", "Prior to Wolf casting RED RIDING HOOD on a player, boss will briefly target the player that will receive debuff before swapping back to tank and applying RED RIDING HOOD debuff.  This should give player (esp melee) advanced warning of the application of debuff"},
				{"Important", "RED RIDING HOOD (20 sec debuff; Player is turned into Little Red Riding Hood and their armor & resistance drops to 0.  Little Red Riding Hood should circle the outside of the room, running away from the Big Bad Wolf"},
				{"HEALER", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!"},
				{"TANK", "Make sure to keep your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!"},
				{"DAMAGE", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!"},
				{"Important", "Casts Terrifying Howl (10 yd range; 3 sec AoE Fear)"},
				{"WARRIOR", "If feared, can use Berserker Rage to drop fear (will need to be in Berserker Stance first)"}}, 
				-- Grandmother (Wolf in Disguise)
	[17521] = {{"Important", "Only 1 tank is needed; best that this is a warrior due to their Berserker Rage during Boss' Fear ability"},
				{"TANK", "Tank wolf along one wall medium distance away from rest of raid"},
				{"Important", "Ranged DPS and HEALERS should stand a third to a half-stage length from boss on adjacent wall to allow reaction time for RED RIDING HOOD stage"},
				{"Important", "Prior to Wolf casting RED RIDING HOOD on a player, boss will briefly target the player that will receive debuff before swapping back to tank and applying RED RIDING HOOD debuff.  This should give player (esp melee) advanced warning of the application of debuff"},
				{"Important", "RED RIDING HOOD (20 sec debuff; Player is turned into Little Red Riding Hood and their armor & resistance drops to 0.  Little Red Riding Hood should circle the outside of the room, running away from the Big Bad Wolf"},
				{"HEALER", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!"},
				{"TANK", "Make sure to keep your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!"},
				{"DAMAGE", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!"},
				{"Important", "Casts Terrifying Howl (10 yd range; 3 sec AoE Fear)"},
				{"WARRIOR", "If feared, can use Berserker Rage to drop fear (will need to be in Berserker Stance first)"}}, 
				-- The Big Bad Wolf
	[17533] = {{"PriorityTargets", "In Phase 3 (fighting both Romulo and Julianne, they MUST die within 10 seconds of each other otherwise they will rez the other to full health. DPS should be aware of this so that targets can be adjusted during this fight!"},
				{"Advanced", "PHASE ONE - Fight Julianne"},
				{"Important", "It is best to use a Warrior-Tank for Romulo for the Disarms"},
				{"Important", "Dispel MAGIC (from MOB): Devotion (50% increase to Physical damage dealt; 50% increase to caster's attack speed)"},
				{"MAGE", "Devotion: Dispel magic from MOB with SPELLSTEAL"},
				{"PRIEST", "Devotion: Dispel Magic from MOB"},
				{"SHAMAN", "Devotion: Dispel Magic from MOB with PURGE"},
				{"WARLOCK", "Devotion: Dispel Magic from MOB with DEVOUR MAGIC (Felhunter Pet Only)"},
				{"WARRIOR", "Devotion: Dispel magic from MOB with SHIELD SLAM"},
				{"TANK", "It is best to have Julianne die in corner away from Romulo to make it easier for tank to pick her up in phase 3"},
				{"Advanced", "PHASE TWO - Fight Romulo"},
				{"Important", "Romulo should be tanked with his back against wall away from where Julianne died and no players should stand behind Romulo"},
				{"Important", "Coordinate with others for Disarming Romulo during DARING"},
				{"Advanced", "PHASE THREE - Fight Romulo and Julianne"},
				{"Important", "Romulo group is generally ranged/casters due to boss' melee abilities and Julianne group should be mostly melee/interrupters/dispellers"}}, 
				-- Romulo
	[17534] = {{"PriorityTargets", "In Phase 3 (fighting both Romulo and Julianne, they MUST die within 10 seconds of each other otherwise they will rez the other to full health. DPS should be aware of this so that targets can be adjusted during this fight!"},
				{"Advanced", "PHASE ONE - Fight Julianne"},
				{"Important", "It is best to use a Warrior-Tank for Romulo for the Disarms"},
				{"Important", "Dispel MAGIC (from MOB): Devotion (50% increase to Physical damage dealt; 50% increase to caster's attack speed)"},
				{"MAGE", "Devotion: Dispel magic from MOB with SPELLSTEAL"},
				{"PRIEST", "Devotion: Dispel Magic from MOB"},
				{"SHAMAN", "Devotion: Dispel Magic from MOB with PURGE"},
				{"WARLOCK", "Devotion: Dispel Magic from MOB with DEVOUR MAGIC (Felhunter Pet Only)"},
				{"WARRIOR", "Devotion: Dispel magic from MOB with SHIELD SLAM"},
				{"TANK", "It is best to have Julianne die in corner away from Romulo to make it easier for tank to pick her up in phase 3"},
				{"Advanced", "PHASE TWO - Fight Romulo"},
				{"Important", "Romulo should be tanked with his back against wall away from where Julianne died and no players should stand behind Romulo"},
				{"Important", "Coordinate with others for Disarming Romulo during DARING"},
				{"Advanced", "PHASE THREE - Fight Romulo and Julianne"},
				{"Important", "Romulo group is generally ranged/casters due to boss' melee abilities and Julianne group should be mostly melee/interrupters/dispellers"}}, 
				-- Julianne
	[17535] = {{"PriorityTargets", "Dorothee can't be tanked/interrupted and should be killed first"},
				{"Important", "Attacking Dorothee will start the encounter"},
				{"Important", "Casts Frightened Scream (Fears 3 random players for 2 seconds)"}}, -- Dorothee
	[17543] = {{"Important", "Use Highest Rank, Non-AoE/DoT Fire spells (or Fire damage Wand) on Strawman to trigger Burning Straw debuff, which will disorient boss for 6 seconds"},
				{"TANK", "Roar's Tank should taunt Strawman"},
				{"MAGE", "Molten Armor will not trigger Burning Straw debuff"},
				{"WARLOCK", "Immolate is considered a DoT and will not trigger Burning Straw debuff"}}, -- Strawman
	[17546] = {{"Important", "Susceptible to Fear, Death Coil and Scare Beast (but NOT Hibernate). A warlock and tank should be able to control him"},
				{"Important", "Casts an AoE Fear"}}, -- Roar
	[17547] = {{"Important", "Due to high amount of damage, main-tank should be on this target"},
				{"Important", "As encounter continues, mob develops rust slowing him down and allowing him to be kited"}}, -- Tinhead
	[17548] = {{"PriorityTargets", "Should be killed AFTER Dorothee as killing Tito first will cause Dorothee to ENRAGE"},
				{"Important", "Tank should be assigned to Tito"},
				{"Important", "Interrupts/Silences casters"}}, -- Tito
	[18168] = {{"Legion", "Appears when Dorothee, Roar, Strawman and Tinhead are defeated"},
				{"Important", "Main-Tank should pick up boss immediately!"},
				{"Important", "Assign a raid member to call out cyclones"},
				{"Important", "Summons Cyclones that move around and across the center of the stage; Cyclones will knock raid members into the air. Players will then fall to the ground, so a slow fall can be helpful here"},
				{"HEALER", "Priority Heals to cycloned players due to their incoming fall damage"}}, -- The Crone

	---Chess Event
	[16816] = {{"Legion", "Healing Cheat (Heals Medivh's king and possibly other pieces to full HP)"},
				{"Legion", "Damage Cheat (Places fire AoE on random player controlled piece)"},
				{"Legion", "Berserking Cheat (One of Medivh's pieces gains increased size, speed and damage)"},
				{"Important", "Players should choose which piece they want to control and first control the pawn that is blocking that piece from moving before switching to real piece"},
				{"Advanced", "Strategy: King should keep HERO/LUST up if allies in one of eight of the adjacent squares. Pawns should only be used to move the good pieces out of the way. Bishops are the only pieces that heal"},
				{"PriorityTargets", "Kill Priority: 1) King, 2) Bishop, 3) Queen, 4) Rook, 5) Knight, 6) Pawn"}}, 
				-- Echo of Medivh
	[17211] = {{"Legion", "Pawn-Type; Moves 1 space any direction"},
				{"PriorityTargets", "Lowest Priority"},
				{"Legion", "Low Health/Low Damage"},
				{"Advanced", "Strategy: As this is a weak unit, it should only be used to move piece out of way of other piece. These pieces will autoengage enemies in range if a player is not controlling them"},
				{"Important", "Heroic Blow (Deals 1k damage to target 1 square in front)"},
				{"Important", "Shield Block (Absorbs 500 damage; Lasts 5 seconds) - Should not be used"}}, 
				-- Human Footman
	[17469] = {{"Legion", "Pawn-Type; Moves 1 space any direction"},
				{"PriorityTargets", "Lowest Priority"},
				{"Legion", "Low Health/Low Damage"},
				{"Advanced", "Strategy: As this is a weak unit, it should only be used to move piece out of way of other piece. These pieces will autoengage enemies in range if a player is not controlling them"},
				{"Important", "Vicious Strike (Deals 1k damage to target 1 square in front)"},
				{"Important", "Weapon Deflection (Absorbs 500 damage; Lasts 5 seconds) - Should not be used"}}, 
				-- Orc Grunt
	[21160] = {{"Legion", "Rook-Type; Moves 1 space any direction"},
				{"PriorityTargets", "4th - due to medium ranged damage"},
				{"Legion", "Low Health/Medium Damage"},
				{"Important", "Geyser (Deals 3k damage to all adjacent hostile pieces)"},
				{"Important", "Water Shield (Reduce damage taken by 50% for 5 seconds)"}}, -- Conjured Water Elemental
	[21664] = {{"Legion", "Knight-Type; Moves in L-shaped direction"},
				{"PriorityTargets", "5th - due to low melee/ranged damage"},
				{"Legion", "Medium Health/Low Damage"},
				{"Important", "Smash (Deals 3k damage to target 1 square in front)"},
				{"Important", "Stomp (Deals 2k damage to enemy units standing in a straight line of 3 squares in front)"}}, 
				-- Human Charger
	[21682] = {{"Legion", "Bishop-Type (Only healing piece available)"},
				{"PriorityTargets", "2nd - only piece that can heal their king/other pieces"},
				{"Legion", "Low Health/Low Damage"},
				{"Important", "This piece should move very little (staying out of fire) and focusing on keeping King/Queen alive"}}, 
				-- Human Cleric
	[21683] = {{"Legion", "Queen-Type; Moves 3 straight/2 diagonal"},
				{"PriorityTargets", "3rd - deals high single target/AoE Damage"},
				{"Legion", "Medium Health/High Damage"},
				{"Advanced", "Strategy: Use Rain of Fire on CD focusing on center of packs you want to destroy; Use Elemental Blast on your main target (see priority) as a filler"},
				{"Important", "Elemental Blast (Deals 4k damage to single chess piece; Range: 4 straight/3 diagnonal)"},
				{"Important", "Rain of Fire (Deals 6k damage to any any hostile piece and all adjacent hostile pieces; 15 sec CD; Range: 4 straight/3 diagonal)"}}, 
				-- Human Conjurer
	[21684] = {{"Legion", "Start the fight by speaking to the king - the king you speak with will open up that side's pieces for your team to use"},
				{"PriorityTargets", "1st - first enemy king to die loses"},
				{"Legion", "High Health/High Damage"},
				{"Advanced", "Strategy: Use Sweep when 1-3 units in front of king exist. Keep Heroism up IF allied players in at least one of the eight adjacent squares"},
				{"Important", "Sweep (Deals 4k damage to 3 frontal adjacent units)"},
				{"Important", "Heroism (50% inc damage on other allies on all 8 adjacent spaces"}}, 
				-- King Llane
	[21726] = {{"Legion", "Rook-Type; Moves 1 space any direction"},
				{"PriorityTargets", "4th - due to medium ranged damage"},
				{"Legion", "Low Health/Medium Damage"},
				{"Important", "Hellfire (Deals 3k damage to all adjacent hostile pieces)"},
				{"Important", "Fire Shield (Reduce damage taken by 50% for 5 seconds)"}}, -- Summoned Daemon
	[21747] = {{"Legion", "Bishop-Type (Only healing piece available)"},
				{"PriorityTargets", "2nd - only piece that can heal their king/other pieces"},
				{"Legion", "Low Health/Low Damage"},
				{"Important", "This piece should move very little (staying out of fire) and focusing on keeping King/Queen alive"}}, 
				-- Orc Necrolyte
	[21748] = {{"Legion", "Knight-Type; Moves in L-shaped direction"},
				{"PriorityTargets", "5th - due to low melee/ranged damage"},
				{"Legion", "Medium Health/Low Damage"},
				{"Important", "Bite (Deals 3k damage to target 1 square in front)"},
				{"Important", "Howl (Deals 2k damage to enemy units standing in a straight line of 3 squares in front)"}}, 
				-- Orc Wolf
	[21750] = {{"Legion", "Queen-Type; Moves 3 straight/2 diagonal"},
				{"PriorityTargets", "3rd - deals high single target/AoE Damage"},
				{"Advanced", "Strategy: Use Poison Cloud on CD focusing on center of packs you want to destroy; Use Fireball on your main target (see priority) as a filler"},
				{"Important", "Fireball (Deals 4k damage to single chess piece; Range: 4 straight/3 diagnonal)"},
				{"Important", "Poison Cloud (Deals 6k damage to any any hostile piece and all adjacent hostile pieces; 15 sec CD; Range: 4 straight/3 diagonal)"}}, 
				-- Orc Warlock
	[21752] = {{"Legion", "Start the fight by speaking to the king - the king you speak with will open up that side's pieces for your team to use"},
				{"PriorityTargets", "1st - first enemy king to die loses"},
				{"Legion", "High Health/High Damage"},
				{"Advanced", "Strategy: Use Cleave when 1-3 units in front of king exist. Keep Bloodlust up IF allied players in at least one of the eight adjacent squares"},
				{"Important", "Cleave (Deals 4k damage to 3 frontal adjacent units)"},
				{"Important", "Bloodlust (50% inc damage on other allies on all 8 adjacent spaces"}}, 
				-- Warchief Blackhand

	---Trash Mobs
	[15547] = {{"Important", "Charges furthest player & casts Fear (4 sec AoE Fear; Should be pulled away from packs that raid is not yet in combat with)"}}, -- Spectral Charger
	[15548] = {{"Legion", ""}}, -- Spectral Stallion
	[15551] = {{"PriorityTargets", ""},
				{"Interrupts", "Interrupt: Mend Pet (Heals Spectral Chargers & Stallions)"}}, -- Spectral Stable Hand
	[16170] = {{"Legion", "Stealthed Mob"}}, -- Coldmist Stalker
	[16171] = {{"Legion", "Except for patrols, this mob will be accompanied by 2 stealthed Coldmist Stalkers"}}, -- Coldmist Widow
	[16173] = {{"Important", "Casts AoE Spell Interrupt/Spell Lock"},
				{"TANK", "Due to AoE Spell Interrupt, keep mob away from casters"}}, -- Shadowbat
	[16174] = {{"Legion", ""}}, -- Greater Shadowbat
	[16175] = {{"Legion", ""}}, -- Vampiric Shadowbat
	[16176] = {{"Important", "Casts Howl of the Broken Hills (10 yd range; 5 min curse draining mana, energy rage)"}}, -- Shadowbeast
	[16177] = {{"Important", "Mob casts Cleave - only tank should be standing in front of mob!"}}, -- Dreadbeast
	[16178] = {{"Important", "Phasing (Similar ability as Warp Stalker, can keep mob visible with Hunter's Mark)"}}, -- Phase Hound
	[16389] = {{"Legion", "Weak melee mob"}}, -- Spectral Apprentice
	[16406] = {{"Important", "Due to their healing ability and coming with packs of Spectral Retainers, CC is a must for these mobs"}}, -- Phantom Attendant
	[16407] = {{"Legion", "Weak melee attack"},
				{"Important", "Casts Curse of Past Burdens (Reduces movement speed and strength by 70%)"}}, -- Spectral Servant
	[16408] = {{"Legion", "Mobs are immune to taunt and deal high melee DPS"},
				{"Important", "Casts Demoralizing Shout (Reduces nearby player attack power)"}}, -- Phantom Valet
	[16409] = {{"TANK", "Pull this mob with nearby group and use an AoE Taunt such Consecration or Thunder Clap"},
				{"Important", "AoE this mob and it's group down AFTER tank has picked up aggro on all engaged enemies to avoid many raid members taking damage"}}, -- Phantom Guest
	[16410] = {{"Important", "Casts a non dispellable Mind Control (Player that gets MC'd should be sheeped)"},
				{"Important", "IMMUNE to Shackle!"}}, -- Spectral Retainer
	[16411] = {{"Legion", ""}}, -- Spectral Chef
	[16412] = {{"Important", "Inflicts fire damage +2 sec knockdown"}}, -- Ghostly Baker
	[16414] = {{"Important", "Applies Drunken Skull Crack (40 yd range; 4 sec stun)"},
				{"Important", "Usually in packs of two that should be pulled separate from other mobs by main-tank and off-tank"},
				{"HEALER", "Target hit by Drunken Skull Crack will take high damage while debuff is active"}}, -- Ghostly Steward
	[16415] = {{"Legion", "Tanks should mark these targets so as to pull them individually"},
				{"Important", "Casts Brittle Bones on player (2 min debuff periodically removing all armor of one with debuff). Brittle Bones can only be removed by Paladin's Divine Shield, or ability absorbed with Shaman's Grounding Totem"}}, -- Skeletal Waiter
	[16424] = {{"Legion", "Ranged Mob vulnerable to Shackle"}}, -- Spectral Sentry
	[16425] = {{"Legion", "Can be shackled/stunned"},
				{"Important", "Shield Slam (Stuns player for 3 sec)"}}, -- Phantom Guardsman
	[16459] = {{"Important", "Alluring Aura (pre-tranform; reduces physical damage taken by 50%)"},
				{"Important", "Wipes debuffs at 50% when transforms into true form"},
				{"Important", "Bewitching Aura (post-transform; reduces magic damage taken by 50%)"},
				{"Important", "Banshee Wail (Short range AoE silence that is used when transformed)"}}, -- Wanton Hostess
	[16460] = {{"PriorityTargets", ""},
				{"WARLOCK", "Immune to Curse of Tongues"},
				{"Important", "Casts Impending Betrayal (Deals 3k damage after 10 sec)"},
				{"Important", "Wipes debuffs at 50% when transforms into true form"}}, -- Night Mistress
	[16461] = {{"Important", "AoE Seduce (Lasts 6 sec; OT should stand away from this mob and pickup when MT is seduced)"},
				{"Important", "Wipes debuffs at 50% when transforms into true form"}}, -- Concubine
	[16468] = {{"Legion", ""}}, -- Spectral Patron
	[16470] = {{"Important", "Immune to taunt/CC; Careful with use of AoE as this can result to pulling additional groups!"}}, -- Ghostly Philanthropist
	[16471] = {{"Legion", "Immune to taunt, turn undead, freeze trap, stuns and cyclone; Vulnerable to shackle"},
				{"Important", "When these mobs are in pairs, one should be shackled"},
				{"TANK", "Warrior should be MT and should cast Spell Reflect after receiving Frost Shock in order to spell reflect the stun part of the spell back to mob"}}, -- Skeletal Usher
	[16472] = {{"Important", "Immune to snare, shackle and stuns"},
				{"Important", "Should be disarmed by warrior/rogue"}}, -- Phantom Stagehand
	[16473] = {{"TANK", "Pull mob out of Spotlight as this will increase damage done by the one standing in spotlight"},
				{"Important", "Immune to freezing trap and shackle"},
				{"DAMAGE", "Stand in Spotlight to receive a damage boost"}}, -- Spectral Performer
	[16481] = {{"Legion", ""}}, -- Ghastly Haunt
	[16482] = {{"Legion", "Immune to Shackle & Stun"}}, -- Trapped Soul
	[16485] = {{"Important", "When these mobs come in packs, don't split DPS - fight them one at a time"},
				{"Important", "Player that receives Overload (Arcane debuff dealing increased AoE damage per tick) should run away from raid members"}}, -- Arcane Watchman
	[16488] = {{"PriorityTargets", "Upon death Loose Mana will restore player mana"},
				{"Important", "DPS mob through it's mana shield and mob will die when it runs out of mana"}}, -- Arcane Anomaly
	[16489] = {{"Advanced", "Strategy: Range pull nearby Mana-Feeders and have tank pull Chaotic Sentience away from raid members"},
				{"Important", "Applies Unstable Magic debuff to players (Increased spell damage done by 300 and spell damage taken by 600; Lasts 2 minutes)"},
				{"Important", "Immune to banish and stuns"}}, -- Chaotic Sentience
	[16491] = {{"Important", "Mobs are immune to most magic effects, including wands; use Physical damage attacks (even casters)"}}, -- Mana Feeder
	[16492] = {{"Important", "Casts Drain Mana (Channeled ability) - Best to defeat nearby Arcane Anomaly as Loose Mana will restore player mana upon its death helping with defeating this mob"}}, -- Syphoner
	[16504] = {{"TANK", "Kite mob during Fist of Stone (Hard/Slow hitting ability: +35% melee damage, -75% movement speed on Arcane Protector, -35% attack speed)"},
				{"Important", "During Return Fire deals an arcane ability depending upon what it announces:"},
				{"Legion", "EL-2S (Retaliates against spells)"},
				{"Legion", "EL-5R (Retaliates against ranged projectiles)"},
				{"Legion", "EL-7M (Retaliates against melee)"}}, -- Arcane Protector
	[16525] = {{"Legion", "Mob phases in and out. Use Detect Invisibility or Elixir of Detect Lesser Invisibility to continue to see this mob"},
				{"Important", "Vulnerable to Curse of Tongues, Shackle Undead, and Turn Undead"}}, -- Spell Shade
	[16526] = {{"Important", "Burn these mobs first; the volleys have a 20 yd range"},
				{"Important", "Immune to Shackle Undead & Curse of Tongues"}}, -- Sorcerous Shade
	[16529] = {{"PriorityTargets", "Focus on this mob before Mana Warps due to its Arcane Volley AoE ability"},
				{"Important", "Immune to Banish"}}, -- Magical Horror
	[16530] = {{"Important", "Mobs cast Warp Breach growing and dealing Arcane AoE damage when near death. These mobs should be Feared/Stunned at approx 8-15% health to avoid Arcane AoE"}}, -- Mana Warp
	[16539] = {{"Legion", "Vulnerable to Enslave Demon and Banish"}}, -- Homunculus
	[16540] = {{"Legion", "Immune to all forms of Crown Control"}}, -- Shadow Pillager
	[16544] = {{"Important", "Make sure that MT and OT are #1 and #2 on the threat meter as they are immune to taunt and can deal large damage to non-tank players"},
				{"Important", "Mob will disarm highest aggro target and lowering that player's aggro on mob"}}, -- Ethereal Thief
	[16545] = {{"PriorityTargets", "Stacking debuff on raid of 3% less intel/spirit per stack (Stacks up to 15)"},
				{"Important", "Casts Transference (Magic debuff that transfers heals from one player onto mob)"},
				{"Important", "Arcane Volley (Multi-target Arcane spell hitting at 2k per hit)"}}, -- Ethereal Spellfilcher
	[16595] = {{"Important", "Immune to all forms of CC"},
				{"Important", "Frontal Cleave (Avoid standing in front of mob unless you're its tank). If multiple mobs, each one should have its own tank and should be separated slightly to avoid double cleaves"}}, -- Fleshbeast
	[16596] = {{"Important", "Gaping Maw (AoE Bleed effect to players in melee range)"},
				{"Important", "Infectious Poison (10 yd range; AoE Nature DoT)"}}, -- Greater Fleshbeast
	[17067] = {{"Legion", "Summoned by Phantom Guardsman"},
				{"Important", "Applies Rend (Bleed) - these mobs can be OT or burned down with DoTs"}}, -- Phantom Hound
	[17096] = {{"PriorityTargets", "Spawns every 10 seconds"}}, -- Astral Flare
	[17167] = {{"PriorityTargets", "Last for 90 sec being despawning. Frost Resist gear helpful."},
				{"Important", "Immune to frost damage"},
				{"WARLOCK", "Vulnerable to Fear/Banish"}}, -- Conjured Elemental
	[17229] = {{"PriorityTargets", "Respawns every ~45 seconds"},
				{"Important", "After mob dies it places debuff on Terestian Illhoof which increases damage boss takes from players"},
				{"PALADIN", "Immune to Turn Evil"}}, -- Kil'rek
	[17248] = {{"PriorityTargets", "Appears on raid member during Terestian Illhoof fight; Destroy these ASAP!"}}, -- Demon Chains
	[17261] = {{"Legion", ""}}, -- Restless Skeleton
	[17267] = {{"Legion", ""}}, -- Fiendish Imp
	[17283] = {{"Legion", ""}}, -- Astral Spark


	------- Raid: Zul'Aman -----------------

	---Bosses
	[23863] = {{"zulaman_23863_01", "Important", "", 10}}, -- Zul'jin
	[24239] = {{"zulaman_24239_01", "Important", "", 10}}, -- Hex Lord Malacrass
	[23574] = {{"zulaman_23574_01", "Important", "", 10}}, -- Akil'zon <Eagle Avatar>
	[23576] = {{"zulaman_23576_01", "Important", "", 10}}, -- Nalorakk <Bear Avatar>
	[23577] = {{"zulaman_23577_01", "Important", "", 10}}, -- Halazzi <Lynx Avatar>
	[23578] = {{"zulaman_23578_01", "Important", "", 10}}, -- Jan'alai <Dragonhawk Avatar>

	---Trash Mobs
	[23542] = {{"zulaman_23542_01", "Important", "", 10}}, -- Amani'shi Axe Thrower
	[23580] = {{"zulaman_23580_01", "Important", "", 10}}, -- Amani'shi Warbringer
	[23581] = {{"zulaman_23581_01", "Important", "", 10}}, -- Amani'shi Medicine Man
	[23582] = {{"zulaman_23582_01", "Important", "", 10}}, -- Amani'shi Tribesman
	[23584] = {{"zulaman_23584_01", "Important", "", 10}}, -- Amani Bear
	[23586] = {{"zulaman_23586_01", "Important", "", 10}}, -- Amani'shi Scout
	[23596] = {{"zulaman_23596_01", "Important", "", 10}}, -- Amani'shi Flame Caster
	[23597] = {{"zulaman_23597_01", "Important", "", 10}}, -- Amani'shi Guardian
	[23774] = {{"zulaman_23774_01", "Important", "", 10}}, -- Amani'shi Trainer
	[23834] = {{"zulaman_23834_01", "Important", "", 10}}, -- Amani Dragonhawk
	[23889] = {{"zulaman_23889_01", "Important", "", 10}}, -- Amani'shi Savage
	[24043] = {{"zulaman_24043_01", "Important", "", 10}}, -- Amani Lynx
	[24047] = {{"zulaman_24047_01", "Important", "", 10}}, -- Amani Crocolisk
	[24059] = {{"zulaman_24059_01", "Important", "", 10}}, -- Amani'shi Beast Tamer
	[24064] = {{"zulaman_24064_01", "Important", "", 10}}, -- Amani Lynx Cub
	[24065] = {{"zulaman_24065_01", "Important", "", 10}}, -- Amani'shi Handler
	[24138] = {{"zulaman_24138_01", "Important", "", 10}}, -- Tamed Amani Crocolisk
	[24175] = {{"zulaman_24175_01", "Legion", "", 10}}, -- Amani'shi Lookout
	[24179] = {{"zulaman_24179_01", "Important", "", 10}}, -- Amani'shi Wind Walker
	[24180] = {{"zulaman_24180_01", "Important", "", 10}}, -- Amani'shi Protector
	[24217] = {{"zulaman_24217_01", "Important", "", 10}}, -- Amani Bear Mount
	[24374] = {{"zulaman_24374_01", "Important", "", 10}}, -- Amani'shi Berserker
	[24530] = {{"zulaman_24530_01", "Important", "", 10}}, -- Amani Elder Lynx
	[24549] = {{"zulaman_24549_01", "Important", "", 10}}, -- Amani'shi Tempest


	------- Raid: Gruul's Lair -------------

	---Bosses
	[19044] = {{"gruul_19044_01", "Advanced", "POSITIONING: The fight favors ranged DPS over melee! Tanks, DPS and Healers should NOT stack on each other, and instead spread out", 100},
				{"gruul_19044_02", "Important", "Make sure that MT and OT are #1 and #2 respectively on the threat meter as the Hurtful Strike hits the player with the second-highest threat", 90},
				{"gruul_19044_03", "Important", "Gruul uses Growth every 30 sec (stacking to 30) which increases damage done by 15% per stack - This is a HIGH Stam/High DPS race!", 80},
				{"gruul_19044_04", "TANK", "DEFENSIVES: Hurtful Strike (which is applied ~20 sec) is applied to off-tank", 70},
				{"gruul_19044_05", "HEALER", "Keep HoTs refreshed on MT and OT as a zone-wide Silence will be cast by Gruul lasting 4 seconds", 60},
				{"gruul_19044_06", "DODGE", "Run out of Cave-ins (usually on top of himself and will occur more freqently as fight continues). Cave In deals ~3k AoE damage every 3 seconds", 50},
				{"gruul_19044_07", "Important", "Gruul will do a random direction knockback. Players that get knocked back and find themselves close together need to spread as they will be turned to stone within a few seconds. After being turned to stone, those players will shatter dealing AoE damage to yourself and nearby players", 40},
				{"gruul_19044_08", "HEALER", "Due to silences (4 sec silence), knockbacks and turning into stone, refresh tank HoTs VERY regularly and keep them at 100%, even if it means overhealing", 30},
				{"gruul_19044_09", "Important", "Gruul doesn't use Magic abilities, so it can be helpful to have a Mage buff raid with Amplify Magic", 20},
				{"gruul_19044_10", "Important", "A Paladin in your raid with Improved Concentration Aura should be placed in a group composed of healers to reduce healer silence time", 10}},
				-- Gruul the Dragonkiller

	---Council Fight
	[18831] = {{"gruul_18831_01", "Important", "", 10}}, -- High King Maulgar <Lord of the Ogres>
	[18832] = {{"gruul_18832_01", "Important", "", 10}}, -- Krosh Firehand
	[18834] = {{"gruul_18834_01", "Important", "", 10}}, -- Olm the Summoner
	[18847] = {{"gruul_18847_01", "Important", "", 10}}, -- Wild Fel Stalker
	[18835] = {{"gruul_18835_01", "Important", "", 10}}, -- Kiggler the Crazed
	[18836] = {{"gruul_18836_01", "Important", "", 10}}, -- Blindeye the Seer

	---Trash Mobs
	[19389] = {{"gruul_19389_01", "Important", "Immune to stuns and snares", 40},
				{"gruul_19389_02", "HEALER", "To prevent being cleaved/charged, stand as close to mob's backside as possible", 30},
				{"gruul_19389_03", "TANK", "Due to mob's cleave, the tank should face this mob away from raid", 20},
				{"gruul_19389_04", "DAMAGE", "To prevent being cleaved/charged, stand as close to mob's backside as possible", 10}}, -- Lair Brute
	[21350] = {{"gruul_21350_01", "Interrupts", "Interrupt: Heal (2 sec cast; Large heal that restores ~50% of mob's health)", 10}}, -- Gronn-Priest


	------- Raid: Magtheridon's Lair -------

	---Bosses
	[17257] = {{"magtheridon_17257_01", "Advanced", "POSITIONING and MANTICRON CUBES", 190},
				{"magtheridon_17257_02", "Important", "When entering the room, players will see 5 Hellfire Channelers each standing next to a Manticron Cube.", 180},
				{"magtheridon_17257_03", "Important", "The Raid Leader needs to assign 4 groups of 5 clickers per rotation (plus backups) that will click the Manticron Cube once boss casts Blast Nova", 170},
				{"magtheridon_17257_04", "Important", "When it is a player's turn to click their Cube, they should position themselves with their backs against the wall in front of their Cube's platform, but should NOT stand on that cube platform - else cave-ins may result in damage to them when they should be clicking their cube! Also, these cubes should be clicked ONCE as a debuff will prevent player from clicking a cube again for a period of time. Clicking off a cube too early will likely result in a raid wipe", 160},
				{"magtheridon_17257_05", "Advanced", "PHASE 1 - STARTING THE FIGHT", 150},
				{"magtheridon_17257_06", "Important", "Assign a tank and healer to each of the channelers. The fight will start once one of the channelers are attacked (see tactics for those Channelers in their own tooltip)", 140},
				{"magtheridon_17257_07", "Important", "When the channelers are first engaged, you'll have 2 minutes to kill as many channelers before Magtheridon becomes active (ideally all of them)", 130},
				{"magtheridon_17257_08", "Dodge", "DODGE: Conflagration (boss puts fire on a random part of the floor", 120},
				{"magtheridon_17257_09", "Advanced", "PHASE 2 - MAGTHERIDON ACTIVATES", 110},
				{"magtheridon_17257_10", "Important", "Main-Tank should pick up the boss and pull him to the opposite wall of the entrance, with the tank's back against the wall. This will allow tank to maintain their position during the Quake knockback", 100},
				{"magtheridon_17257_11", "Important", "Raid will spread out with the first group going to their assigned places (Manticron Cube) when Blast Nova goes off (which goes off every 60 seconds). The player should click their assigned cube (along with the four other assigned players to their cubes) when the raidwide warning reads that Magtheridon begins casting Blast Nova. They should also NOT move during this part of the phase", 90},
				{"magtheridon_17257_12", "Important", "Be aware that boss will occasionally cast Quake, which is a raid knockback", 80},
				{"magtheridon_17257_13", "HUNTER", "Hunters that are channeling with a cube should click off the boss, prior to clicking their cube so that auto shot will not break their channeling", 70},
				{"magtheridon_17257_14", "DAMAGE", "While Magtheridon is under the effect of all 5 purple beams, he will take increased damage, so the beams should be held as long as possible (clickers will take ticking damage while channeling, so will need heals!", 60},
				{"magtheridon_17257_15", "HEALER", "Focus your heals on the clickers as they will take ticking damage while they are channeling with their cube", 50},
				{"magtheridon_17257_16", "Advanced", "PHASE 3 - MAGTHERIDON AT 30% HEALTH", 40},
				{"magtheridon_17257_17", "Important", "When phase begins, boss shatters the roof causing raidwide damage and stunning players for 2 seconds", 30},
				{"magtheridon_17257_18", "HEALER", "Healers should be ready for phase 3 so that players can be topped off with HoTs applied", 20},
				{"magtheridon_17257_19", "Dodge", "DODGE: Periodically during this phase, small roof cave-ins will damage players in random areas throughout the room", 10}}, -- Magtheridon

	---Trash Mobs
	[17256] = {{"magtheridon_17256_01", "Important", "Do NOT attack channelers until you're ready to start the fight. Attacking them is what starts the encounter", 70},
				{"magtheridon_17256_02", "Important", "When a channeler dies, their soul will enter surviving channelers increase those channelers casting speed and damage (stacks)!", 60},
				{"magtheridon_17256_03", "Interrupts", "INTERRUPT: Dark Mending (2 sec cast, will heal another channeler for 1/8th of their health)", 50},
				{"magtheridon_17256_04", "Interrupts", "INTERRUPT: Shadow Bolt Volley", 40},
				{"magtheridon_17256_05", "ROGUE", "Make sure to apply Mind Numbing Poison to slow cast time of these mobs", 30},
				{"magtheridon_17256_06", "WARLOCK", "Make sure to apply Curse of Tongues to slow cast time of these mobs", 20},
				{"magtheridon_17256_07", "Important", "Channelers will occasionally drop Infernals on the raid dealing large damage (an off-tank should pick these up quickly and DPS should focus these down)", 10}},
				-- Hellfire Channeler
	[17454] = {{"magtheridon_17454_01", "PriorityTargets", "When channelers drop these Infernals, focus DPS on them", 30},
				{"magtheridon_17454_02", "Important", "Warlocks can Banish these Infernals", 20},
				{"magtheridon_17454_03", "TANK", "If not enough locks in the raid to deal with the Infernals, they should be picked up by an off-tank", 10}}, -- Burning Abyssal
	[18829] = {{"Interrupts", "Assign interrupters on each of the Warders per pull to interrupt Shadow Bolt Volley (Shadow Damage hitting nearby players)"},
				{"TANK", "When mob casts Shadow Burst, it will knockback nearby players and reset threat. Be ready with your taunt for when this goes off"},
				{"Important", "Do NOT Dispel Unstable Affliction as it will direct some damage to the dispeler and silence them for 5 seconds!"},
				{"Dodge", "DODGE: Rain of Fire (AoE Fire Damage)"}}, -- Hellfire Warder


	------- Raid: Serpentshrine Cavern -----

	---Bosses
	[21216] = {{"ssc_21216_01", "Important", "", 10}}, -- Hydross the Unstable <Duke of Currents>
	[21217] = {{"ssc_21217_01", "Important", "", 10}}, -- The Lurker Below
	[21215] = {{"ssc_21215_01", "Important", "", 10}}, -- Leotheras the Blind
	[21214] = {{"ssc_21214_01", "Important", "", 10}}, -- Fathom-Lord Karathress
	[21213] = {{"ssc_21213_01", "Important", "", 10}}, -- Morogrim Tidewalker
	[21212] = {{"ssc_21212_01", "Important", "", 10}}, -- Lady Vashj <Coilfang Matron>

	---Fathom Guards
	[21964] = {{"ssc_21964_01", "Important", "", 10}}, -- Fathom-Guard Caribdis
	[21965] = {{"ssc_21965_01", "Important", "", 10}}, -- Fathom-Guard Tidalvess
	[21966] = {{"ssc_21966_01", "Important", "", 10}}, -- Fathom-Guard Sharkkis

	---Trash Mobs
	[21218] = {{"ssc_21218_01", "Important", "", 10}}, -- Vashj'ir Honor Guard
	[21220] = {{"ssc_21220_01", "Important", "", 10}}, -- Coilfang Priestess
	[21221] = {{"ssc_21221_01", "Important", "", 10}}, -- Coilfang Beast-Tamer
	[21224] = {{"ssc_21224_01", "Important", "", 10}}, -- Tidewalker Depth-Seer
	[21225] = {{"ssc_21225_01", "Important", "", 10}}, -- Tidewalker Warrior
	[21226] = {{"ssc_21226_01", "Important", "", 10}}, -- Tidewalker Shaman
	[21227] = {{"ssc_21227_01", "Important", "", 10}}, -- Tidewalker Harpooner
	[21228] = {{"ssc_21228_01", "Important", "", 10}}, -- Tidewalker Hydromancer
	[21229] = {{"ssc_21229_01", "Important", "", 10}}, -- Greyheart Tidecaller
	[21230] = {{"ssc_21230_01", "Important", "", 10}}, -- Greyheart Nether-Mage
	[21231] = {{"ssc_21231_01", "Important", "", 10}}, -- Greyheart Shield-Bearer
	[21232] = {{"ssc_21232_01", "Important", "", 10}}, -- Greyheart Skulker
	[21246] = {{"ssc_21246_01", "Important", "", 10}}, -- Serpentshrine Sporebat
	[21251] = {{"ssc_21251_01", "Important", "", 10}}, -- Underbog Colossus
	[21253] = {{"ssc_21253_01", "Important", "", 10}}, -- Tainted Water Elemental
	[21263] = {{"ssc_21263_01", "Important", "", 10}}, -- Greyheart Technician
	[21298] = {{"ssc_21298_01", "Important", "", 10}}, -- Coilfang Serpentguard
	[21299] = {{"ssc_21299_01", "Important", "", 10}}, -- Coilfang Fathom-Witch
	[21301] = {{"ssc_21301_01", "Important", "", 10}}, -- Coilfang Shatterer
	[21339] = {{"ssc_21339_01", "Important", "", 10}}, -- Coilfang Hate-Screamer
	[21508] = {{"ssc_21508_01", "Important", "", 10}}, -- Coilfang Frenzy
	[21806] = {{"ssc_21806_01", "Important", "", 10}}, -- Greyheart Spellbinder
	[21857] = {{"ssc_21857_01", "Legion", "", 10}}, -- Inner Demon
	[21863] = {{"ssc_21863_01", "Important", "", 10}}, -- Serpentshrine Lurker
	[21865] = {{"ssc_21865_01", "Important", "", 10}}, -- Coilfang Ambusher
	[21873] = {{"ssc_21873_01", "Important", "", 10}}, -- Coilfang Guardian
	[21875] = {{"ssc_21875_01", "Important", "", 10}}, -- Shadow of Leotheras
	[21920] = {{"ssc_21920_01", "Important", "", 10}}, -- Tidewalker Lurker
	[21958] = {{"ssc_21958_01", "Important", "", 10}}, -- Enchanted Elemental
	[22009] = {{"ssc_22009_01", "Important", "", 10}}, -- Tainted Elemental
	[22035] = {{"ssc_22035_01", "Important", "", 10}}, -- Pure Spawn of Hydross
	[22036] = {{"ssc_22036_01", "Important", "", 10}}, -- Tainted Spawn of Hydross
	[22055] = {{"ssc_22055_01", "Important", "", 10}}, -- Coilfang Elite
	[22056] = {{"ssc_22056_01", "Important", "", 10}}, -- Coilfang Strider
	[22119] = {{"ssc_22119_01", "Important", "", 10}}, -- Fathom Lurker
	[22120] = {{"ssc_22120_01", "Important", "", 10}}, -- Fathom Sporebat
	[22238] = {{"ssc_22238_01", "Important", "", 10}}, -- Serpentshrine Tidecaller
	[22250] = {{"ssc_22250_01", "Important", "", 10}}, -- Rancid Mushroom
	[22347] = {{"ssc_22347_01", "Important", "", 10}}, -- Colossus Lurker
	[22352] = {{"ssc_22352_01", "Important", "", 10}}, -- Colossus Rager
	[22820] = {{"ssc_22820_01", "Legion", "", 10}}, -- Seer Olum


	------- Raid: Tempest Keep The Eye -----

	---Bosses
	[19516] = {{"the_eye_19516_01", "Important", "", 10}}, -- Void Reaver
	[19514] = {{"the_eye_19514_01", "Important", "", 10}}, -- Al'ar <Phoenix God>
	[18805] = {{"the_eye_18805_01", "Important", "", 10}}, -- High Astromancer Solarian
	[19622] = {{"the_eye_19622_01", "Important", "", 10}}, -- Kael'thas Sunstrider <Lord of the Blood Elves>

	---Advisors of Kael'thas Sunstrider
	[20060] = {{"the_eye_20060_01", "Important", "", 10}}, -- Lord Sanguinar <The Blood Hammer>
	[20062] = {{"the_eye_20062_01", "Important", "", 10}}, -- Grand Astromancer Capernian <Advisor to Kael'thas>
	[20063] = {{"the_eye_20063_01", "Important", "", 10}}, -- Master Engineer Telonicus <Advisor to Kael'thas>
	[20064] = {{"the_eye_20064_01", "Important", "", 10}}, -- Thaladred the Darkener <Advisor to Kael'thas>

	---Weapons of Kael'thas Sunstrider
	[21268] = {{"the_eye_21268_01", "Important", "", 10}}, -- Netherstrand Longbow
	[21269] = {{"the_eye_21269_01", "Important", "", 10}}, -- Devastation
	[21270] = {{"the_eye_21270_01", "Important", "", 10}}, -- Cosmic Infuser
	[21271] = {{"the_eye_21271_01", "Important", "", 10}}, -- Infinity Blades
	[21272] = {{"the_eye_21272_01", "Important", "", 10}}, -- Warp Slicer
	[21273] = {{"the_eye_21273_01", "Important", "", 10}}, -- Phaseshift Bulwark
	[21274] = {{"the_eye_21274_01", "Important", "", 10}}, -- Staff of Disintegration

	---Trash Mobs
	[18806] = {{"the_eye_18806_01", "Important", "", 10}}, -- Solarium Priest
	[18925] = {{"the_eye_18925_01", "Important", "", 10}}, -- Solarium Agent
	[19551] = {{"the_eye_19551_01", "Important", "", 10}}, -- Ember of Al'ar
	[20031] = {{"the_eye_20031_01", "Important", "", 10}}, -- Bloodwarder Legionnaire
	[20032] = {{"the_eye_20032_01", "Important", "", 10}}, -- Bloodwarder Vindicator
	[20033] = {{"the_eye_20033_01", "Important", "", 10}}, -- Astromancer
	[20034] = {{"the_eye_20034_01", "Important", "", 10}}, -- Star Scryer
	[20035] = {{"the_eye_20035_01", "Important", "", 10}}, -- Bloodwarder Marshal
	[20036] = {{"the_eye_20036_01", "Important", "", 10}}, -- Bloodwarder Squire
	[20037] = {{"the_eye_20037_01", "Important", "", 10}}, -- Tempest Falconer
	[20038] = {{"the_eye_20038_01", "Important", "", 10}}, -- Phoenix-Hawk Hatchling
	[20039] = {{"the_eye_20039_01", "Important", "", 10}}, -- Phoenix-Hawk
	[20040] = {{"the_eye_20040_01", "Important", "", 10}}, -- Crystalcore Devastator
	[20041] = {{"the_eye_20041_01", "Important", "", 10}}, -- Crystalcore Sentinel
	[20042] = {{"the_eye_20042_01", "Important", "", 10}}, -- Tempest-Smith
	[20043] = {{"the_eye_20043_01", "Important", "", 10}}, -- Apprentice Star Scryer
	[20044] = {{"the_eye_20044_01", "Important", "", 10}}, -- Novice Astromancer
	[20045] = {{"the_eye_20045_01", "Important", "", 10}}, -- Nether Scryer
	[20046] = {{"the_eye_20046_01", "Important", "", 10}}, -- Astromancer Lord
	[20047] = {{"the_eye_20047_01", "Important", "", 10}}, -- Crimson Hand Battle Mage
	[20048] = {{"the_eye_20048_01", "Important", "", 10}}, -- Crimson Hand Centurion
	[20049] = {{"the_eye_20049_01", "Important", "", 10}}, -- Crimson Hand Blood Knight
	[20050] = {{"the_eye_20050_01", "Important", "", 10}}, -- Crimson Hand Inquisitor
	[20052] = {{"the_eye_20052_01", "Important", "", 10}}, -- Crystalcore Mechanic
	[21362] = {{"the_eye_21362_01", "Important", "", 10}}, -- Phoenix
	[21364] = {{"the_eye_21364_01", "Important", "", 10}}, -- Phoenix Egg


	------- Raid: Hyjal Summit -------------

	---Bosses
	[17767] = {{"hyjal_17767_01", "Important", "", 10}}, -- Rage Winterchill
	[17808] = {{"hyjal_17808_01", "Important", "", 10}}, -- Anetheron
	[17888] = {{"hyjal_17888_01", "Important", "", 10}}, -- Kaz'rogal
	[17842] = {{"hyjal_17842_01", "Important", "", 10}}, -- Azgalor
	[17968] = {{"hyjal_17968_01", "Important", "", 10}}, -- Archimonde

	---Trash Mobs
	[17818] = {{"hyjal_17818_01", "Important", "", 10}}, -- Towering Infernal
	[17864] = {{"hyjal_17864_01", "Important", "", 10}}, -- Lesser Doomguard
	[17895] = {{"hyjal_17895_01", "Important", "", 10}}, -- Ghoul
	[17897] = {{"hyjal_17897_01", "Important", "", 10}}, -- Crypt Fiend
	[17898] = {{"hyjal_17898_01", "Important", "", 10}}, -- Abomination
	[17899] = {{"hyjal_17899_01", "Important", "", 10}}, -- Shadowy Necromancer
	[17902] = {{"hyjal_17902_01", "Important", "", 10}}, -- Skeleton Invader
	[17903] = {{"hyjal_17903_01", "Important", "", 10}}, -- Skeleton Mage
	[17905] = {{"hyjal_17905_01", "Important", "", 10}}, -- Banshee
	[17906] = {{"hyjal_17906_01", "Important", "", 10}}, -- Gargoyle
	[17907] = {{"hyjal_17907_01", "Important", "", 10}}, -- Frost Wyrm
	[17908] = {{"hyjal_17908_01", "Important", "", 10}}, -- Giant Infernal
	[17916] = {{"hyjal_17916_01", "Important", "", 10}}, -- Fel Stalker


	------- Raid: Black Temple -------------

	---Bosses
	[22887] = {{"black_temple_22887_01", "Important", "", 10}}, -- High Warlord Naj'entus
	[22898] = {{"black_temple_22898_01", "Important", "", 10}}, -- Supremus
	[22841] = {{"black_temple_22841_01", "Important", "", 10}}, -- Shade of Akama
	[22871] = {{"black_temple_22871_01", "Important", "", 10}}, -- Teron Gorefiend
	[22948] = {{"black_temple_22948_01", "Important", "", 10}}, -- Gurtogg Bloodboil
	[23418] = {{"black_temple_23418_01", "Important", "", 10}}, -- Essence of Suffering
	[23419] = {{"black_temple_23419_01", "Important", "", 10}}, -- Essence of Desire
	[23420] = {{"black_temple_23420_01", "Important", "", 10}}, -- Essence of Anger
	[22947] = {{"black_temple_22947_01", "Important", "", 10}}, -- Mother Shahraz
	[22949] = {{"black_temple_22949_01", "Important", "", 10}}, -- Gathios the Shatterer
	[22950] = {{"black_temple_22950_01", "Important", "", 10}}, -- High Nethermancer Zerevor
	[22951] = {{"black_temple_22951_01", "Important", "", 10}}, -- Lady Malande
	[22952] = {{"black_temple_22952_01", "Important", "", 10}}, -- Veras Darkshadow
	[22917] = {{"black_temple_22917_01", "Important", "", 10}}, -- Illidan Stormrage <The Betrayer>

	---Trash Mobs
	[22844] = {{"black_temple_22844_01", "Important", "", 10}}, -- Ashtongue Battlelord
	[22845] = {{"black_temple_22845_01", "Important", "", 10}}, -- Ashtongue Mystic
	[22846] = {{"black_temple_22846_01", "Important", "", 10}}, -- Ashtongue Stormcaller
	[22847] = {{"black_temple_22847_01", "Important", "", 10}}, -- Ashtongue Primalist
	[22848] = {{"black_temple_22848_01", "Important", "", 10}}, -- Storm Fury
	[22849] = {{"black_temple_22849_01", "Important", "", 10}}, -- Ashtongue Feral Spirit
	[22853] = {{"black_temple_22853_01", "Important", "", 10}}, -- Illidari Defiler
	[22855] = {{"black_temple_22855_01", "Important", "", 10}}, -- Illidari Nightlord
	[22869] = {{"black_temple_22869_01", "Important", "", 10}}, -- Illidari Boneslicer
	[22873] = {{"black_temple_22873_01", "Important", "", 10}}, -- Coilskar General
	[22874] = {{"black_temple_22874_01", "Important", "", 10}}, -- Coilskar Harpooner
	[22875] = {{"black_temple_22875_01", "Important", "", 10}}, -- Coilskar Sea-Caller
	[22876] = {{"black_temple_22876_01", "Important", "", 10}}, -- Coilskar Soothsayer
	[22877] = {{"black_temple_22877_01", "Important", "", 10}}, -- Coilskar Wrangler
	[22878] = {{"black_temple_22878_01", "Important", "", 10}}, -- Aqueous Lord
	[22879] = {{"black_temple_22879_01", "Important", "", 10}}, -- Shadowmoon Reaver
	[22880] = {{"black_temple_22880_01", "Important", "", 10}}, -- Shadowmoon Champion
	[22881] = {{"black_temple_22881_01", "Important", "", 10}}, -- Aqueous Surger
	[22882] = {{"black_temple_22882_01", "Important", "", 10}}, -- Shadowmoon Deathshaper
	[22883] = {{"black_temple_22883_01", "Important", "", 10}}, -- Aqueous Spawn
	[22884] = {{"black_temple_22884_01", "Important", "", 10}}, -- Leviathan
	[22885] = {{"black_temple_22885_01", "Important", "", 10}}, -- Dragon Turtle <Coilskar Harpooner's Pet>
	[22929] = {{"black_temple_22929_01", "Important", "", 10}}, -- Greater Shadowfiend
	[22939] = {{"black_temple_22939_01", "Important", "", 10}}, -- Temple Concubine
	[22945] = {{"black_temple_22945_01", "Important", "", 10}}, -- Shadowmoon Blood Mage
	[22946] = {{"black_temple_22946_01", "Important", "", 10}}, -- Shadowmoon War Hound
	[22953] = {{"black_temple_22953_01", "Important", "", 10}}, -- Wrathbone Flayer
	[22954] = {{"black_temple_22954_01", "Important", "", 10}}, -- Illidari Fearbringer
	[22955] = {{"black_temple_22955_01", "Important", "", 10}}, -- Charming Courtesan
	[22956] = {{"black_temple_22956_01", "Important", "", 10}}, -- Sister of Pain
	[22957] = {{"black_temple_22957_01", "Important", "", 10}}, -- Priestess of Dementia
	[22959] = {{"black_temple_22959_01", "Important", "", 10}}, -- Spellbound Attendant
	[22960] = {{"black_temple_22960_01", "Important", "", 10}}, -- Dragonmaw Wyrmcaller
	[22962] = {{"black_temple_22962_01", "Important", "", 10}}, -- Priestess of Delight
	[22963] = {{"black_temple_22963_01", "Important", "", 10}}, -- Bonechewer Worker
	[22964] = {{"black_temple_22964_01", "Important", "", 10}}, -- Sister of Pleasure
	[22965] = {{"black_temple_22965_01", "Important", "", 10}}, -- Enslaved Servant
	[22996] = {{"black_temple_22996_01", "Important", "", 10}}, -- Blade of Azzinoth
	[22997] = {{"black_temple_22997_01", "Important", "", 10}}, -- Flame of Azzinoth
	[23018] = {{"black_temple_23018_01", "Important", "", 10}}, -- Shadowmoon Houndmaster
	[23028] = {{"black_temple_23028_01", "Important", "", 10}}, -- Bonechewer Taskmaster
	[23030] = {{"black_temple_23030_01", "Important", "", 10}}, -- Dragonmaw Sky Stalker
	[23047] = {{"black_temple_23047_01", "Important", "", 10}}, -- Shadowmoon Soldier
	[23049] = {{"black_temple_23049_01", "Important", "", 10}}, -- Shadowmoon Weapon Master
	[23083] = {{"black_temple_23083_01", "Important", "", 10}}, -- Shadowmoon Riding Hound
	[23109] = {{"black_temple_23109_01", "Important", "", 10}}, -- Vengeful Spirit
	[23111] = {{"black_temple_23111_01", "Important", "", 10}}, -- Shadowy Construct
	[23147] = {{"black_temple_23147_01", "Important", "", 10}}, -- Shadowmoon Grunt
	[23172] = {{"black_temple_23172_01", "Important", "", 10}}, -- Hand of Gorefiend
	[23196] = {{"black_temple_23196_01", "Important", "", 10}}, -- Bonechewer Behemoth
	[23215] = {{"black_temple_23215_01", "Important", "", 10}}, -- Ashtongue Sorcerer
	[23216] = {{"black_temple_23216_01", "Important", "", 10}}, -- Ashtongue Defender
	[23222] = {{"black_temple_23222_01", "Important", "", 10}}, -- Bonechewer Brawler
	[23223] = {{"black_temple_23223_01", "Important", "", 10}}, -- Bonechewer Spectator
	[23232] = {{"black_temple_23232_01", "Important", "", 10}}, -- Mutant War Hound
	[23235] = {{"black_temple_23235_01", "Important", "", 10}}, -- Bonechewer Blade Fury
	[23236] = {{"black_temple_23236_01", "Important", "", 10}}, -- Bonechewer Shield Disciple
	[23237] = {{"black_temple_23237_01", "Important", "", 10}}, -- Bonechewer Blood Prophet
	[23239] = {{"black_temple_23239_01", "Important", "", 10}}, -- Bonechewer Combatant
	[23318] = {{"black_temple_23318_01", "Important", "", 10}}, -- Ashtongue Rogue
	[23319] = {{"black_temple_23319_01", "Important", "", 10}}, -- Ashtongue Broken
	[23330] = {{"black_temple_23330_01", "Important", "", 10}}, -- Dragonmaw Wind Reaver
	[23337] = {{"black_temple_23337_01", "Important", "", 10}}, -- Illidari Centurion
	[23339] = {{"black_temple_23339_01", "Important", "", 10}}, -- Illidari Heartseeker
	[23371] = {{"black_temple_23371_01", "Important", "", 10}}, -- Shadowmoon Fallen
	[23374] = {{"black_temple_23374_01", "Important", "", 10}}, -- Ashtongue Stalker
	[23375] = {{"black_temple_23375_01", "Important", "", 10}}, -- Shadow Demon
	[23389] = {{"black_temple_23389_01", "Important", "", 10}}, -- Fallen Ally
	[23394] = {{"black_temple_23394_01", "Important", "", 10}}, -- Promenade Sentinel
	[23397] = {{"black_temple_23397_01", "Important", "", 10}}, -- Illidari Blood Lord
	[23398] = {{"black_temple_23398_01", "Important", "", 10}}, -- Angered Soul Fragment
	[23399] = {{"black_temple_23399_01", "Important", "", 10}}, -- Suffering Soul Fragment
	[23400] = {{"black_temple_23400_01", "Important", "", 10}}, -- Illidari Archon
	[23401] = {{"black_temple_23401_01", "Important", "", 10}}, -- Hungering Soul Fragment
	[23402] = {{"black_temple_23402_01", "Important", "", 10}}, -- Illidari Battle-mage
	[23403] = {{"black_temple_23403_01", "Important", "", 10}}, -- Illidari Assassin
	[23421] = {{"black_temple_23421_01", "Important", "", 10}}, -- Ashtongue Channeler
	[23436] = {{"black_temple_23436_01", "Important", "", 10}}, -- Image of Dementia
	[23469] = {{"black_temple_23469_01", "Important", "", 10}}, -- Enslaved Soul
	[23498] = {{"black_temple_23498_01", "Important", "", 10}}, -- Parasitic Shadowfiend
	[23523] = {{"black_temple_23523_01", "Important", "", 10}}, -- Ashtongue Elementalist
	[23524] = {{"black_temple_23524_01", "Important", "", 10}}, -- Ashtongue Spiritbinder


	------- Raid: Sunwell Plateau ----------

	---Bosses
	[24850] = {{"sunwell_24850_01", "Important", "", 10}}, -- Kalecgos
	[24892] = {{"sunwell_24892_01", "Important", "", 10}}, -- Sathrovarr the Corruptor
	[24882] = {{"sunwell_24882_01", "Important", "", 10}}, -- Brutallus
	[25038] = {{"sunwell_25038_01", "Important", "", 10}}, -- Felmyst
	[25166] = {{"sunwell_25166_01", "Important", "", 10}}, -- Grand Warlock Alythess
	[25165] = {{"sunwell_25165_01", "Important", "", 10}}, -- Lady Sacrolash
	[25741] = {{"sunwell_25741_01", "Important", "", 10}}, -- M'uru
	[25840] = {{"sunwell_25840_01", "Important", "", 10}}, -- Entropius
	[25315] = {{"sunwell_25315_01", "Important", "", 10}}, -- Kil'jaeden <The Deceiver>

	---Trash Mobs
	[25268] = {{"sunwell_25268_01", "Legion", "", 10}}, -- Unyielding Dead
	[25363] = {{"sunwell_25363_01", "Important", "", 10}}, -- Sunblade Cabalist
	[25367] = {{"sunwell_25367_01", "Important", "", 10}}, -- Sunblade Arch Mage
	[25368] = {{"sunwell_25368_01", "Important", "", 10}}, -- Sunblade Slayer
	[25369] = {{"sunwell_25369_01", "Important", "", 10}}, -- Sunblade Vindicator
	[25370] = {{"sunwell_25370_01", "Important", "", 10}}, -- Sunblade Dusk Priest
	[25371] = {{"sunwell_25371_01", "Important", "", 10}}, -- Sunblade Dawn Priest
	[25372] = {{"sunwell_25372_01", "Important", "", 10}}, -- Sunblade Scout
	[25373] = {{"sunwell_25373_01", "Important", "", 10}}, -- Shadowsword Soulbinder
	[25483] = {{"sunwell_25483_01", "Important", "", 10}}, -- Shadowsword Manafiend
	[25484] = {{"sunwell_25484_01", "Important", "", 10}}, -- Shadowsword Assassin
	[25485] = {{"sunwell_25485_01", "Important", "", 10}}, -- Shadowsword Deathbringer
	[25486] = {{"sunwell_25486_01", "Important", "", 10}}, -- Shadowsword Vanquisher
	[25502] = {{"sunwell_25502_01", "Important", "", 10}}, -- Shield Orb
	[25506] = {{"sunwell_25506_01", "Important", "", 10}}, -- Shadowsword Lifeshaper
	[25507] = {{"sunwell_25507_01", "Important", "", 10}}, -- Sunblade Protector
	[25508] = {{"sunwell_25508_01", "Important", "", 10}}, -- Shadowsword Guardian
	[25509] = {{"sunwell_25509_01", "Important", "", 10}}, -- Priestess of Torment
	[25588] = {{"sunwell_25588_01", "Important", "", 10}}, -- Hand of the Deceiver
	[25591] = {{"sunwell_25591_01", "Important", "", 10}}, -- Painbringer
	[25592] = {{"sunwell_25592_01", "Important", "", 10}}, -- Doomfire Destroyer
	[25593] = {{"sunwell_25593_01", "Important", "", 10}}, -- Apocalypse Guard
	[25595] = {{"sunwell_25595_01", "Important", "", 10}}, -- Chaos Gazer
	[25597] = {{"sunwell_25597_01", "Important", "", 10}}, -- Oblivion Mage
	[25598] = {{"sunwell_25598_01", "Important", "", 10}}, -- Volatile Felfire Fiend
	[25599] = {{"sunwell_25599_01", "Important", "", 10}}, -- Cataclysm Hound
	[25708] = {{"sunwell_25708_01", "Important", "", 10}}, -- Sinister Reflection
	[25744] = {{"sunwell_25744_01", "Important", "", 10}}, -- Dark Fiend
	[25772] = {{"sunwell_25772_01", "Important", "", 10}}, -- Void Sentinel
	[25798] = {{"sunwell_25798_01", "Important", "", 10}}, -- Shadowsword Berserker
	[25799] = {{"sunwell_25799_01", "Important", "", 10}}, -- Shadowsword Fury Mage
	[25824] = {{"sunwell_25824_01", "Important", "", 10}}, -- Void Spawn
	[25837] = {{"sunwell_25837_01", "Important", "", 10}}, -- Shadowsword Commander
	[25851] = {{"sunwell_25851_01", "Important", "", 10}}, -- Volatile Fiend
	[25867] = {{"sunwell_25867_01", "Important", "", 10}}, -- Sunblade Dragonhawk
	[25948] = {{"sunwell_25948_01", "Important", "", 10}}, -- Doomfire Shard
	[26101] = {{"sunwell_26101_01", "Important", "", 10}}, -- Fire Fiend


	------- Dungeon: Hellfire Ramparts --------------

	---Bosses
		[17306] = {{"ramparts_17306_01", "Important", "Focus on killing adds FIRST as they will heal boss!", 20},
					{"ramparts_17306_02", "Important", "Spread out to avoid knockback from Surge", 10}}, -- Watchkeeper Gargolmar
		[17309] = {{"ramparts_17309_01", "PriorityTargets", "INTERRUPT: Heal (Heals boss, will also use Renew)", 10}},
					-- Hellfire Watcher <Watchkeeper's Subordinate>
		[17308] = {{"ramparts_17308_01", "Dodge", "If inflicted with Bane of Treachery run away from group. If healer or tank gets Bane, DPS needs to run away from them. Lasts 15 sec", 30},
					{"ramparts_17308_02", "Important", "~40% health, the boss casts Demonic Shield on self reducing physical and magical damage taken by 75% for 10 sec", 20},
					{"ramparts_17308_03", "Important", "CC boss' hounds or have tank taunt them", 10}}, -- Omor the Unscarred
		[17540] = {{"ramparts_17540_01", "TANK", "Taunt pets to avoid them going after other players!", 30},
					{"ramparts_17540_02", "Important", "CC/Burn down adds", 20},
					{"ramparts_17540_03", "Interrupts", "Interrupt: Drain Life", 10}}, -- Fiendish Hound <Omar's Pets>
		[17537] = {{"ramparts_17537_01", "Important", "Party members should spread out to minimize multiple people being hit with AoE Fireball from Nazan", 110},
					{"ramparts_17537_02", "Dodge", "DODGE: If hit by Fireball from Nazan, run away to avoid continuing ticks of damage!", 100},
					{"ramparts_17537_03", "TANK", "Be quick to pick up boss as he will run quickly to highest threat upon landing", 90},
					{"ramparts_17537_04", "Advanced", "VAZRUDEN (Orc) Strategy (Phase 1)", 80},
					{"ramparts_17537_05", "Important", "Player afflicted with Vazruden's Mark will be the focus of Vazruden's attacks for 6 sec. Pop Defensives.", 70},
					{"ramparts_17537_06", "HEALER", "Provide extra heals to the player afflicted with Vazruden's Mark", 60},
					{"ramparts_17537_07", "Advanced", "NAZAN (Mount) Strategy (Phase 2)", 50},
					{"ramparts_17537_08", "Important", "Nazan will land when he is at 20% health or when Vazruden (orc) reaches ~40-50% health", 40},
					{"ramparts_17537_09", "TANK", "When Nazan lands, the tank should turn the boss away from the group to avoid fire AoE hitting the group", 30},
					{"ramparts_17537_10", "Important", "Nazan will do a Bellowing Roar (AoE fear)", 20},
					{"ramparts_17537_11", "DAMAGE", "Don't stand in front of Nazan!", 10}}, -- Vazruden
		[17536] = {{"ramparts_17536_01", "Important", "Party members should spread out to minimize multiple people being hit with AoE Fireball from Nazan", 110},
					{"ramparts_17536_02", "Dodge", "DODGE: If hit by Fireball from Nazan, run away to avoid continuing ticks of damage!", 100},
					{"ramparts_17536_03", "TANK", "Be quick to pick up boss as he will run quickly to highest threat upon landing", 90},
					{"ramparts_17536_04", "Advanced", "VAZRUDEN (Orc) Strategy (Phase 1)", 80},
					{"ramparts_17536_05", "Important", "Player afflicted with Vazruden's Mark will be the focus of Vazruden's attacks for 6 sec. Pop Defensives.", 70},
					{"ramparts_17536_06", "HEALER", "Provide extra heals to the player afflicted with Vazruden's Mark", 60},
					{"ramparts_17536_07", "Advanced", "NAZAN (Mount) Strategy (Phase 2)", 50},
					{"ramparts_17536_08", "Important", "Nazan will land when he is at 20% health or when Vazruden (orc) reaches ~40-50% health", 40},
					{"ramparts_17536_09", "TANK", "When Nazan lands, the tank should turn the boss away from the group to avoid fire AoE hitting the group", 30},
					{"ramparts_17536_10", "Important", "Nazan will do a Bellowing Roar (AoE fear)", 20},
					{"ramparts_17536_11", "DAMAGE", "Don't stand in front of Nazan!", 10}}, -- Nazan <Vazruden's Mount>

	---Trash Mobs
		[17259] = {{"ramparts_17259_01", "Important", "Has a disarm and an attack power debuff. Don't worry, being melee will get better.", 10}}, 
					-- Bonechewer Hungerer
		[17264] = {{"ramparts_17264_01", "Important", "Beware: Has a dangerous single target stun (Kidney Shot).", 10}}, -- Bonechewer Ravener
		[17269] = {{"ramparts_17269_01", "Legion", "Mob uses Fire Damage abilities", 20},
					{"ramparts_17269_02", "Dodge", "Run out of Rain of Fire AoE", 10}},
					-- Bleeding Hollow Darkcaster
		[17270] = {{"ramparts_17270_01", "Important", "Tank should turn these mobs away from the group to avoid party members from being hit by Aimed Shot & Multi-Shot", 10}}, 
					-- Bleeding Hollow Archer
		[17271] = {{"ramparts_17271_01", "Important", "Tank should watch direction their back is as this mob will do a knockback and you want to avoid pulling unwanted groups.", 20},
					{"ramparts_17271_02", "Defensives", "Mortal Strike will also be applied to target reducing the effectiveness of healing received", 10}}, 
					-- Bonechewer Destroyer
		[17280] = {{"ramparts_17280_01", "Legion", "Non-elites; Deals heavy damage to cloth wearers", 20},
					{"ramparts_17280_02", "Important", "Vulnerable to CCs such as Polymorph, Trap and Hibernate", 10}}, -- Shattered Hand Warhound
		[17281] = {{"ramparts_17281_01", "Defensives", "Has an enrage when they become larger. Tank popping Defensive CDs may be necessary here and have healing ready.", 10}}, 
					-- Bonechewer Ripper
		[17455] = {{"ramparts_17455_01", "Important", "Beastmaster summons Warhounds to aid them, and also deals Uppercut (knockback to a player).", 10}}, 
					-- Bonechewer Beastmaster
		[17478] = {{"ramparts_17478_01", "Important", "Scryers buff Bonechewer Rippers - kill the Scyers quickly after LoS pulling them.", 40},
					{"ramparts_17478_02", "Interrupts", "Interrupt: Fear (1 sec cast; 20 yd range)", 30},
					{"ramparts_17478_03", "SHAMAN", "Use Tremor Totem to break party members out of Fear (esp tank/healer)", 20},
					{"ramparts_17478_04", "WARLOCK", "Applying Curse of Tongues on these mobs could allow your team to do more interrupts on Fears, esp if Shaman w/Tremor Totem isn't available", 10}}, 
					-- Bleeding Hollow Scryer
		[17517] = {{"ramparts_17517_01", "Legion", "Killing the last Sentry will result in the boss fight starting", 10}}, -- Hellfire Sentry <Herald's Sentry>



	------- Dungeon: The Blood Furnace --------------

	---Bosses
		[17381] = {{"bloodfurnace_17381_01", "Legion", "Players should spread at least 8 yds apart to avoid multiple players being hit with Exploding Beaker (Nature damage +AoE knockback)", 30},
				{"bloodfurnace_17381_02", "Important", "Boss will Mind Control random player. The MC'd player should be CC'd asap. If MC is on the tank, the boss will go straight for the healer!", 20},
				{"bloodfurnace_17381_03", "Important", "Boss will spew an AoE Acid Spray within melee range", 10}}, 
				-- The Maker
		[17380] = {{"bloodfurnace_17380_01", "TANK", "Kite boss out of Poison Cloud", 30},
				{"bloodfurnace_17380_02", "Important", "Only the tank should stand in front of boss due to boss' Slime Spray frontal cone attack", 20},
				{"bloodfurnace_17380_03", "HEALER", "Watch for players hit by Poison Bolt as this is a Nature damage DoT", 10}}, 
				-- Broggok
		[17429] = {{"bloodfurnace_17429_01", "Legion", "4 waves, first wave activated by clicking Cell Door Lever", 40},
				{"bloodfurnace_17429_02", "TANK", "Tank should be the closest one to the cage that is to open. Pop an AoE high threat ability (such as Consecration, Thunder Clap, Swipe as Bear Druid to pull adds to you.", 30},
				{"bloodfurnace_17429_03", "Important", "Mobs can be feared/trapped/slowed, which allows players to receive less damage from mass of orcs", 20},
				{"bloodfurnace_17429_04", "Important", "When mob from each wave dies, the next cell door will automatically open. Boss' door will open after last orc from 4th wave goes down.", 10}}, 
				-- Fel Orc Neophyte <Broggok's Buddies>
		[17377] = {{"bloodfurnace_17377_01", "Important", "Spread out as much as possible to mitigate group damage from Shadow Bolt Volley (30 yd shadow AoE - mostly helpful for ranged players/healer)", 20},
				{"bloodfurnace_17377_02", "Important", "Run away when you hear boss saying 'CLOSER...COME CLOSER AND BURN' as he is about to do a HEAVY Fire damage AoE", 10}}, 
				-- Keli'dan the Breaker
		[17653] = {{"bloodfurnace_17653_01", "Important", "After Adds go down, boss will come after group", 10}}, 
				-- Shadowmoon Channeler

	---Trash Mobs
		[17370] = {{"bloodfurnace_17370_01", "Important", "Shield Bash will stun player for 2 sec", 10}}, -- Laughing Skull Enforcer
		[17371] = {{"bloodfurnace_17371_01", "Important", "Affliction Warlock-Type Mob dealing Shadow Damage", 20},
				{"bloodfurnace_17371_02", "Important", "Dispel Curse of Tongues from player (Increases casting time of abilities)", 10}}, 
				-- Shadowmoon Warlock
		[17395] = {{"bloodfurnace_17395_01", "PriorityTargets", "Warlock-Type Mob dealing Fire damage that summons pets", 20},
					{"bloodfurnace_17395_02", "Important", "Interrupt: Summon Felhound Manastalker/Seductress", 10}}, -- Shadowmoon Summoner
		[17397] = {{"bloodfurnace_17397_01", "Important", "When dealing with multiples of these it is best to CC one of them as Thrash can be have some very hard hitting damage", 10}}, 
				-- Shadowmoon Adept
		[17398] = {{"bloodfurnace_17398_01", "Important", "Deals AoE Damage to melee in form of Stomp and also uses Concussion Blow (5 sec stun)", 10}}, 
				-- Nascent Fel Orc
		[17399] = {{"bloodfurnace_17399_01", "Important", "Charms players for 6 sec (magic can be dispelled)", 20},
				{"bloodfurnace_17399_02", "Important", "If no one can dispel charm, the charmed player should be CC'd or stunned", 10}}, 
				-- Seductress
		[17400] = {{"bloodfurnace_17400_01", "Important", "Pull these packs one at a time. They deal VERY high damage.", 10}}, -- Felguard Annihilator
		[17401] = {{"bloodfurnace_17401_01", "Important", "Will Spell Lock casters & burn mana users", 20},
				{"bloodfurnace_17401_02", "PALADIN", "If tanking, can use Seal of Wisdom after sufficient threat has been built up", 10}}, 
				-- Felhound Manastalker
		[17414] = {{"bloodfurnace_17414_01", "Important", "Players should spread out when dealing with this mob to avoid AoE Fire damage from Throw Dynamite", 70},
				{"bloodfurnace_17414_02", "Important", "These mobs will also place Proximity Mines on the ground. Avoid these mines! These can be cleared by Rogues, Hunters and Warlocks", 60}, 
				{"bloodfurnace_17414_03", "ROGUE", "Use Disarm Trap to deactivate Proximity Mines", 50},
				{"bloodfurnace_17414_04", "HUNTER", "Using Eye of the Beast can allow your pet to trigger mines (esp helpful if using pet with high stamina)", 40},
				{"bloodfurnace_17414_05", "WARLOCK", "Use your Eye of Kilrogg to clear mines ahead of group after a pull (may aggro mobs, so be careful", 30}, 
				{"bloodfurnace_17414_06", "MAGE", "Use Fire Ward to trigger Proximity Mines", 20},
				{"bloodfurnace_17414_07", "Defensives", "Mobs will cast a silence on player. If Healer is hit by 5 sec silence, Tank may need to pop extra defensive CDs", 10}},
				-- Shadowmoon Technician
		[17477] = {{"bloodfurnace_17477_01", "Important", "Imp that deals Fire damage", 10}},
		        -- Hellfire Imp
		[17491] = {{"bloodfurnace_17491_01", "Legion", "~6-7 mobs of this type will be found in this instance", 40},
					{"bloodfurnace_17491_02", "Important", "These are stealthed mobs that can be exposed by a Hunter's Flare. DPS should avoid running ahead of tank", 30},
					{"bloodfurnace_17491_03", "Important", "Dispel Poison from player (Nature DoT over 15 sec}", 20}, 
					{"bloodfurnace_17491_04", "Important", "If tank gets hit by Kidney Shot (stun), DPS should slow/kite mob until tank can get back the aggro", 10}},
					-- Laughing Skull Rogue
		[17624] = {{"bloodfurnace_17624_01", "Legion", "Buffs allies w/its Battle Shout", 10}}, -- Laughing Skull Warden
		[17626] = {{"bloodfurnace_17626_01", "Important", "Uppercut inflicts weapon damage +knockback - Tank should have back to the wall, or know place they will be knocked back won't pull unwanted mobs", 10}}, 
					-- Laughing Skull Legionnaire
		[18894] = {{"bloodfurnace_18894_01", "Important", "Uppercut inflicts weapon damage +knockback - Tank should have back to the wall, or know place they will be knocked back won't pull unwanted mobs", 10}}, 
					-- Felguard Brute
		[19016] = {{"bloodfurnace_19016_01", "Important", "Imp that deals Fire damage", 10}}, -- Hellfire Familiar


	------- Dungeon: The Shattered Halls ------------

	---Bosses
	[16807] = {{"shattered_halls_16807_01", "Important", "The fight will start when the last/fourth Fel Orc Convert dies (this can be killed by players, or may be killed by the boss if group is taking too much time to pull", 90},
				{"shattered_halls_16807_02", "Legion", "Shadow Resistance Buffs/Aura are helpful here if you run into trouble.", 80},
				{"shattered_halls_16807_03", "Advanced", "PHASE 1:", 70},
				{"shattered_halls_16807_04", "Dodge", "DODGE: Players inside Void zones (starting out as circular red graphic will appear around a player) will need to run out of them ASAP!", 60},
				{"shattered_halls_16807_05", "Important", "Boss will cast Death Coil on random players dealing Shadow Damage +4 sec fear!", 50},
				{"shattered_halls_16807_06", "SHAMAN", "Fear Totem can be helpful to protect healer from getting 4 sec Death Coil fear", 40},
				{"shattered_halls_16807_07", "Advanced", "PHASE 2 (starts at boss 20% health):", 30},
				{"shattered_halls_16807_08", "Important", "Boss will begin channeling Dark Spin WW dealing Physical Damage in melee plus firing Shadow Bolts at random players. Burn him down QUICKLY in phase 2!", 20},
				{"shattered_halls_16807_09", "ROGUE", "Save Cloak of Shadows and Evasion until things get dangerous for you during Phase 2", 10}},
				-- Grand Warlock Nethekurse
	[20923] = {{"shattered_halls_20923_01", "TANK", "Tank the boss against a wall", 30},
				{"shattered_halls_20923_02", "Important", "Has a brief fear", 20},
				{"shattered_halls_20923_03", "Important", "Due to high-hitting melee cleave, the players standing close to boss will take increased damage and will need more heals", 10}},
				-- Blood Guard Porung (Heroic-Only)
	[16809] = {{"shattered_halls_16809_01", "Legion", "HEROIC MODE: It is best to have TANK put on DPS gear due to being untauntable. Tank and 2 DPS having a buffed HP of 8500 is helpful here. The third 'DPS' should go off-heals to help out main spec healer", 110},
				{"shattered_halls_16809_02", "TANK", "Tank the boss in the middle of the room and be prepared to pickup stealthed assassins that may strike when boss unleashes fear", 100},
				{"shattered_halls_16809_03", "Important", "Untauntable (using high threat abilities causes him to focus on that player", 90},
				{"shattered_halls_16809_04", "Important", "BEATDOWN: When boss emotes, he will wipe aggro table and attack random player", 80},
				{"shattered_halls_16809_05", "PALADIN", "If tank, use Seal of Vengeance! Maintaining that 5th tick of debuff on boss will help pull aggro back to you during aggro switch", 70},
				{"shattered_halls_16809_06", "WARRIOR", "If tank, make sure to keep Sunder Armor stacked to help pull aggro back to you when aggro table is wiped.", 60},
				{"shattered_halls_16809_07", "DRUID", "If tank, keep Lacerate applied to boss to help pull aggro back to you when aggro table is wiped", 50},
				{"shattered_halls_16809_08", "Defensives", "When boss' weapon glows red he will deal increased fire damage to target and unleash an AoE Blast Wave (Fire Damage +Movement Speed Slow)", 40},
				{"shattered_halls_16809_09", "Important", "FEAR: Boss dishes out an AoE 3 sec fear", 30},
				{"shattered_halls_16809_10", "SHAMAN", "Fear Totem will be helpful in contending with boss' AoE Fear", 20},
				{"shattered_halls_16809_11", "Important", "Boss will occasionally Thunder Clap (-35% attack speed and -35% movement speed to players for 10 sec) melee-ranged players. This should be removed.", 10}},
				-- Warbringer O'mrogg
	[16808] = {{"shattered_halls_16808_01", "Advanced", "POSITIONING: TANK boss near entrance to his 'platform' and facing that same direction. When fight begins, HEALER should stand in the opposite side of the platform, and DPS should stand between boss and Healer. Players should spread as much as possible", 60},
				{"shattered_halls_16808_02", "Legion", "ASSIGNMENTS (to keep healer from going oom): Have 1 DPS dedicated to adds, another DPS switching between Boss and helping deal with the Adds, and another focusing on boss", 50},
				{"shattered_halls_16808_03", "Important", "ADDS: ~30 sec into the fight (increasing in frequency over the fight), boss will call for adds that will come up the stairs to entrance of platform. Tank should swap to these targets to pick up aggro while DPS focuses on adds as priority", 40},
				{"shattered_halls_16808_04", "Important", "If group is not able to balance dealing with increased number of adds, this boss fight can overwhelm group and result in a wipe", 30},
				{"shattered_halls_16808_05", "Important", "BLADE DANCE/CHARGE: ~30 sec after fight begins and every 30 sec thereafter, boss will charge random player and strike them (+1 sec stun). As the fight continues, boss will charge an increased number of players dealing damage to them.", 20},
				{"shattered_halls_16808_06", "HEALER", "During boss' SWEEPING STRIKES, boss' next 5 melee attacks will strike an additional player", 10}},
				-- Warchief Kargath Bladefist

	---Kargath Bladefist's Buddies
	[17621] = {{"shattered_halls_17621_01", "Legion", "Fury Warrior-type mob", 30},
				{"shattered_halls_17621_02", "Important", "BLOODTHIRST: Next 5 successful attacks restore health to mob", 20},
				{"shattered_halls_17621_03", "Defensives", "ENRAGE: Increased Physical Dmg + attack speed by 30% for 1 minute", 10}},
				-- Heathen Guard
	[17622] = {{"shattered_halls_17622_01", "Legion", "Hunter-type-mob", 30},
				{"shattered_halls_17622_02", "Important", "SCATTER SHOT: Deals Physical Damage +4 sec disorient to player.", 20},
				{"shattered_halls_17622_03", "Important", "INCENDIARY SHOT: Applies fire DoT to player", 10}}, -- Sharpshooter Guard
	[17623] = {{"shattered_halls_17623_01", "Legion", "Arms Warrior-type mob", 40},
				{"shattered_halls_17623_02", "Important", "KNOCKBACK ability: When fighting mob, try to stand with back against wall", 30},
				{"shattered_halls_17623_03", "Important", "CLEAVE: Mob will deal Physical damage to player and their closest ally", 20},
				{"shattered_halls_17623_04", "Defensives", "ENRAGE: Increased Physical Dmg + attack speed by 30% for 1 minute", 10}},
				-- Reaver Guard

	---Trash Mobs
	[16507] = {{"shattered_halls_16507_01", "Important", "Immune to MC on Heroic; Will charge opponent stunning them for 2 sec", 10}}, -- Shattered Hand Sentry
	[16523] = {{"shattered_halls_16523_01", "Legion", "Arms Warrior-Type Mob", 20},
				{"shattered_halls_16523_02", "Defensives", "Use defensives as needed when mob is buffed with Slice and Dice (Increased attack speed by 30% for 8 sec)", 10}},
				-- Shattered Hand Savage
	[16593] = {{"shattered_halls_16593_01", "Important", "Immune to MC in Heroic", 20},
				{"shattered_halls_16593_02", "Important", "Remove Curse of the Shattered Hand (Damage taken increased by 15%, damage done increased by 5%) from tank", 10}},
				-- Shattered Hand Brawler
	[16594] = {{"shattered_halls_16594_01", "Legion", "Healing Priest-Type Mobs", 20},
				{"shattered_halls_16594_02", "Interrupts", "Interrupt: Prayer of Healing (3 sec AoE Heal); Mob can also be CC'd", 10}},
				-- Shadowmoon Acolyte
	[16699] = {{"shattered_halls_16699_01", "Legion", "Immune to Mind Control on Normal and Heroic difficulties", 20},
				{"shattered_halls_16699_02", "Important", "Hand Reaver will knock back player. Tank should have back against wall when fighting when this mob is present", 10}},
				-- Shattered Hand Reaver
	[16700] = {{"shattered_halls_16700_01", "PriorityTargets", "When one of his squad dies, he will call for a replacement. If you kill this mob first, replacements won't come for the others anymore", 10}},
				-- Shattered Hand Legionnaire
	[16704] = {{"shattered_halls_16704_01", "Important", "Dispel Viper Sting (Poison; Drains mana from player) from mana-user (esp if it's healer)", 10}},
				-- Shattered Hand Sharpshooter
	[17083] = {{"shattered_halls_17083_01", "Legion", "", 10}}, -- Fel Orc Convert
	[17301] = {{"shattered_halls_17301_01", "Important", "HEROIC-only mob. Due to the quest present on this difficulty, this mob needs to die quickly to ensure people on quest can make timer.", 10}},
				-- Shattered Hand Executioner
	[17356] = {{"shattered_halls_17356_01", "Legion", "AoE mobs down", 20},
				{"shattered_halls_17356_02", "TANK", "Use AoE threat ability (ie Thunder Clap/Consecration) to aggro packs while DPS AoE them", 10}},
				-- Creeping Ooze
	[17357] = {{"shattered_halls_17357_01", "Legion", "AoE mobs down", 20},
				{"shattered_halls_17357_02", "TANK", "Use AoE threat ability (ie Thunder Clap/Consecration) to aggro packs while DPS AoE them", 10}},
				-- Creeping Oozeling
	[17420] = {{"shattered_halls_17420_01", "Legion", "", 10}}, -- Shattered Hand Heathen
	[17427] = {{"shattered_halls_17427_01", "Dodge", "DODGE: Casts Flaming Arrows. You should run around these during the gauntlet event", 10}},
				-- Shattered Hand Archer
	[17461] = {{"shattered_halls_17461_01", "Legion", "", 10}}, -- Shattered Hand Blood Guard
	[17462] = {{"shattered_halls_17462_01", "Important", "Applies Hamstring to player (Physical damage +reduced movement speed)", 10}}, -- Shattered Hand Zealot
	[17464] = {{"shattered_halls_17464_01", "Defensives", "Applies Mortal Strike to target reducing healing effectiveness by 50% for 5 sec", 10}},
				-- Shattered Hand Gladiator
	[17465] = {{"shattered_halls_17465_01", "Important", "On Heroic-mode, when dealing with timer, skip these mobs", 10}}, -- Shattered Hand Centurion
	[17578] = {{"shattered_halls_17578_01", "Legion", "", 10}}, -- Hellfire Training Dummy
	[17669] = {{"shattered_halls_17669_01", "Legion", "", 10}}, -- Rabid Warhound
	[17670] = {{"shattered_halls_17670_01", "Important", "Ranged mob with pets; Can't be CC'd in Heroic difficulty", 10}}, -- Shattered Hand Houndmaster
	[17671] = {{"shattered_halls_17671_01", "Important", "Mob will use Concussion Blow (5 sec stun). This can cause issues for tank building threat if dealt at the start of fight. Once freed, the tank needs to move to pickup/continue to build aggro!", 10}},
				-- Shattered Hand Champion
	[17693] = {{"shattered_halls_17693_01", "Legion", "", 10}}, -- Shattered Hand Scout
	[17694] = {{"shattered_halls_17694_01", "Important", "Warlock-Type Mob", 30},
				{"shattered_halls_17694_02", "Interrupts", "Interrupt: Fear", 20},
				{"shattered_halls_17694_03", "Dodge", "Run out of Rain of Fire when mob casts it at selected location", 10}}, -- Shadowmoon Darkcaster
	[17695] = {{"shattered_halls_17695_01", "Legion", "Stealthed/Rogue-Type Mobs", 20},
				{"shattered_halls_17695_02", "Important", "When they first aggro they will sap a random player (usually the player taking point) and proceed to assault other players. This mob should be CC'd while the tank/healer is sapped", 10}},
				-- Shattered Hand Assassin


	------- Dungeon: The Slave Pens -----------------

	---Friendly NPCs
		[17893] = {{"slavepens_17893_01", "Legion", "Free him from cage and waves of mobs will appear. After their defeat, speak with him again to receive Nature Resist Buff +Stats", 30},
					{"slavepens_17893_02", "TANK", "Keep mobs off of Naturalist Bite NPC and you'll get a Nature Resist buff for final boss!", 20},
					{"slavepens_17893_03", "HEALER", "Keep Naturalist Bite NPC healed to ensure that you get the buff", 10}},
					-- Naturalist Bite

	---Bosses
		[17941] = {{"slavepens_17941_01", "Important", "Prior to pulling boss, make sure to deal with Adds that might pull if your boss fighting will get too close", 50},
					{"slavepens_17941_02", "PriorityTargets", "Make sure that as DPS you're swapping to his totems when he drops them", 40},
					{"slavepens_17941_03", "TANK", "While avoiding adds, backup to pull boss out of range of his totems", 30},
					{"slavepens_17941_04", "WARRIOR", "Use Spell Reflection to deal with boss' Lightning Bolts", 20},
					{"slavepens_17941_05", "SHAMAN", "Grounding Totem will absorb Lightning Bolts", 10}}, 
					-- Mennu the Betrayer
		[17991] = {{"slavepens_17991_01", "Advanced", "POSITIONING: If tank and DPS place themselves between boss and healer, healer may be able to stay out of range of Water Spit", 80},
					{"slavepens_17991_02", "TANK", "Use/Time Defensives effectively as this boss hits hard", 70},
					{"slavepens_17991_03", "HEALER", "When player is afflicted by boss' GRIEVOUS WOUND, heal them to full to drop this debuff from player", 60},
					{"slavepens_17991_04", "DAMAGE", "Players can use bandages (when not being melee attacked by boss to help healer when they are struck by GRIEVOUS WOUND debuff.", 50},
					{"slavepens_17991_05", "HEALER", "When not dealing with GRIEVOUS WOUND, healer should be prioritizing tank due to heavy hitting boss damage", 40},
					{"slavepens_17991_06", "Important", "WATER SPIT is an AoE Frost attack (use pots/resist to mitigate)", 30},
					{"slavepens_17991_07", "Important", "HEROIC MODE: Boss will ENRAGE at 20% health - save healing pots/healthstones for this phase", 20},
					{"slavepens_17991_08", "Legion", "Boss deals Frost damage thru WATER SPIT (40 yd range). Use Frost Resistance Aura/Buffs to mitigate this damage", 10}}, 
					-- Rokmar the Crackler
		[17942] = {{"slavepens_17942_01", "Legion", "Deals Nature damage - all player should use proper Nature resist gear/pots for fight", 50},
					{"slavepens_17942_02", "Important", "Grab Naturalist Bite's Nature resist buff BEFORE engaging boss - adds will spawn when you free him from cage", 40},
					{"slavepens_17942_03", "Advanced", "POSITIONING: Tank should have boss turned away from group (preferably with back against wall) to avoid group tanking heavy cleave damage and knockback ability. Other players need to make sure that they are spread out and NOT standing near Naturalist Bite as ground Nature AoE will kill NPC", 30},
					{"slavepens_17942_04", "Important", "POISON BOLT VOLLEY: Wide radius ignoring LoS (Nature Damage +DoT).", 20},
					{"slavepens_17942_05", "Important", "If you can dispel POISON, you should be doing this!", 10}}, 
					-- Quagmirran

	---Mennu's Totems
		[18176] = {{"slavepens_18176_01", "Important", "Lasts 30 sec; Immobalizes nearby players (may need ranged players to deal with totem.", 10}}, -- Tainted Earthgrab Totem
		[18177] = {{"slavepens_18177_01", "PriorityTargets", "Lasts 60 sec; Reduces melee damage boss takes by 50%", 10}}, -- Tainted Stoneskin Totem
		[18179] = {{"slavepens_18179_01", "PriorityTargets", "Deals AoE Fire damage to players after 18 sec OR if it is attacked - if you can kill the boss w/in 18 sec window or pull boss out of range of Nova totem, you should leave this totem alone!", 10}}, -- Corrupted Nova Totem
		[20208] = {{"slavepens_20208_01", "PriorityTargets", "Lasts 30 sec; Periodically heals boss", 10}}, -- Mennu's Healing Ward

	---Trash Mobs
		[17816] = {{"slavepens_17816_01", "Defensives", "Tank may need pop defensive CD/receive extra heals when struck by Piercing Jab (reduces player's armor by 15% for 20 sec)", 10}}, 
					-- Bogstrok
		[17817] = {{"slavepens_17817_01", "Important", "Dispel Decayed Strength (weak disease) from Strength using players (such as tank) as this reduces strength for 5 minutes", 10}}, 
					-- Greater Bogstrok
		[17938] = {{"slavepens_17938_01", "Legion", "Mob deals primarily Fire damage in form of Heavy Dynamite AoE and Immolate", 20},
					{"slavepens_17938_02", "Important", "Immune to Mind Control & Warlock's Seduction in Heroic, but vulnerable to Fear & Freezing Trap (even in Heroic difficulty)", 10}}, 
					-- Coilfang Observer
		[17940] = {{"slavepens_17940_01", "Dodge", "DODGE/RUN from Rain of Fire and Blizzard AoE effects", 10}}, -- Coilfang Technician
		[17957] = {{"slavepens_17957_01", "Important", "Tank should face these mobs away from group due to Cleave ability", 30},
					{"slavepens_17957_02", "Important", "Champion will cast Frightening Shout (AoE Fear; Instant cast)", 20},
					{"slavepens_17957_03", "Important", "Mob is immune to Mind Control in HEROIC difficulty", 10}}, -- Coilfang Champion
		[17958] = {{"slavepens_17958_01", "Important", "Mobs break CC on Normal difficulty & immune to ALL CC on Heroic-mode.", 20},
					{"slavepens_17958_02", "Important", "When these mobs come in a pack, one can be slowed/kited by a ranged DPS while tank and rest of group deal with the other Defender", 10}}, 
					-- Coilfang Defender
		[17959] = {{"slavepens_17959_01", "Defensives", "Tank may need to pop a defensive during Head Crack (15 sec reduced stamina debuff), or may need additional heals", 20},
					{"slavepens_17959_02", "Important", "This mob will stun a player (usually the tank) for 3 sec. If mob moves away from tank, they should slowed & kited while tank is stunned", 10}}, 
					-- Coilfang Slavehandler
		[17960] = {{"slavepens_17960_01", "Legion", "Arcane Mage-Type Mob", 40},
					{"slavepens_17960_02", "Important", "Mob will sometimes cast Domination (10 sec mind-control) on a player. That player should be CC'd or stunned.", 30}, 
					{"slavepens_17960_03", "Important", "Mob is vulnerable to all forms of CC in Normal/Heroic including Mind-Control", 20},
					{"slavepens_17960_04", "Legion", "Decayed Intellect can be removed from player (magic-effect lasts 20 sec reducing player intellect by 25%)", 10}},
					-- Coilfang Soothsayer
		[17961] = {{"slavepens_17961_01", "Legion", "Immune to Mind-Control on Heroic difficulty", 40},
					{"slavepens_17961_02", "PriorityTargets", "Enchantress will sometimes MC players. This player should be stunned/CC'd ", 30},
					{"slavepens_17961_03", "Important", "Players should run out of Lightning Cloud", 20},
					{"slavepens_17961_04", "Important", "Dispel Entangling Roots (magic-effect) from players when mob casts Lightning Cloud", 10}}, 
					-- Coilfang Enchantress
		[17962] = {{"slavepens_17962_01", "Legion", "Can be CC'd, but Immune to Mind-Control on Heroic", 20},
					{"slavepens_17962_02", "PriorityTargets", "Dispel Cripple from player (Magic effect; Reduces movement speed by 50%, strength reduced by 50% and time between attacks increased by 100%; lasts 15 sec)", 10}}, 
					-- Coilfang Collaborator
		[17963] = {{"slavepens_17963_01", "Legion", "Ignore these mobs and instead focus on their naga masters", 10}}, -- Wastewalker Slave
		[17964] = {{"slavepens_17964_01", "Legion", "Ignore these mobs and instead focus on their naga masters", 10}}, -- Wastewalker Worker
		[21126] = {{"slavepens_21126_01", "PriorityTargets", "Interrupt: Heal", 20},
					{"slavepens_21126_02", "Important", "On Normal & Heroic Mode, mob is vulnerable to all forms of CC, including Mind-Control", 10}}, 
					-- Coilfang Scale-Healer
		[21127] = {{"slavepens_21127_01", "Important", "Dispel Deadly Poison from player (Nature DoT lasting 15 sec)", 10}}, -- Coilfang Tempest
		[21128] = {{"slavepens_21128_01", "PriorityTargets", "Mob will cast Psychic Horror (AoE Fear). Make sure to DPS these pets down quickly", 10}}, 
					-- Coilfang Ray <Observer's Pet>


	------- Dungeon: The Underbog -------------------

	---Bosses
		[17770] = {{"underbog_17770_01", "Important", "Immune to CC.", 60},
					{"underbog_17770_02", "Important", "Before fight begins, you will need to deal with 2 Bog Giants (both pull when one is pulled). One of them can be kited by a DPS who then jumps off ledge, allowing grp to fight one Bog Lord at a time", 50},
					{"underbog_17770_03", "Legion", "If your group is too weak to deal with both Bog Giants at once, focus down one as that one will not respawn if you wipe to the second", 40},
					{"underbog_17770_04", "Advanced", "POSITIONING: It is helpful for DPS and Healer to stand close together so that they move (around the boss) as a group to avoid mushrooms", 30},
					{"underbog_17770_05", "PriorityTargets", "When boss summons an Underbog Mushroom, ALL players (tank included) need to run away from it as it causes MASSIVE AoE damage! (showing nameplates can be helpful to see these mushrooms spawn and adjust accordingly)", 20},
					{"underbog_17770_06", "Dodge", "RUN AWAY: All players (tank included) needs to run away from boss at 20% as boss leeches health with AoE Foul Spores ability (Lasts 11 seconds)", 10}}, 
					-- Hungarfen
		[18105] = {{"underbog_18105_01", "Advanced", "POSITIONING: Tank should have boss turned away from group. DPS/Heals need to stand at sides to avoid frontal attack & tail sweep", 10}}, 
					-- Ghaz'an
		[17826] = {{"underbog_17826_01", "Important", "Prior to starting fight, defeat the nearby Underbog Lord so that this guy isn't pulled with boss", 60},
					{"underbog_17826_02", "Advanced", "POSITIONING: Stand with backs against a wall to avoid knockback from Musel'ek, and all players should stack on boss to avoid majority of his ranged abilities (including Aimed Shot).", 50},
					{"underbog_17826_03", "Important", "Due to heal interrupts, keeping HoTs up will be especially helpful to preserve group", 40},
					{"underbog_17826_04", "TANK", "TANK should build threat on Claw first before switching back to Musel'ek.", 30},
					{"underbog_17826_05", "HEALER", "Priority heals to player (esp tank) if afflicted by ECHOING ROAR AoE debuff (reduces armor by 50-82% depending on difficulty; 10 yd range)", 20},
					{"underbog_17826_06", "TANK", "After Freezing Trap Effect (5 sec trap to players within 50 yds), tank needs to get back in melee of boss ASAP", 10}}, 
					-- Swamplord Musel'ek
		[17827] = {{"underbog_17827_01", "Important", "Make sure TANK can build up sufficient threat on this guy before engaging boss and this add. Claw turns friendly when at 20%", 30},
					{"underbog_17827_02", "Important", "ECHOING ROAR: AoE ability reducing players' within 10 yds armor by 50% on normal-mode (82% on heroic). If this is the tank, they will need to pop additional defensives and receive big heals for 20 sec debuff.", 20},
					{"underbog_17827_03", "Important", "Stack Claw on top of Musel'ek to negate Claw's FERAL CHARGE +knockback", 10}}, 
					-- Claw <Swamplord Musel'ek's Pet>
		[17882] = {{"underbog_17882_01", "Advanced", "POSITIONING: Players should spread as much as possible to mitigate number of players hit by boss' Chain Lightning. Spreading will also mitigate number of players struck with Static Charge (AoE Nature DoT)", 120},
					{"underbog_17882_02", "Defensives", "As boss hits tank hard, defensives will need to be timed and healer should keep tank as close to max health as much and as often as possible!", 110},
					{"underbog_17882_03", "Dodge", "DODGE: If struck by Static Charge (30 yd AoE Nature DoT), run away from nearby players. If tank is struck, other players will need to run from the tank", 100},
					{"underbog_17882_04", "Important", "LEVITATE: Boss will levitate a player into the air", 90},
					{"underbog_17882_05", "Legion", "LEVITATE: By standing near small mushrooms, players can mitigate this boss ability (some abilities can allow players to also break free", 80},
					{"underbog_17882_06", "PRIEST", "Use DISPEL MAGIC to dispel boss' Levitate from yourself/other player and then cast your own Levitate ability to avoid fall damage", 70},
					{"underbog_17882_07", "PRIEST", "When falling from Levitate, cast Levitate on yourself/other player to mitigate their fall damage", 60},
					{"underbog_17882_08", "PALADIN", "Use CLEANSE to dispel Levitate from yourself or another player", 50},
					{"underbog_17882_09", "WARLOCK", "Felhunter's can Dispel levitate", 40},
					{"underbog_17882_10", "MAGE", "Use Blink to escape from Levitate and then Slow Fall", 30},
					{"underbog_17882_11", "DRUID", "Feral Druid (Bear Form) can use Feral Charge to break free from Levitate and avoid fall damage", 20},
					{"underbog_17882_12", "HEALER", "Players that are levitated will need be topped off to ensure they can survive fall damage. They will also need additional heals when they actually receive the fall damage (unless that damage can be slowed)", 10}}, 
					-- The Black Stalker

	---Ghaz'an's (possible) Buddy
		[18107] = {{"underbog_18107_01", "Important", "Defeat Tidewrath before Ghaz'an reaches and eats him and \n you will be awarded bonus loot (even if you wipe on boss, but \n manage to take down Tidewrath).", 10}}, -- Overseer Tidewrath (Removed shortly after TBC retail release and may not be part of TBC Classic

	---Black Stalker Summoned Adds
		[22299] = {{"underbog_22299_01", "PriorityTargets", "DPS need to focus down adds before going back to boss; summoned ~every 10 sec.", 20},
					{"underbog_22299_02", "Interrupts", "Interrupt: Lightning Bolt (Deals Nature Damage)", 10}}, -- Spore Strider

	---Trash Mobs
		[17723] = {{"underbog_17723_01", "Important", "Immune to all forms of CC and Snares (Traps)! On HEROIC mode (esp when in pairs) can hit pretty hard. They move slowly and can be kited (helpful when in pairs)", 10}}, -- Bog Giant
		[17724] = {{"underbog_17724_01", "TANK", "Do NOT turn your back to this mob when it is attacking as it deals increased damage from behind. If you need to pull this mob away from another pat: backup or strafe", 10}}, -- Underbat
		[17725] = {{"underbog_17725_01", "Defensives", "Defensives may be needed for this mob as Wild Growth increases physical damage it deals by 50%", 10}}, 
					-- Underbog Lurker
		[17726] = {{"underbog_17726_01", "Legion", "", 10}}, -- Wrathfin Myrmidon
		[17727] = {{"underbog_17727_01", "Important", "Enemy uses Shield Bash (Interrupting a player's cast)", 10}}, -- Wrathfin Sentry
		[17728] = {{"underbog_17728_01", "Legion", "", 10}}, -- Murkblood Tribesman
		[17729] = {{"underbog_17729_01", "Legion", "Ranged Hunter-Type Mob", 20},
					{"underbog_17729_02", "Important", "CC this mob/dispel Viper Sting from players (Drains player mana over 8 sec). If no one in the group can CC this mob, it should be a priority target!", 10}},
					-- Murkblood Spearman
		[17730] = {{"underbog_17730_01", "Legion", "Healer-Type Mob", 30},
					{"underbog_17730_02", "Interrupts", "INTERRUPT: Holy Light (Big heal to an ally; 2.5 sec cast; 40 yd range)", 20},
					{"underbog_17730_03", "Interrupts", "INTERRUPT: Prayer of Healing (Moderate AoE heal to allies; 3 sec cast time)", 10}}, -- Murkblood Healer
		[17731] = {{"underbog_17731_01", "Interrupts", "INTERRUPT: Psychic Horror (1.5 sec cast; 10 yd range; Causing player to be feared for 3 sec", 20},
					{"underbog_17731_02", "TANK", "Due to Psychic Horror, make sure that you aren't too close to nearby groups when you pull this mob, otherwise a fear may cause you to pull mobs you weren't ready to engage", 10}}, 
					-- Fen Ray
		[17732] = {{"underbog_17732_01", "Important", "Dispel POISON SPIT (Nature DoT lasting 10 sec) disease from player", 10}}, -- Lykul Wasp
		[17734] = {{"underbog_17734_01", "Important", "Deals a knockback ability to a player", 20},
					{"underbog_17734_02", "Important", "Mob has an enrage where they grow larger over time and should be burned down quickly to mitigate strong attacks", 10}}, 
					-- Underbog Lord
		[17735] = {{"underbog_17735_01", "Legion", "This mob has an enrage effect and should be focused down to mitigate damage as a result of this ability", 20},
					{"underbog_17735_02", "Important", "Enemy uses Shield Bash (Interrupting a player's cast)", 10}}, 
					-- Wrathfin Warrior
		[17771] = {{"underbog_17771_01", "Legion", "Mob uses a combination of Shadow, Frost, and Fire abilities", 20},
					{"underbog_17771_02", "Important", "Dispel Magic AMPLIFY DAMAGE from player (increases physical & magical damage player takes by 30% for 6 sec)", 10}}, 
					-- Murkblood Oracle
		[17871] = {{"underbog_17871_01", "Interrupts", "INTERRUPT: Fungal Regrowth (40 yd range; 2 sec cast; Heals ally for initial amount also applying HoT to that ally", 30},
					{"underbog_17871_02", "Interrupts", "INTERRUPT: Itchy Spores (15 yd range; Deals Nature DoT to player lasting 10 sec)", 20},
					{"underbog_17871_03", "Important", "Dispel Disease: Itchy Spores from players if unable to interrupt this ability", 10}}, 
					-- Underbog Shambler
		[17990] = {{"underbog_17990_01", "Dodge", "RUN AWAY! Spore Cloud, from this object, deals AoE Nature Damage", 10}}, -- Underbog Mushroom
		[19632] = {{"underbog_19632_01", "Defensives", "DEFENSIVE: May be needed for tank/targeted player to pop CDs during Stinger Rage", 20},
					{"underbog_19632_02", "Important", "Vulnerable to CC even on Heroic-mode", 10}}, -- Lykul Stinger
		[20465] = {{"underbog_20465_01", "Important", "Why are you swimming with the fishes?", 10}}, -- Underbog Frenzy


	------- Dungeon: The Steam Vaults ---------------

	---Bosses
		[17797] = {{"steamvaults_17797_01", "Legion", "Boss deals Nature damage; Adds deal Frost damage (Nature resist should be prioritized if only have one option and have no Frost Aura for group from Paladin)", 50},
					{"steamvaults_17797_02", "Important", "Tank should focus on boss and use AoE threat (such as Thunderclap) on adds. DPS need to focus down the adds (or banish one of them) before going after boss. Adds will despawn once boss dies.", 40},
					{"steamvaults_17797_03", "Important", "Dispel: Enveloping Wind esp if applied to tank/healer (magic effect applied to player stunning them for 6 sec)", 30},
					{"steamvaults_17797_04", "Dodge", "DODGE/RUN: Watch for Lightning Cloud and run out of it (deals AoE Nature damage)", 20},
					{"steamvaults_17797_05", "Important", "HEROIC-mode: Boss will cast two Lightning Clouds at a time", 10}}, 
					-- Hydromancer Thespia
		[17796] = {{"steamvaults_17796_01", "Advanced", "POSITIONING: Only the tank should be standing in front of boss due to Super Shrink Ray (frontal cone that reduces player damage dealt by 35% for 15 sec)", 50},
					{"steamvaults_17796_02", "Important", "At 75%, 50% and 25%, boss announces 'Tune em' up boys' and 3 repair gnomes will spawn. These should be AoE'd down ASAP", 40},
					{"steamvaults_17796_03", "Important", "Thunder Clap from Warriors or Consecration from Paladins are helpful during add phases", 30},
					{"steamvaults_17796_04", "Important", "HEROIC-mode: Boss summons an additional gnome every 7 sec", 20},
					{"steamvaults_17796_05", "Important", "HEROIC-mode: Boss has a 5 minute enrage timer and quickly one shots players!", 10}},
					-- Mekgineer Steamrigger
		[17798] = {{"steamvaults_17798_01", "TANK", "Tank the boss in the middle of the room", 90},
					{"steamvaults_17798_02", "Important", "Spell-casting players need to stop DPS on boss during Spell Reflection (white bubble around boss that reflects damage back to player).", 80},
					{"steamvaults_17798_03", "Important", "Players will be occasionally struck with Impale (Physical damage DoT)", 70},
					{"steamvaults_17798_04", "HEALER", "Most of your heals will be on the tank, but watch for impales on other players and players that are still attacking boss during boss' Spell Reflection.", 60},
					{"steamvaults_17798_05", "PriorityTargets", "DPS down Naga Distiller w/in 12 sec of boss drawing power from it to prevent boss from gaining WARLORD'S RAGE (increased boss attack speed and damage done)", 50},
					{"steamvaults_17798_06", "DAMAGE", "Save big damage CDs for Naga Distillers. While failing to destroy one distiller in the time alloted won't necessarily result in a wipe, failure to burn down multiple containers will.", 40},
					{"steamvaults_17798_07", "TANK", "When Naga Distiller activates, you should focus down the container with your DPS!", 30},
					{"steamvaults_17798_08", "Legion", "Macro to help with containers would be: /targetexact Naga Distiller", 20},
					{"steamvaults_17798_09", "Defensives", "Boss will crack a player on the head reducing their stamina for 15 sec.", 10}}, 
					-- Warlord Kalithresh

	---Thespia's Adds
		[17917] = {{"steamvaults_17917_01", "PriorityTargets", "Burn these down before boss. Warlocks can BANISH one of them", 10}}, -- Coilfang Water Elemental

	---Mekgineer Steamrigger's Adds
		[17951] = {{"steamvaults_17951_01", "PriorityTargets", "Focus down adds anytime they are up as they will heal/repair boss", 30},
					{"steamvaults_17951_02", "WARRIOR", "When adds appear, a warrior casting Thunder Clap can delay repairs conducted by adds", 20},
					{"steamvaults_17951_03", "PALADIN", "Pallys using Consecration can quickly burn Mechanics down", 10}}, -- Steamrigger Mechanic

	---Warlord Kalithresh Adds
		[17954] = {{"steamvaults_17954_01", "PriorityTargets", "When boss draws power from distiller, it must be destroyed w/in 12 sec to prevent a boss enrage!", 10}}, -- Naga Distiller

	---Trash Mobs
		[17721] = {{"steamvaults_17721_01", "Important", "Players should spread when fighting mob due to Net root casts & AoE Fire Bombs", 10}}, 
					-- Coilfang Engineer
		[17722] = {{"steamvaults_17722_01", "Important", "Interrupt/Run out of AoE from Blizzard (Channeled Frost AoE)", 10}}, -- Coilfang Sorceress
		[17800] = {{"steamvaults_17800_01", "Important", "Mob should be tanked away from players due to Cleave. Melee players hit with Cleave will require increased healing", 10}}, 
					-- Coilfang Myrmidon
		[17801] = {{"steamvaults_17801_01", "Important", "Interrupt: Fear or CC mob", 10}}, -- Coilfang Siren
		[17802] = {{"steamvaults_17802_01", "Defensives", "Applies Mortal Blow (reduced armor and attack speed for 12 sec) to Tank, during this time, tank may need to pop defensive CDs & receive extra heals", 10}}, 
					-- Coilfang Warrior
		[17803] = {{"steamvaults_17803_01", "PriorityTargets", "Interrupt: Heal or CC mob", 20},
					{"steamvaults_17803_02", "Important", "Mob should be tanked away from casters as Sonic Burst will spelllock players w/in 10 yds for 3 sec", 10}}, 
					-- Coilfang Oracle
		[17805] = {{"steamvaults_17805_01", "Important", "Will use Disarm (likely on tank) causing issue with threat building/maintaining when this happens. This mob should be slowed if it begins to move toward DPS/Healer, while tank is Disarmed", 10}}, 
					-- Coilfang Slavemaster
		[17799] = {{"steamvaults_17799_01", "Important", "Tank can use AoE threat-building abilities such as Thunder Clap/Consecration, but DPS should ignore them", 10}}, 
					-- Dreghood Slave
		[21338] = {{"steamvaults_21338_01", "Important", "Non-elite mob that should be AoE'd down", 10}}, -- Coilfang Leper
		[21694] = {{"steamvaults_21694_01", "Legion", "Deals Nature & Physical Damage; consider resistance armor/pots if undergeared", 50},
					{"steamvaults_21694_02", "Important", "Mob should be tanked away from group due to Trample (mob deals Physical AoE). Melee players struck by this may need additional healing", 40},
					{"steamvaults_21694_03", "Important", "Dispel Fungal Decay from player (Disease; Nature DoT w/momvement speed slow lasting 18 sec)", 30},
					{"steamvaults_21694_04", "Important", "Dispel Poison Bolt from player (Poison; Nature DoT lasting 10 sec)", 20},
					{"steamvaults_21694_05", "Dodge", "Run out of Disease Cloud (Nature DoT)", 10}}, -- Bog Overlord
		[21695] = {{"steamvaults_21695_01", "Important", "These mobs should be tanked with your back against the wall due to Water Sprout knockback (40 yd range; Frost Damage)", 20},
					{"steamvaults_21695_02", "Important", "Surger pops Frost Nova rooting nearby players for 8 sec", 10}}, -- Tidal Surger
		[21696] = {{"steamvaults_21696_01", "Legion", "This mob deals Frost Damage; having proper aura/resistances can be helpful in mitigating some of mob's damage", 20},
					{"steamvaults_21696_02", "Legion", "Mob has 45 yd range attack in form of Water Bolt (Instant Frost damaging ability)", 10}}, 
					-- Steam Surger
		[22891] = {{"steamvaults_22891_01", "Legion", "", 10}}, -- Second Fragment Guardian

	------- Dungeon: Mana-Tombs ---------------------

	---Bosses
	[18341] = {{"mana_tombs_18341_01", "Important", "Pulling this boss will also pull the trash in the room!", 90},
				{"mana_tombs_18341_02", "Important", "VOID BLAST (Volley of Void Bolts dealing Shadow damage +Knock back to players) - Fight mob with back against wall.", 80},
				{"mana_tombs_18341_03", "SHAMAN", "Keep Grounding Totem active as it will absorb Shadow Bolts", 70},
				{"mana_tombs_18341_04", "WARRIOR", "If you don't have a Shaman that can apply Grounding Totem, use SPELL REFLECTION to reflect the Void Blast back to boss", 60},
				{"mana_tombs_18341_05", "Important", "DARK SHELL - ALL STOP ATTACKING! (Reflects melee and spell attacks back to player, but not Hunter's ranged abilities)", 50},
				{"mana_tombs_18341_06", "Legion", "Watch for emote: 'Pandemonius shifts into the void...' to know when you should stop DPS due to Dark Shell", 40},
				{"mana_tombs_18341_07", "DRUID", "Thorns should NOT be applied to the tank due to Dark Shell", 30},
				{"mana_tombs_18341_08", "PALADIN", "Retribution Aura should NOT be used due to Dark Shell", 20},
				{"mana_tombs_18341_09", "Legion", "Shadow Resistance Buffs/Aura will be helpful with this boss", 10}},
				-- Pandemonius
	[18343] = {{"mana_tombs_18343_01", "Advanced", "POSITIONING: Melee should be behind boss, with ranged standing at max range. Tank boss away from party members to avoid Arcing Smash frontal attack", 50},
				{"mana_tombs_18343_02", "Important", "Earthquake (Deals AoE Nature damage +3 sec stun)", 40},
				{"mana_tombs_18343_03", "HEALER", "Make sure party members are topped off when Earthquake is being cast", 30},
				{"mana_tombs_18343_04", "Important", "Crystal Prison (Stuns random player in crystal; Dealing 50% of your health in damage over 5 sec as nature damage)", 20},
				{"mana_tombs_18343_05", "HEALER", "Heal up the player that is in the Crystal Prison!", 10}}, -- Tavarok
	[18344] = {{"mana_tombs_18344_01", "Legion", "Boss & Apprentice adds deal combo of Fire & Frost damage; Beacons deal Arcane Damage.", 80},
				{"mana_tombs_18344_02", "PALADIN", "Use Fire Resistance Aura (second pally can use Frost Resist Aura)", 70},
				{"mana_tombs_18344_03", "PRIEST", "Use Shadow Protection on party members", 60},
				{"mana_tombs_18344_04", "PriorityTargets", "Make sure that the Ethereal Beacons are being focused down anytime they're active!", 50},
				{"mana_tombs_18344_05", "Legion", "Watch for when boss says: 'I have such fascinating things to show you.' This is the group's warning to switch to the Beacons about to spawn", 40},
				{"mana_tombs_18344_06", "Important", "Boss often casts Frost Nova and Blinks out of melee range - bringing a group with strong ranged attacks is helpful.", 30},
				{"mana_tombs_18344_07", "Important", "Dispel Frost Nova (magic-effect) from group, or at least the tank", 20},
				{"mana_tombs_18344_08", "TANK", "When Frost Nova wears off move quickly to boss to get aggro back!", 10}},
				-- Nexus-Prince Shaffar
	[22930] = {{"mana_tombs_22930_01", "Legion", "Summonable only on HEROIC mode by a party member that has Shaffar's Stasis Chamber Key or The Eye of Haramad (the eye is not consumed on use)", 50},
				{"mana_tombs_22930_02", "Legion", "TANK: Fire Resistance gear/pots will be helpful to mitigate some boss damage during frontal-cone DOUBLE BREATH", 40},
				{"mana_tombs_22930_03", "TANK", "Tank should turn boss away from group as Yor's DOUBLE BREATH deals frontal cone of Fire Damage", 30},
				{"mana_tombs_22930_04", "Important", "Yor will use Stomp (Knockback w/10 yd range)", 20},
				{"mana_tombs_22930_05", "Important", "DPS and Healer should stand as far from boss as possible on his backside to avoid frontal fire damage +knockback", 10}},
				-- Yor <Void Hound of Shaffar> (Heroic-Only)

	---Nexus-Prince Shaffar Summoned Adds
	[18431] = {{"mana_tombs_18431_01", "PriorityTargets", "DPS should burn down these mobs down ASAP (Spawns every ~10 sec)", 10}}, -- Ethereal Beacon
	[18430] = {{"mana_tombs_18430_01", "PriorityTargets", "If Ethereal Beacons are not destroyed quickly enough, these mobs will take their place", 30},
				{"mana_tombs_18430_02", "Important", "Deal HEAVY Fire & Frost damage", 20},
				{"mana_tombs_18430_03", "Legion", "Vulnerable to CC such as Polymorph", 10}}, -- Ethereal Apprentice

	---Trash Mobs
	[18309] = {{"mana_tombs_18309_01", "Important", "Mobs will use Shield Bash (spell locks player from casting that magic school for 8 sec), mob will sometimes leave tank to interrupt your ability", 20},
				{"mana_tombs_18309_02", "HEALER", "Healer should stand some distance when dealing with these mobs to allow for advance notice of this mob approaching you", 10}},
				-- Ethereal Scavenger
	[18311] = {{"mana_tombs_18311_01", "Important", "Tank should LoS pull mob to walk into melee range, otherwise it could charge and stun a player for 2 sec.", 20},
				{"mana_tombs_18311_02", "Defensives", "Mob will apply Soul Strike (likely to tank; lasting 5 sec) which cuts the effectivess of heals received by 50%. Tanks may need to pop additional CDs and will require extra heals to stay alive", 10}},
				-- Ethereal Crypt Raider
	[18312] = {{"mana_tombs_18312_01", "PriorityTargets", "Main threat from this mob actually comes from the Ethereal Wraith that they summon. Burn adds and this mob down quickly!", 20},
				{"mana_tombs_18312_02", "Important", "Casters should stand at max range to avoid Counterspell (3 sec spell locking)", 10}},
				-- Ethereal Spellbinder
	[18313] = {{"mana_tombs_18313_01", "PriorityTargets", "Tank should LoS pull these ranged mobs. Group should DPS mob down quickly due to heavy damage from Arcane Missiles. Sorcerer summons an Arcane Fiend.", 10}},
				-- Ethereal Sorcerer
	[18314] = {{"mana_tombs_18314_01", "Important", "Mob will apply Gouge (likely on tank; lasting 4 sec). Mobs will then go after #2 on the threat meter. Use of slows/kiting will be helpful until tank can pick up aggro again", 10}},
				-- Nexus Stalker
	[18315] = {{"mana_tombs_18315_01", "Legion", "Deals mostly Fire & Physical damage", 30},
				{"mana_tombs_18315_02", "Interrupts", "INTERRUPT: Polymorph (sheeps random player)", 20},
				{"mana_tombs_18315_03", "Important", "Slow/Kite mob if it successfully Polymorphs tank", 10}}, -- Ethereal Theurgist
	[18317] = {{"mana_tombs_18317_01", "PriorityTargets", "Due to Holy Nova doing good sized heal to allies and damage to players, it is best to focus these adds down or DPS them quickly.", 20},
				{"mana_tombs_18317_02", "Interrupts", "INTERRUPT: Heal", 10}}, -- Ethereal Priest
	[18331] = {{"mana_tombs_18331_01", "Important", "LoS pull these ranged mobs", 20},
				{"mana_tombs_18331_02", "Interrupts", "INTERRUPT: Mana Burn", 10}}, -- Ethereal Darkcaster
	[18394] = {{"mana_tombs_18394_01", "PriorityTargets", "Summoned from Ethereal Spellbinders; DPS should focus this mob down quickly as high damage Shadow Bolt Volley hits nearby players", 10}},
				-- Ethereal Wraith
	[18429] = {{"mana_tombs_18429_01", "PriorityTargets", "Deals Arcane Explosion & Counterspell on casters", 10}}, -- Arcane Fiend
	[19306] = {{"mana_tombs_19306_01", "Important", "LoS pull this mob; Ranged DPS/Healer should stand at least 10 yds away to avoid Arcane Explosion AoE", 40},
				{"mana_tombs_19306_02", "PriorityTargets", "INTERRUPT: Mana Burn", 30},
				{"mana_tombs_19306_03", "Important", "Dispel Faerie Fire from especially from melee player (magic effect; reduces armor for 20 sec)", 20},
				{"mana_tombs_19306_04", "Important", "When mob dies, it will deal an Arcane Explosion AoE", 10}}, -- Mana Leech
	[19307] = {{"mana_tombs_19307_01", "PriorityTargets", "Deals Shadow Damage - Having Shadow resistance buffs/auras can help mitigate some of the damage this mob deals to group", 50},
				{"mana_tombs_19307_02", "Important", "Dispel Curse of Impotence (magical damage dealt reduced for 60 sec) from mana-using player", 40},
				{"mana_tombs_19307_03", "Defensives", "Defensive/Extra Heals when mob applies Shadows Embrace to player (40 yd range; Shadow DoT over 6 sec; Physical damage dealt decreased by 50%).", 30},
				{"mana_tombs_19307_04", "Important", "LoS pull these mobs to safe area as this mob will cast Psychic Scream (AoE Fear) as well as Death Coil fear", 20},
				{"mana_tombs_19307_05", "SHAMAN", "Use Tremor Totem to negate Psychic Scream & Death Coil fears", 10}}, -- Nexus Terror


	------- Dungeon: Auchenai Crypts ----------------

	---Bosses
	[18371] = {{"shirrak_001", "TANK", "Tank the boss away from ranged DPS/Healers", 50},
				{"shirrak_002", "Important", "Casters should stand at max range due to Inhibit Magic (passive aura that slows casting speed the closer you get to boss", 40},
				{"shirrak_003", "Dodge", "Watch for emote of 'Shirrak the Dead Watchers focuses on...' Players (including the player name the boss emotes) need to run away as boss will begin to shoot fire damage at the flare location", 30},
				{"shirrak_004", "Important", "Group should burn boss down quickly before Carnivorous Bite bleed stacks get too high on tank", 20},
				{"shirrak_005", "Important", "Run away from boss during Attract Magic (Boss will pull party members to it)", 10}}, 
				-- Shirrak the Dead Watcher
	[18373] = {{"maladaar_001", "Important", "Save CDs for when boss is at 25% health due to increased damage dealt", 40},
				{"maladaar_002", "Important", "Boss deals an AoE Fear called Soul Scream", 30},
				{"maladaar_003", "SHAMAN", "Drop Tremor Totem to negate boss' AoE fear", 20},
				{"maladaar_004", "Important", "Focus down any shadow images that appear and tank should pickup Avatar of the Martyred when he spawns", 10}}, 
				-- Exarch Maladaar

	---Trash Mobs
	[18441] = {{"auchenai_18441_01", "PriorityTargets", "Focus on this mob when summoned by Maladaar", 10}}, -- Stolen Soul
	[18478] = {{"auchenai_18478_01", "Legion", "", 10}}, -- Avatar of the Martyred
	[18493] = {{"soulpriest_001", "Important", "Dispel Touch of the Forgotten (esp from tank) as it reduces their heals taken for 3 minutes", 10}}, 
				-- Auchenai Soulpriest
	[18495] = {{"vindicator_001", "Important", "TEST: Auchenai Vindicator uses the new tip format with tip IDs and weight.", 20},
				{"vindicator_002", "TANK", "Keep this mob faced away from the group if it is hitting hard during the pull.", 10}}, -- Auchenai Vindicator
	[18497] = {{"monk_001", "TANK", "Monk should be tanked away from group!", 40},
				{"monk_002", "Important", "Deals an AoE Knockback - keep backs against walls to avoid pulling unplanned groups", 30},
				{"monk_003", "Important", "Immune to polymorph & rogue sapping", 20},
				{"monk_004", "Important", "Casters/Healers should not stand in melee range of this mob due to the interrupt and spell lock from Counter Kick", 10}}, 
				-- Auchenai Monk
	[18498] = {{"auchenai_18498_01", "Important", "DPS/TANK: Avoid using abilities that are not instant-cast as this mob will shield bash players and spell lock them", 20},
				{"auchenai_18498_02", "HEALER", "This mob has will Shield Bash players (Interrupts player cast and spell locks) - Apply HoT to tank if possible", 10}}, 
				-- Unliving Soldier
	[18499] = {{"auchenai_18499_01", "Legion", "", 10}}, -- Unliving Sorcerer
	[18500] = {{"auchenai_18500_01", "PriorityTargets", "This mob is a healer", 20},
				{"auchenai_18500_02", "Interrupts", "Interrupt: Major Heal (3 sec cast; Heals ally)", 10}}, 
				-- Unliving Cleric
	[18501] = {{"auchenai_18501_01", "Important", "Dispel Spirit Vengeance (magic) from mob (increases mob attack attack speed by 50% and movement speed by 40%)", 10}}, 
				-- Unliving Stalker
	[18503] = {{"auchenai_18503_01", "PriorityTargets", "Due to them being able to cast a 60 sec MC on a player, these should be burned down ASAP", 10}}, 
				-- Phantasmal Possessor
	[18506] = {{"auchenai_18506_01", "Important", "Casts RAGE (4.5 sec cast dealing AoE Knockback). This can be unpleasant esp when on the bridge to Shirrak as it could knock you to your death", 10}}, 
				-- Raging Soul
	[18521] = {{"auchenai_18521_01", "Legion", "", 10}}, -- Raging Skeleton
	[18524] = {{"auchenai_18524_01", "Legion", "", 10}}, -- Angered Skeleton
	[18556] = {{"auchenai_18556_01", "Important", "DPS/TANK: Avoid using abilities that are not instant-cast as this mob will shield bash players and spell lock them", 20},
				{"auchenai_18556_02", "HEALER", "This mob has will Shield Bash players (Interrupts player cast and spell locks) - Apply HoT to tank if possible", 10}}, 
				-- Phasing Soldier
	[18557] = {{"auchenai_18557_01", "PriorityTargets", "This mob is a healer", 20},
				{"auchenai_18557_02", "Interrupts", "Interrupt: Major Heal (3 sec cast; Heals ally)", 10}}, 
				-- Phasing Cleric
	[18558] = {{"auchenai_18558_01", "Legion", "", 10}}, -- Phasing Sorcerer
	[18559] = {{"auchenai_18559_01", "Important", "Dispel Spirit Vengeance (magic) from mob (increases mob attack attack speed by 50% and movement speed by 40%)", 10}}, 
				-- Phasing Stalker
	[18700] = {{"auchenai_18700_01", "Important", "Mob will sunder target's armor reducing its effectiveness", 10}}, 
				-- Reanimated Bones
	[18702] = {{"auchenai_18702_01", "Important", "Dispel magic from player struck by Seed of Corruption. If no dispellers, have this player run away from other party members (or have party members run away if it is the tank that was hit by it)", 10}}, 
				-- Auchenai Necromancer


	------- Dungeon: Sethekk Halls ------------------

	---Bosses
	[18472] = {{"sethekk_18472_01", "Legion", "Boss has two phase encounter - a boss only phase and add phase. Depending on grp makeup, plan kill order on elementals during add phase", 70},
				{"sethekk_18472_02", "Advanced", "PHASE 1", 60},
				{"sethekk_18472_03", "Important", "Players should spread as much as possible to mitigate some of the group damage taken from Chain Lightning", 50},
				{"sethekk_18472_04", "Advanced", "PHASE 2 - Adds Phase (occurs when boss at 90%, 55% and 10% HP)", 40},
				{"sethekk_18472_05", "Important", "Each add is immune to damage from their type (Fire Mage shouldn't attack Fire Elemental, and Warlock shouldn't deal Shadow damage to Shadow Elemental) & Shadow Elemental is immune to Fear and Banish from a Warlock - It is best to assist tank and DPS these mobs one at a time, rather than cleave/AoEing them down", 30},
				{"sethekk_18472_06", "TANK", "When ADD phase begins, tank should use AoE taunting abilities (such as Consecration/Thunder Clap) to pick up adds", 20},
				{"sethekk_18472_07", "DAMAGE", "Focus down summoned elementals before swapping back to the boss. Alternatively, a Priest or Warlock can do an AoE Fear to the Fire, Frost and Arcane elementals when they spawn", 10}},
				-- Darkweaver Syth
	[18473] = {{"sethekk_18473_01", "PriorityTargets", "When boss reaches 80%, 50% and 25%, he'll blink to a random player location and begin casting Arcane Explosion. Line-of-sight MUST be broken by standing behind a pillar not in sight of boss or it will one-shot you!", 40},
				{"sethekk_18473_02", "Important", "Boss will apply Polymorph to a random party member (can be tank or healer) and lasts 5 seconds. DPS should make sure to not push Arcane Explosion phase transition while party member is sheeped, as they will be vulnerable to being one-shot.", 30},
				{"sethekk_18473_03", "SHAMAN", "Shaman using GROUNDING TOTEM on HEROIC can prevent tank, or other player from being polymorphed!", 20},
				{"sethekk_18473_04", "Important", "Healer and Tank can have a PVP trinket to break themselves free of Polymorph (if you don't have a Shaman w/Grounding Totem). If healer can't be broken from Polymorph (based on group dynamic and healer trinket choices), you should plan ahead to utilize a secondary healer if the main healer is sheeped", 10}}, -- Talon King Ikiss
	[23035] = {{"sethekk_23035_01", "Legion", "Boss deals a combo of Physical Damage and Shadow Damage (having resistance aura/pots) can be helpful to help mitigate", 70},
				{"sethekk_23035_02", "Advanced", "Players should stack on the boss to deal AoE during bird phase.", 60},
				{"sethekk_23035_03", "Important", "Casters (esp healers) afflicted with Spell Bomb need to STOP using their abilities as it will drain mana and cause damage to that player. If the healer is afflicted with this, an off-healer should pick up the slack during the 8 sec debuff", 50},
				{"sethekk_23035_04", "Important", "At 66% and 33%, boss will banish itself and summon birds (boss unbanishes when all birds are dead or after 1 min, whichever comes first).", 40},
				{"sethekk_23035_05", "DAMAGE", "While summoned birds are active, DPS should focus on AoE'ing them down before swapping back to a potentially unbanished boss", 30},
				{"sethekk_23035_06", "TANK", "Be ready to pick up Anzu when it is unbanished!", 20},
				{"sethekk_23035_07", "Important", "If Druid is in party, their using a HoT on these statues will allow them to assist you. Keeping Eagle, Hawk and Falcon Spirits alive can provide benefits you during boss fight. They are the Eagle (AoE damage), Hawk (mitigation) and Falcon (Haste) Spirits", 10}}, 
				-- Anzu (Heroic-Only)

	---Darkweaver Syth Summoned Elementals
	[19203] = {{"sethekk_19203_01", "PriorityTargets", "Focus on elemental adds when they're up before going back to boss!", 30},
				{"sethekk_19203_02", "Legion", "Immune to Fire Damage!", 20},
				{"sethekk_19203_03", "Important", "Deals Fire damage (+Fire DoT) with stacking debuff to players that increases their Fire damage taken", 10}}, 
				-- Syth Fire Elemental
	[19204] = {{"sethekk_19204_01", "PriorityTargets", "Focus on elemental adds when they're up before going back to boss!", 30},
				{"sethekk_19204_02", "Legion", "Immune to Frost Damage!", 20},
				{"sethekk_19204_03", "Important", "Deals Frost damage with stacking debuff to players that increases their Frost damage taken", 10}}, 
				-- Syth Frost Elemental
	[19205] = {{"sethekk_19205_01", "PriorityTargets", "Focus on elemental adds when they're up before going back to boss!", 30},
				{"sethekk_19205_02", "Legion", "Immune to Arcane Damage!", 20},
				{"sethekk_19205_03", "Important", "Deals Arcane damage with stacking debuff to players that increases their Arcane damage taken", 10}}, 
				-- Syth Arcane Elemental
	[19206] = {{"sethekk_19206_01", "PriorityTargets", "Focus on elemental adds when they're up before going back to boss!", 30},
				{"sethekk_19206_02", "Legion", "Immune to Shadow Damage and only elemental immune to Fear & Banish!", 20},
				{"sethekk_19206_03", "Important", "Deals Shadow damage with stacking debuff to players that increases their Shadow damage taken", 10}}, 
				-- Syth Shadow Elemental

	---Trash Mobs
	[18318] = {{"sethekk_18318_01", "Important", "When Spell Reflection is applied, stop casting against this mob and melee instead", 10}}, 
				-- Sethekk Initiate
	[18319] = {{"sethekk_18319_01", "Interrupts", "INTERRUPT: Flash Heal", 40},
				{"sethekk_18319_02", "PriorityTargets", "If no priest/hunter is present to CC this mob, it should be priority kill due to instant heal Rejuvenation", 30},
				{"sethekk_18319_03", "PRIEST", "Can be Shackled", 20},
				{"sethekk_18319_04", "HUNTER", "Can be Trapped", 10}}, -- Time-Lost Scryer
	[18320] = {{"sethekk_18320_01", "Important", "Dispel Curse of the Dark Talon from player (Debuff causes player to take increased physical damage +Reduces player stamina)", 50},
				{"sethekk_18320_02", "Important", "If player has Curse of the Dark Talon, they should stop DPS until it falls off or is dispelled as their attacks can trigger Rend on themselves (Physical Bleed)", 40},
				{"sethekk_18320_03", "MAGE", "Spellsteal (lvl 70 ability) Arcane Destruction buff", 30},
				{"sethekk_18320_04", "PRIEST", "Can be Shackled", 20},
				{"sethekk_18320_05", "HUNTER", "Can be Trapped", 10}}, -- Time-Lost Shadowmage
	[18321] = {{"sethekk_18321_01", "Important", "Casts Avenger Shield causing multiple players to become dazed", 20},
				{"sethekk_18321_02", "Important", "Dispel magic Talon of Justice (Stuns player for 5 sec from player (esp if tank/healer)", 10}}, 
				-- Sethekk Talon Lord
	[18322] = {{"sethekk_18322_01", "Important", "Howling Screech is applied to player (magic ability reducing movmement speed and damage dealt; Dispellable if another more dangerous debuff isn't going to be applied to tank/healer)", 20},
				{"sethekk_18322_02", "Important", "Has an Enrage effect, use debuffs such as Warlock's Curse of Weakness to reduce damage these mobs deal to tank.", 10}}, 
				-- Sethekk Ravenguard
	[18323] = {{"sethekk_18323_01", "Important", "Deals Thunder Clap AoE (10 yd range); HEROIC version also is immune to CC", 20},
				{"sethekk_18323_02", "TANK", "These should be tanked away from ranged DPS and Healer", 10}}, -- Sethekk Guard
	[18325] = {{"sethekk_18325_01", "PriorityTargets", "DPS this down ASAP or use CC - Fears up to 4 players w/in 8 yards.", 10}}, 
				-- Sethekk Prophet
	[18326] = {{"sethekk_18326_01", "Legion", "", 10}}, -- Sethekk Shaman
	[18327] = {{"sethekk_18327_01", "PriorityTargets", "Mob drops a Charm Totem that mind-controls player for 30 sec", 30},
				{"sethekk_18327_02", "Important", "Vulnerable to Shackle Undead", 20},
				{"sethekk_18327_03", "MAGE", "Spellsteal (lvl 70 ability) Arcane Destruction buff", 10}}, 
				-- Time-Lost Controller
	[18328] = {{"sethekk_18328_01", "Interrupts", "INTERRUPT: Arcane Lightning (1.5 sec cast; Chain Lightning-Type ability w/4 sec spell silence) - If no interrupts available, casters should STOP casting to avoid spell school being silenced (esp healer)", 10}}, 
				-- Sethekk Oracle
	[18701] = {{"sethekk_18701_01", "Legion", "Elemental add summoned by Sethekk Shaman", 10}}, -- Dark Vortex
	[19428] = {{"sethekk_19428_01", "Legion", "Deals Nature damage in form of Lightning Breath", 30},
				{"sethekk_19428_02", "Important", "Wing Buffet deals knockback to players in front of mob", 20},
				{"sethekk_19428_03", "Important", "When dealing with a pack/individual with this mob present, tank mob away from ranged DPS and Healer & have your back close against a wall to counteract mob's knockback", 10}}, 
				-- Cobalt Serpent
	[19429] = {{"sethekk_19429_01", "Important", "Sonic Charge rushes a player dealing damage +knockback to player - can get serious if mob is left alive too long!", 20},
				{"sethekk_19429_02", "Important", "Players can counteract knockback by having everyone stand with their backs to the wall.", 10}}, -- Avian Darkhawk
	[20343] = {{"sethekk_20343_01", "PriorityTargets", "Summoned by Time-Lost Controller; Totem Mind-Controls players for 30 seconds", 10}}, 
				-- Charming Totem
	[21891] = {{"sethekk_21891_01", "Legion", "", 10}}, -- Avian Ripper
	[21904] = {{"sethekk_21904_01", "Important", "Swoop is an ability that deals frontal-cone damage +applies 2 sec stun to ones struck - Stand behind mob unless you're the tank!", 10}}, 
				-- Avian Warhawk
	[23132] = {{"sethekk_23132_01", "PriorityTargets", "Screech ability reduces attack power of players w/in 20 yds for 8 seconds", 10}}, 
				-- Brood of Anzu


	------- Dungeon: Shadow Labyrinth ---------------

	---Bosses
		[18731] = {{"shadow_lab_18731_01", "Advanced", "POSITIONING: Tank boss in tunnel leading into room so that healer won't lose LoS. Tank should face boss away from group so that tank is only one taking Corrosive Acid. DPS and Healer should stand behind boss. Note that if tank is feared Corrosive Acid DoT may be applied to multiple players", 40},
					{"shadow_lab_18731_02", "Important", "Boss does an AoE Fear (1.5 sec cast time), which has a 45 yd range and lasts 6 sec", 30},
					{"shadow_lab_18731_03", "SHAMAN", "Use Tremor Totem when you see boss cast Fear so that this can be quickly removed from group", 20},
					{"shadow_lab_18731_04", "WARRIOR", "Use Spell Reflection to avoid getting Feared and giving your group Corrosive Acid when boss chases you", 10}},
					-- Ambassador Hellmaw
		[18667] = {{"shadow_lab_18667_01", "Important", "Make sure that the room is cleared of ALL trash before pulling boss!", 70},
					{"shadow_lab_18667_02", "Advanced", "POSITIONING: Tank should pull boss to a corner with back against the wall to avoid AoE knockback.", 60},
					{"shadow_lab_18667_03", "Important", "DPS should blow their damaging CDs at start of fight as Incite Chaos (mind control) will cause these big CDs to activate at that time", 50},
					{"shadow_lab_18667_04", "Important", "Incite Chaos is a 15 sec MC boss applies to all players. When boss makes the statement 'Time for fun', know that the MC is coming!", 40},
					{"shadow_lab_18667_05", "Important", "To deal with Incite Chaos, players can remove their weapons, Pets can be placed on passive, Hunter can drop a freezing trap under healer, can also use Major Dreamless Sleep Potion (2 min CD) to avoid some of the Incite Chaos", 30},
					{"shadow_lab_18667_06", "Important", "WAR STOMP: Boss knockbacks players w/in 20 yards", 20},
					{"shadow_lab_18667_07", "Important", "CHARGE: Boss charges random player stunning them for 2 sec", 10}},
					-- Blackheart the Inciter
		[18732] = {{"shadow_lab_18732_01", "Legion", "Boss deals combo of Fire and Shadow Damage; Buffs/Auras can help mitigate boss' spell damage", 50},
					{"shadow_lab_18732_02", "TANK", "Kite boss if Void Traveler add approaches so DPS can burn add down (Add coming into contact w/boss deals damage +knockback +heals boss)!", 40},
					{"shadow_lab_18732_03", "DAMAGE", "When Void Travelers appear from the Void Rifts, the adds need to be killed quickly (Add coming into contact w/boss deals damage +knockback +heals boss)", 30},
					{"shadow_lab_18732_04", "Important", "When boss casts Draw Shadows, players will be teleported to his platform and he will cast a hard hitting Rain of Fire AoE on players!", 20},
					{"shadow_lab_18732_05", "Important", "HEROIC ONLY: Boss will Banish a random player making them invulnerable, but unable to attack for 6 sec", 10}},
					-- Grandmaster Vorpil
		[18708] = {{"shadow_lab_18708_01", "Important", "Nature Protection potions can be helpful to mitigate some of the damage during fight", 70},
					{"shadow_lab_18708_02", "Advanced", "POSITIONING: Except for during Sonic Boom, players should stand less than 25 yds from boss to avoid any player receiving Thundering Storm (Nature damage to target standing 25 yds or more away)", 60},
					{"shadow_lab_18708_03", "Important", "After fight starts watch for emote 'Murmur draws energy from the air...' This will be the signal for all players (including tank) to run at least 34 yds away to avoid Sonic Boom damage.", 50},
					{"shadow_lab_18708_04", "ROGUE", "Rogues can use Cloak of Shadows to avoid a Sonic Boom (if correctly timed).", 40},
					{"shadow_lab_18708_05", "Important", "Due to Resonance ability (deals Nature damage to all players when no melee in range w/increase to Nature damage), tank needs to get back in to fight boss IMMEDIATELY after Sonic Boom", 30},
					{"shadow_lab_18708_06", "Dodge", "Watch for Touch of Murmur debuff and be sure to run away from player that has the debuff. When debuff goes off, that player and any allies w/in 20 yds will be silenced", 20},
					{"shadow_lab_18708_07", "HEALER", "If the healer is afflicted by Touch of Murmur, make sure that group (esp tank) is healed up before it goes off, as will silence you for 6 sec", 10}},
					-- Murmur

	---Grandmaster Vorpil Add
		[19226] = {{"shadow_lab_19226_01", "PriorityTargets", "If Void Traveler reaches boss, it will explode dealing Shadow damage and knockback, also healing boss", 20},
					{"shadow_lab_19226_02", "TANK", "If DPS is slow in burning down Void Travelers, kite the boss to avoid them coming into contact!", 10}}, -- Void Traveler

	---Trash Mobs
		[18631] = {{"shadow_lab_18631_01", "Important", "Tank should use instant-cast abilities as mob can interrupt cast using Kick.  If aggro is lost, use slows on the mob to keep it from interrupting a caster", 10}},
					-- Cabal Cultist
		[18632] = {{"shadow_lab_18632_01", "Important", "Mobs should be tanked away from group as tank will usually have two at a time", 40},
					{"shadow_lab_18632_02", "Important", "Immune to most forms of CC", 30},
					{"shadow_lab_18632_03", "Dodge", "DODGE: Whirlwind is a channeled ability that players should run from while being cast!", 20},
					{"shadow_lab_18632_04", "DAMAGE", "When Executioner is being fought in pairs, DPS should focus each one at a time as the WW can be dangerous even to some tanks", 10}},
					-- Cabal Executioner
		[18633] = {{"shadow_lab_18633_01", "PriorityTargets", "Healer-type mob that should be CC'd or Focused down by DPS", 20},
					{"shadow_lab_18633_02", "Interrupts", "Interrupt: Heal", 10}}, -- Cabal Acolyte
		[18634] = {{"shadow_lab_18634_01", "PriorityTargets", "Mob will summon two adds to assist. The Summoner should be quickly CC'd before this, or killed before other non-summoned adds in the pack. While summoned mobs are active, these take priority.", 10}},
					-- Cabal Summoner
		[18635] = {{"shadow_lab_18635_01", "Important", "It is best for tank to fight this mob away from group due to AoE Physical damage. Melee DPS may need additional heals when engaging this type of mob", 10}},
					-- Cabal Deathsworn
		[18636] = {{"shadow_lab_18636_01", "Important", "Will quickly down non-tanks, which is why tank should take point.", 20},
					{"shadow_lab_18636_02", "WARLOCK", "After defeating first boss, warlocks should use their Succubus pet to CC assassin if they become stunned by these stealthed mobs", 10}},
					-- Cabal Assassin
		[18637] = {{"shadow_lab_18637_01", "Important", "Dispel Shadow Word: Pain (magic effect; Shadow DoT)", 20},
					{"shadow_lab_18637_02", "Interrupts", "Interrupt: Mind Flay", 10}}, -- Cabal Shadow Priest
		[18638] = {{"shadow_lab_18638_01", "Important", "Dispel Shape of the Beast from mob (Magic effect that reduces time between attacks, increased attack power, but can't cast spells). Because this buff prevents spell casting, a Warlock Felhunter's ability Devour Magic should be used. If no one can effectively remove the beneficial magic from enemy, tank may need additional heals/pop defensive CDs", 10}},
					-- Cabal Zealot
		[18639] = {{"shadow_lab_18639_01", "Important", "CC player who is mind-controlled from Brain Wash", 20},
					{"shadow_lab_18639_02", "Defensives", "Defensives may be needed if either the tank or healer gets MC'd", 10}},
					-- Cabal Spellbinder
		[18640] = {{"shadow_lab_18640_01", "Important", "Dispel Seed of Corruption from players (magic effect dealing AoE shadow damage)", 20},
					{"shadow_lab_18640_02", "Important", "If no dispeller, the player struck by Seed of Corruption should run out of group. If tank is the one hit by it, players need to run 10 yds from tank to avoid AoE", 10}},
					-- Cabal Warlock
		[18641] = {{"shadow_lab_18641_01", "Legion", "", 10}}, -- Cabal Familiar
		[18642] = {{"shadow_lab_18642_01", "PriorityTargets", "Felhounds that can spell lock players for 4 sec. Use slows while DPS focuses these mobs down", 10}},
					-- Fel Guardhound
		[18663] = {{"shadow_lab_18663_01", "PriorityTargets", "Non-elite mob that can mind-control a player for 6 sec", 30},
					{"shadow_lab_18663_02", "WARLOCK", "This mob is vulnerable to Banish & Enslave Demon", 20},
					{"shadow_lab_18663_03", "Important", "Dispel Seduction (mind-control magic effect) from player or CC that player", 10}},
					-- Maiden of Discipline
		[18794] = {{"shadow_lab_18794_01", "Legion", "This could be either the rogue-type (equipped with daggers) or a caster type (carries staff)", 60},
					{"shadow_lab_18794_02", "Advanced", "Caster-Type w/Staff", 50},
					{"shadow_lab_18794_03", "Legion", "Mob deals a combination of Fire/Frost damage", 40},
					{"shadow_lab_18794_04", "Important", "Dispel Frost Nova (AoE Magic Root) from tank (if only can do one dispel) or players (if using priest's Mass Dispel)", 30},
					{"shadow_lab_18794_05", "Advanced", "Rogue-Type w/Daggers", 20},
					{"shadow_lab_18794_06", "Important", "Will frequently use Gouge (3 sec stun) on the tank. While tank is unable to use avoidance, they will need extra heals!", 10}},
					-- Cabal Ritualist
		[18796] = {{"shadow_lab_18796_01", "Important", "These Felguards should be pulled away from other packs and backs against wall due to AoE Fear and Knockback", 20},
					{"shadow_lab_18796_02", "TANK", "If this mob is patrolling around the room of Hellmaw (1st boss), it is best to fight mob in the curved cooridor leading into 1st boss' room.  If you're pulling this mob from the hallway connecting Hellmaw's and Blackheart's room, they can be pulled into the now empty room where 1st boss' adds were located", 10}},
					-- Fel Overseer
		[18797] = {{"shadow_lab_18797_01", "Legion", "", 10}}, -- Tortured Skeleton
		[18830] = {{"shadow_lab_18830_01", "Important", "Use CCs or Slows on this mob; Immune to MC on Heroic", 20},
					{"shadow_lab_18830_02", "Important", "Fanatic will fixate on a player and that player will need to kite mob for 5 sec while Fixate active on that player", 10}},
					-- Cabal Fanatic
		[18848] = {{"shadow_lab_18848_01", "Legion", "Shivarra deals mostly Shadow Damage - having appropriate auras/buffs/pots/gear can be helpful in dealing with some of mob's abilities", 40},
					{"shadow_lab_18848_02", "Defensives", "Watch for Mark of the Malice (Places 5 stacks of debuff w/1 going away each time player is hit. If all 5 are expended w/in 30 sec, player receives Shadow damage)", 30},
					{"shadow_lab_18848_03", "Important", "This mob should be fought away from the group due to Shadow Nova (AoE Shadow Damage)", 20},
					{"shadow_lab_18848_04", "Important", "HEROIC-ONLY: Shivarra will Disarm the tank (lasts 5 sec) reducing tank's ability to hold threat. DPS need to watch their aggro when this happens so they don't pull off of tank. Tank may need to react quickly after disarm ends to pick aggro back up.", 10}},
					-- Malicious Instructor
		[19208] = {{"shadow_lab_19208_01", "PriorityTargets", "Summoned by Cabal Summoner", 30},
					{"shadow_lab_19208_02", "Legion", "Healer-Type Mob", 20},
					{"shadow_lab_19208_03", "Interrupts", "Interrupt: Heal", 10}}, -- Summoned Cabal Acolyte
		[19209] = {{"shadow_lab_19209_01", "PriorityTargets", "Summoned by Cabal Summoner", 40},
					{"shadow_lab_19209_02", "Legion", "Warrior-Type Mob", 30},
					{"shadow_lab_19209_03", "Important", "DPS and Healer should avoid standing too close to mob as Black Cleave deals Shadow Damage and applies a DoT", 20},
					{"shadow_lab_19209_04", "HEALER", "Deathsworn will periodically Knockdown which stuns player for 2 sec. If/when applied to tank, they will need additional heals.", 10}},
					-- Summoned Cabal Deathsworn

		[22890] = {{"shadow_lab_22890_01", "Legion", "", 10}}, -- First Fragment Guardian


	------- Dungeon: Escape from Durnholde (Old Hillsbrad Foothills) ----------

	---Bosses
		[17848] = {{"old_hillsbrad_17848_01", "Legion", "Tank n Spank fight, but be sure trash has been cleared so you aren't feared into a pat", 30},
					{"old_hillsbrad_17848_02", "Important", "Boss will cast Frightening Shout (AoE Fear w/10 yd range [as of Patch 2.3] lasting 6 sec) - Standing beyond this range to negate fear and his WW ability.", 20},
					{"old_hillsbrad_17848_03", "Defensives", "Drake applies Mortal Strike to target reducing their healing effectiveness. Tank may need to use defensive CDs to help party healer during this part.", 10}},
					-- Lieutenant Drake
		[17862] = {{"old_hillsbrad_17862_01", "Legion", "Paladin-Type Mob", 80},
					{"old_hillsbrad_17862_02", "Advanced", "KILL ORDER: Warden (Healer), Veteran (Rogue), then Skarloc (Boss)", 70},
					{"old_hillsbrad_17862_03", "TANK", "Be quick to pick up boss and use AoE to hold aggro on Veteran (Rogue)", 60},
					{"old_hillsbrad_17862_04", "DAMAGE", "Focus down Warden (Healer) before going after Veteran or Boss (tank should be focusing on these two targets at start of fight)", 50},
					{"old_hillsbrad_17862_05", "Interrupts", "INTERRUPT: Holy Light (Heals an ally)", 40},
					{"old_hillsbrad_17862_06", "HEALER", "When Tank is struck by Hammer of Justice (5 sec stun) be sure to focus your heals to keep tank topped off!", 30},
					{"old_hillsbrad_17862_07", "WARLOCK", "Immune to Curse of Tongues.", 20},
					{"old_hillsbrad_17862_08", "Important", "Stay out of Consecration at all times. If the tank, it's your job to kite the boss out of it!", 10}},
					-- Captain Skarloc
		[18096] = {{"old_hillsbrad_18096_01", "Advanced", "PHASE ONE - Trash Waves", 100},
					{"old_hillsbrad_18096_02", "Legion", "1st Wave (Trash from west/same direction as boss)", 90},
					{"old_hillsbrad_18096_03", "Legion", "2nd Wave (Trash from south - direction Thrall and players entered Tarren Mill)", 80},
					{"old_hillsbrad_18096_04", "Legion", "3rd Wave (Trash from west/same direction as boss and 1st wave)", 70},
					{"old_hillsbrad_18096_05", "Important", "After 3rd wave goes down, group should use food/water to get health/mana back up - Save your POTS!", 60},
					{"old_hillsbrad_18096_06", "Advanced", "PHASE TWO - After brief intermission, boss will land", 50},
					{"old_hillsbrad_18096_07", "TANK", "When boss lands, tank him near NW small house of Tarren Mill under the outside roof of building & keep boss faced away from group due to frontal cone Sand Breath (Reduces movement speed +reduced attack for 10 sec)", 40},
					{"old_hillsbrad_18096_08", "Important", "Players should stand as far from boss as possible due to Wing Buffet (Knocks back players w/in 15 yds)", 30},
					{"old_hillsbrad_18096_09", "Important", "Boss has Magic Distruption Aura which will periodically dispel magical effects (buffs) from players", 20},
					{"old_hillsbrad_18096_10", "Defensives", "While under the effect of Impending Death you will take increased damage. Pop Defensives. Healer focus on this player!", 10}},
					-- Epoch Hunter

	---Friendly NPCs
		[18725] = {{"old_hillsbrad_18725_01", "Important", "Click to be flown to the other side of the instance", 10}}, -- Brazen
		[18786] = {{"old_hillsbrad_18786_01", "Important", "Escort and Protect Thrall", 10}}, -- Thrall (Friendly)

	---Trash Mobs
		[17814] = {{"old_hillsbrad_17814_01", "Legion", "Protection Warrior-Type Mob", 20},
					{"old_hillsbrad_17814_02", "Important", "After mob casts Shield Block, only the first melee attack might be blocked for the next 5 sec. Avoid using big CD abilities during this 5 sec window", 10}},
					-- Lordaeron Watchman
		[17815] = {{"old_hillsbrad_17815_01", "Legion", "Ranged mobs that Shoot players", 10}}, -- Lordaeron Sentry
		[17819] = {{"old_hillsbrad_17819_01", "Important", "Mobs will cleave nearest ally to their target, so tank should pull this mob away from ranged DPS/healer. Melee DPS may need extra heals", 10}},
					-- Durnholde Sentry
		[17820] = {{"old_hillsbrad_17820_01", "Important", "Potentially dangerous with Scatter Shot (Disorients player); These mobs can be CC'd", 10}},
					-- Durnholde Rifleman
		[17833] = {{"old_hillsbrad_17833_01", "PriorityTargets", "(Priest) Healer-Type Mob", 40},
					{"old_hillsbrad_17833_02", "Important", "Can be CC'd", 30},
					{"old_hillsbrad_17833_03", "Interrupts", "INTERRUPT: Heal (Heals an ally)", 20},
					{"old_hillsbrad_17833_04", "Interrupts", "INTERRUPT: Psychic Scream (4 sec AoE Fear)", 10}}, -- Durnholde Warden
		[17840] = {{"old_hillsbrad_17840_01", "Defensives", "During Frenzy, tank may need to pop defensive CDs to mitigate some of the damage", 10}},
					-- Durnholde Tracking Hound
		[17846] = {{"old_hillsbrad_17846_01", "Legion", "", 10}}, -- Pit Spectator
		[17860] = {{"old_hillsbrad_17860_01", "Legion", "Rogue-Type Mob", 40},
					{"old_hillsbrad_17860_02", "Important", "Can be CC'd", 30},
					{"old_hillsbrad_17860_03", "Important", "KIDNEY SHOT (Stuns player for 4 sec)", 20},
					{"old_hillsbrad_17860_04", "Important", "BACKSTAB (Increased damage if mob is standing behind target)", 10}}, -- Durnholde Veteran
		[18092] = {{"old_hillsbrad_18092_01", "Important", "Will apply Mortal Strike debuff on player (Reduced healing effectiveness)", 10}},
					-- Tarren Mill Guardsman
		[18093] = {{"old_hillsbrad_18093_01", "PriorityTargets", "Mob heals, cleanses and stuns", 20},
					{"old_hillsbrad_18093_02", "Interrupts", "Interrupt: Heal", 10}}, -- Tarren Mill Protector
		[18094] = {{"old_hillsbrad_18094_01", "Important", "Dispel Curse of Infinity from player - usually the tank. (Debuff causing increased damage taken by 50%)", 10}},
					-- Tarren Mill Lookout
		[18170] = {{"old_hillsbrad_18170_01", "Defensives", "Defensive: Applies Mortal Wounds debuff to target (reduces effectiveness of healing taken by 50% for 5 sec)", 10}},
					-- Infinite Slayer
		[18171] = {{"old_hillsbrad_18171_01", "Important", "Dispel Curse of Infinity from player - usually the tank. (Debuff causing increased damage taken by 50%)", 10}},
					-- Infinite Defiler
		[18172] = {{"old_hillsbrad_18172_01", "Important", "Inflicts Shadow & Physical Damage; Cleave also hits a nearby player", 10}}, -- Infinite Saboteur
		[18673] = {{"old_hillsbrad_18673_01", "Legion", "", 10}}, -- Pit Announcer
		[18764] = {{"old_hillsbrad_18764_01", "Legion", "", 10}}, -- Durnholde Armorer
		[18765] = {{"old_hillsbrad_18765_01", "Legion", "", 10}}, -- Durnholde Cook
		[18934] = {{"old_hillsbrad_18934_01", "Important", "Mage dealing combo of Frost and Fire damage", 20},
					{"old_hillsbrad_18934_02", "Important", "CC this mob and avoid AoE - mob will Polymorph a player", 10}}, -- Durnholde Mage
		[26650] = {{"old_hillsbrad_26650_01", "Legion", "", 10}}, -- Durnholde Captain
		[28132] = {{"old_hillsbrad_28132_01", "Legion", "Ranged mob that uses Net to root players and disorient them with Scatter Shot", 10}}, -- Don Carlos
		[28163] = {{"old_hillsbrad_28163_01", "Important", "Reduces enemy's strength and agility by 10% for 30 sec", 10}}, -- Guerrero


	------- Dungeon: Opening of the Dark Portal (Black Morass) -----

	---Friendly NPCs
	[15608] = {{"black_morass_15608_01", "Legion", "", 10}}, -- Medivh
	[17023] = {{"black_morass_17023_01", "Legion", "", 10}}, -- Shadow Council Enforcer
	[17918] = {{"black_morass_17918_01", "Legion", "Summoned using Chrono-Beacon (can deal with whelps during boss portals) - speak with Sa'at for each party member to receive one", 10}},
				-- Time Keeper
	[20201] = {{"black_morass_20201_01", "Important", "Speak with him in order to receive Chrono-Beacon - you will need this to deal with small whelps that come out during boss portals and attack Medivh", 10}},
				-- Sa'at

	---Bosses
	[17879] = {{"black_morass_17879_01", "Important", "CHRONO-BEACON: Stand between boss portal and Medivh and use ONE Chrono-Beacon to summon a Time Keeper to deal with the whelps that leave the portal to attack Medivh (if you spawn your dragon too close to boss, boss will cause your dragon to despawn)!", 40},
				{"black_morass_17879_02", "Important", "HEROISM is a good idea for THIS boss - Arcane Discharge has a 50 yd range and also increases damage from next Arcane Discharge.", 30},
				{"black_morass_17879_03", "Important", "Arcane Blast (Deals Arcane Damage +Knockback)", 20},
				{"black_morass_17879_04", "TANK", "Stand with your back against a tree, or other such object to avoid boss' knockback", 10}},
				-- Chrono Lord Deja
	[17880] = {{"black_morass_17880_01", "Important", "CHRONO-BEACON: Stand between boss portal and Medivh and use ONE Chrono-Beacon to summon a Time Keeper to deal with the whelps that leave the portal to attack Medivh (if you spawn your dragon too close to boss, boss will cause your dragon to despawn)!", 110},
				{"black_morass_17880_02", "Important", "Dispel HASTEN (Magic Effect) from boss to reduce boss' damage dealt", 100},
				{"black_morass_17880_03", "Important", "Mortal Wound can be mitigated with the tank's dodge/parry/block/miss, but also with a priest's PW: Shield ability", 90},
				{"black_morass_17880_04", "Advanced", "OFF-TANK STRATEGY:", 80},
				{"black_morass_17880_05", "Important", "Boss is not tauntable. If using an off-tank, that off-tank/dps can create high threat thru specific abilities. Doing this could allow tank's Mortal Wound a chance to fall off", 70},
				{"black_morass_17880_06", "DRUID", "If off-tanking, use BEAR FORM to build threat", 60},
				{"black_morass_17880_07", "SHAMAN", "If off-tanking, use shield +Frost Shock +melee attacks to build threat", 50},
				{"black_morass_17880_08", "HUNTER", "If off-tanking, DISTRACTING SHOT can help build threat and ASPECT OF THE MONKEY +DETERRENCE can mitigate damage", 40},
				{"black_morass_17880_09", "WARLOCK", "If off-tanking, use SEARING PAIN to build threat, SOUL LINK to mitigate damage and SOUL SHATTER to drop threat", 30},
				{"black_morass_17880_10", "PALADIN", "If off-tanking, use RIGHTEOUS FURY +JUDGMENT +CONSECRATION to build threat", 20},
				{"black_morass_17880_11", "WARRIOR", "If off-tanking, use DEFENSIVE STANCE to build threat", 10}},
				-- Temporus
	[17881] = {{"black_morass_17881_01", "Important", "Using Chrono-Beacons aren't viable on this boss as the boss will destroy summoned dragons with an AoE dispel!", 100},
				{"black_morass_17881_02", "TANK", "Keep boss faced away from group so other players don't get hit by Sand Breath (frontal-cone attack dealing Nature Damage)", 90},
				{"black_morass_17881_03", "WARRIOR", "Using SPELL REFLECTION can grant immunity from Time Stop - just be sure to time this so spell reflect is active prior to TIME STOP", 80},
				{"black_morass_17881_04", "HUNTER", "Using THE BEAST WITHIN can grant immunity from Time Stop - just be sure to time this so spell reflect is active prior to TIME STOP", 70},
				{"black_morass_17881_05", "ROGUE", "Using CLOAK OF SHADOWS can grant immunity from Time Stop - just be sure to time this so spell reflect is active prior to TIME STOP", 60},
				{"black_morass_17881_06", "Important", "DPS and HEALER should stand on side of boss to avoid Sand Breath (frontal-cone attack)", 50},
				{"black_morass_17881_07", "Defensives", "Use Defensive CDs during Enrage phase. Tank may also need increased heals!", 40},
				{"black_morass_17881_08", "HUNTER", "Dispel Frenzy from boss using Tranquilizing Shot", 30},
				{"black_morass_17881_09", "Important", "Boss will occasionally STOP TIME (6 sec time stop). Some abilities and trinkets can remove this ability, such as PVP Trinkets", 20},
				{"black_morass_17881_10", "HEALER", "Keep tank as close to max health as often as possible during boss fight!", 10}},
				-- Aeonus

	---Mini Bosses
	[17839] = {{"black_morass_17839_01", "TANK", "DEFENSIVE: Mob applies Mortal Strike (Healing Effects reduced)", 40},
				{"black_morass_17839_02", "Important", "Rift Lord should be tanked away from players due to its Thunder Clap (Nature) AoE ability", 30},
				{"black_morass_17839_03", "Important", "Mob deals Knockdown (Stun for 2 seconds) on target", 20},
				{"black_morass_17839_04", "Defensives", "DEFENSIVE/HEALS: When Frenzy is applied, tank will be taking increased damage", 10}},
				-- Rift Lord
	[21104] = {{"black_morass_21104_01", "Legion", "Mage-Type deals Fire Damage & Warlock-Type deals Shadow Damage - use appropriate Auras/Buffs to mitigate damage", 90},
				{"black_morass_21104_02", "Advanced", "WARLOCK-TYPE MOB (Shadow):", 80},
				{"black_morass_21104_03", "Important", "DISPEL: Curse of Vulnerability from player (player takes 50% increased magical damage for 30 sec)", 70},
				{"black_morass_21104_04", "Interrupts", "Interrupt: Fear (20 yd range; 1.5 sec cast; Fears player for 4 sec)", 60},
				{"black_morass_21104_05", "Interrupts", "Interrupt: Shadow Bolt Volley (Main attack; may only need to worry about interrupting if tank has Curse of Vulnerability that can't be dispelled.)", 50},
				{"black_morass_21104_06", "Advanced", "MAGE-TYPE MOB (Fire):", 40},
				{"black_morass_21104_07", "Important", "Dispel POLYMORPH magic from player when applied (esp to tank/healer)", 30},
				{"black_morass_21104_08", "Advanced", "BOTH-TYPES:", 20},
				{"black_morass_21104_09", "Defensives", "DEFENSIVE/HEALS: When Frenzy is applied, tank will be taking increased damage", 10}},
				-- Rift Keeper
	[21697] = {{"black_morass_21697_01", "Legion", "If group wiped to Chrono-Lord Deja, this 'boss' will take its place and not drop loot", 10}},
				-- Infinite Chrono-Lord
	[21698] = {{"black_morass_21698_01", "Legion", "If group wiped to Temporus, this 'boss' will take its place", 10}},
				-- Infinite Timereaver

	---Trash Mobs (Infinite Dragonflight)
	[17835] = {{"black_morass_17835_01", "Legion", "Rogue-type mob", 30},
				{"black_morass_17835_02", "PriorityTargets", "Mob will head for Medivh and may cause a wipe forcing group to start over at Portal 1 if Medivh's shield breaks to these mob's attacks", 20},
				{"black_morass_17835_03", "Important", "Uses Backstab ability from behind their target.", 10}},
				-- Infinite Assassin
	[17892] = {{"black_morass_17892_01", "Legion", "Deals Arcane Damage; using appropriate pots can be helpful to mitigate damage (esp if poorly geared)", 40},
				{"black_morass_17892_02", "PriorityTargets", "Mob will head for Medivh and may cause a wipe forcing group to start over at Portal 1 if Medivh's shield breaks to these mob's attacks", 30},
				{"black_morass_17892_03", "Important", "Pet classes (esp with pet taunting) can pick these mobs up as they deal Arcane Explosion to nearby players", 20},
				{"black_morass_17892_04", "HEALER", "Be aware that any players w/in range of Chromomancer (esp melee) will take increased damage from mob's AoE", 10}},
				-- Infinite Chronomancer
	[18994] = {{"black_morass_18994_01", "PriorityTargets", "Mob will head for Medivh and may cause a wipe forcing group to start over at Portal 1 if Medivh's shield breaks to these mob's attacks", 10}},
				-- Infinite Executioner
	[18995] = {{"black_morass_18995_01", "Legion", "Deals Fire & Shadow Damage (use appropriate buffs/auras to mitigate damage from this mob)", 20},
				{"black_morass_18995_02", "PriorityTargets", "Mob will head for Medivh and may cause a wipe forcing group to start over at Portal 1 if Medivh's shield breaks to these mob's attacks", 10}}, -- Infinite Vanquisher
	[21818] = {{"black_morass_21818_01", "PriorityTargets", "Mob will head for Medivh and may cause a wipe forcing group to start over at Portal 1 if Medivh's shield breaks to these mob's attacks", 20},
				{"black_morass_21818_02", "Important", "Mobs come out of portal in quick succession! Tank should pickup aggro using AoE tanking abilities (ie Thunder Clap/Consecration), but as making sure that they don't reach Medivh is a priority, all DPS should be burning these down and not worry about aggroing them", 10}},
				-- Infinite Whelp

	---Trash Mobs (Animals)
	[17952] = {{"black_morass_17952_01", "Legion", "", 10}}, -- Darkwater Crocolisk
	[18982] = {{"black_morass_18982_01", "Legion", "", 10}}, -- Sable Jaguar
	[18983] = {{"black_morass_18983_01", "Important", "Deals Ebon Poison (Nature DoT Poison +Reduced healing by 23% for 12 sec) - can be dispelled", 10}}, -- Blackfang Tarantula


	------- Dungeon: The Mechanar -------------------

	---Bosses
	[19219] = {{"mechanar_19219_01", "Advanced", "POSITIONING: Players should spread out as much as possible to mitigate some of the damage caused by Nether Charges (summoned by boss every ~15 sec and explodes dealing Arcane AoE)", 50},
				{"mechanar_19219_02", "Important", "Players (including tank and healer) need to watch for which Polarity shift they have and stand by players with the same polarity", 40},
				{"mechanar_19219_03", "Important", "Stop melee DPS if boss has Reflective DAMAGE Shield", 30},
				{"mechanar_19219_04", "Important", "Stop caster DPS if boss has Reflective MAGIC Shield", 20},
				{"mechanar_19219_05", "Dodge", "DODGE: Players should avoid areas being struck by Netherbombs while standing close to anyone with same polarity", 10}},
				-- Mechano-Lord Capacitus
	[19221] = {{"mechanar_19221_01", "Advanced", "OPTIONAL BOSS; Be sure to clear the boss' room before engaging as you will need room to kite adds. Also, do NOT go down hallway to 3rd boss, during the fight, as trash there will cause problems for group.", 70},
				{"mechanar_19221_02", "Important", "Player with aggro on a fire elemental needs to kite away from (but NOT through) the group due to fire patches it places on the ground as it moves", 60},
				{"mechanar_19221_03", "Important", "All players will be moving during much of this fight between kiting of the elemental adds and players avoiding the fire that they leave on the ground", 50},
				{"mechanar_19221_04", "Important", "Tank boss faced away from the group as Dragon's Breath is a frontal-cone attack that disorients player for 4 sec.", 40},
				{"mechanar_19221_05", "Important", "Dispel Dragon's Breath from Tank (Magic Effect) as after tank is struck by Dragon's Breath, boss will run to another player with threat (likely the healer).", 30},
				{"mechanar_19221_06", "TANK", "After recovering from the effects of Dragon's Breath, pick aggro back up on the boss ASAP!", 20},
				{"mechanar_19221_07", "Legion", "Fire resistance aura is helpful in dealing with this boss and her summoned fire adds", 10}},
				-- Nethermancer Sepethrea
	[19220] = {{"mechanar_19220_01", "Advanced", "POSITIONING: Players (esp mana users) MUST stand at least 25 yds from boss to avoid Arcane Torrent silencing them and stealing their mana", 50},
				{"mechanar_19220_02", "Important", "Nether Wraith adds will be summoned frequently to help boss. DPS should focus and AoE these down anytime they're up, before shifting damage back to the boss", 40},
				{"mechanar_19220_03", "TANK", "Focus on the boss; the Nether Wraith adds don't need to be tanked", 30},
				{"mechanar_19220_04", "Important", "When player is struck with Domination (5 sec mind-control), that player needs be stunned/CC'd ASAP!", 20},
				{"mechanar_19220_05", "Defensives", "If tank is MC'd, boss will likely go after healer. Either way, be prepared to pop a defensive or other helpful CD", 10}},
				-- Pathaleon the Calculator

	---Mini Bosses
	[19218] = {{"mechanar_19218_01", "Important", "Mini-boss should be tanked faced away from the group", 50},
				{"mechanar_19218_02", "Advanced", "POSITIONING: DPS & Healer should spread out so multiple players don't receive Sawblade Bleed (Spread on Heroic-Only)", 40},
				{"mechanar_19218_03", "HEALER", "Watch for players that are struck with Sawblade as they will need increased heals for the 8 sec bleed.", 30},
				{"mechanar_19218_04", "Important", "Dispel Shadow Power (Magic buff that increases mob attack speed by 100% for 15 sec) from mob.", 20},
				{"mechanar_19218_05", "Important", "Dispel Stream of Machine Fluid (Poison debuff increases time between attacks and reducing armor by 35%) from tank.", 10}},
				-- Gatewatcher Gyro-Kill
	[19710] = {{"mechanar_19710_01", "Dodge", "DODGE: When boss starts casting Jack Hammer, all players need to run from it (including tank) as this does AoE damage centered on himself", 30},
				{"mechanar_19710_02", "Important", "Dispel Shadow Power (Magic buff that increases mob attack speed by 100% for 15 sec) from mob.", 20},
				{"mechanar_19710_03", "Important", "Dispel Stream of Machine Fluid (Poison debuff increases time between attacks and reducing armor by 35%) from tank.", 10}},
				-- Gatewatcher Iron-Hand

	---Nethermancer Sepethrea's summoned adds
	[20481] = {{"mechanar_20481_01", "Important", "Player targeted by mob needs to kite them away from group. They will place fire patches on the ground.", 10}}, -- Raging Flames

	---Pathaleon's Summoned adds
	[21062] = {{"mechanar_21062_01", "PriorityTargets", "Summoned every 30-45 sec; Despawn when boss reaches 20% health.", 20},
				{"mechanar_21062_02", "Interrupts", "INTERRUPT: Casts Arcane Bolt at players dealing Arcane Damage", 10}},
				-- Nether Wraith

	---Trash Mobs
	[19166] = {{"mechanar_19166_01", "Legion", "Mob deals mostly Arcane Damage", 30},
				{"mechanar_19166_02", "TANK", "Pull this mob away from other mobs to prevent other trash from also being pulled", 20},
				{"mechanar_19166_03", "Important", "Ranged DPS and Healer should stand at least 5 yds from Patroller as it has a 2 sec AoE Stun", 10}},
				-- Tempest-Forge Patroller
	[19167] = {{"mechanar_19167_01", "Defensives", "When fighting these mobs, healers will need to pay extra attention to tank's health as mob's Solar Strike reduces healing effectiveness, as well as Melt Armor (reducing nearby player's armor). Tank may also need to pop a defensive CD", 10}},
				-- Bloodwarder Slayer
	[19168] = {{"mechanar_19168_01", "Legion", "Fire Mage-Type Mob", 20},
				{"mechanar_19168_02", "Important", "It is best to use ranged DPS to burn these mobs down as Fire Shield deals AoE Fire Damage to nearby players", 10}},
				-- Sunseeker Astromage
	[19231] = {{"mechanar_19231_01", "Legion", "Mob will disarm their target with the Claw ability", 20},
				{"mechanar_19231_02", "Important", "Dispel Poison (Glob of Machine Fluid) from players (Nature DoT over 10 sec; +Reduced movement speed)", 10}},
				-- Mechanar Crusher
	[19510] = {{"mechanar_19510_01", "Important", "Warrior-Type Mobs that decrease nearby players' armor and increase attack and movement speed.", 20},
				{"mechanar_19510_02", "Defensives", "When Centurion's are up and in the group that is being fought, tank may need to pop extra defensive CDs due to Melt Armor ability, and may also need additonal heals", 10}},
				-- Bloodwarder Centurion
	[19712] = {{"mechanar_19712_01", "Important", "DPS and Healer needs to watch their threat as Driller applies stacking debuff that reduces movement speed and armor of their target!", 30},
				{"mechanar_19712_02", "WARLOCK", "This mob is vulnerable to Banish and Fear", 20},
				{"mechanar_19712_03", "Important", "Driller applies debuff that will reduce armor by 20% per stack, stacking up to 5 times. This mob should be killed quickly as it can overwhelm tank & healer at higher stacks", 10}},
				-- Mechanar Driller
	[19713] = {{"mechanar_19713_01", "Legion", "Mob will disorient their target for 5 sec with the Pound ability", 20},
				{"mechanar_19713_02", "Important", "Dispel Poison (Glob of Machine Fluid) from players (Nature DoT over 10 sec; +Reduced movement speed)", 10}},
				-- Mechanar Wrecker
	[19716] = {{"mechanar_19716_01", "Important", "Players should spread out when this mob is in a pull as Netherbomb deals Arcane AoE to selected area", 20},
				{"mechanar_19716_02", "Important", "Ranged DPS are preferred for this mob as Nether Explosion deals heavy AoE in their melee range", 10}},
				-- Mechanar Tinkerer
	[19735] = {{"mechanar_19735_01", "Legion", "Mob deals mostly Arcane Damage", 30},
				{"mechanar_19735_02", "TANK", "Pull this mob away from other mobs to prevent other trash from also being pulled", 20},
				{"mechanar_19735_03", "Important", "Ranged DPS and Healer should stand at least 5 yds from Destroy as it has a 2 sec AoE Stun, and Destroyer has melee range AoE", 10}},
				-- Tempest-Forge Destroyer
	[20059] = {{"mechanar_20059_01", "PriorityTargets", "Mob should be CC'd or killed quickly due to Arcane Nova (AoE Arcane Damage that also heals its allies).", 20},
				{"mechanar_20059_02", "Important", "When Netherbinder summons their Arcane Servant, this should be DPS'd down quickly due to its low health and AoE damage", 10}},
				-- Sunseeker Netherbinder
	[20478] = {{"mechanar_20478_01", "PriorityTargets", "Summoned by Sunseeker Netherbinder; Deals AoE damage.", 10}}, -- Arcane Servant
	[20988] = {{"mechanar_20988_01", "PriorityTargets", "These mobs can be dangerous as they buff their allies. Use CC abilities or focus them down quickly", 10}}, -- Sunseeker Engineer
	[20990] = {{"mechanar_20990_01", "PriorityTargets", "Mob should be crowd-controlled or killed first", 40},
				{"mechanar_20990_02", "Interrupts", "INTERRUPT: Bandage (8 sec Channeled; Healing an ally)", 30},
				{"mechanar_20990_03", "Important", "Dispel player that is put to sleep by mob (esp if it's the healer) - this lasts 6 sec. If no dispel available, an off-healer may need to step up to fill healer's role during that time", 20},
				{"mechanar_20990_04", "SHAMAN", "Use your Tremor Totem to remove sleep", 10}},
				-- Bloodwarder Physician


	------- Dungeon: The Botanica -------------------

	---Bosses
	[17976] = {{"botanica_17976_01", "Important", "Make sure to pull adds before engaging the boss (boss will pat back and forth over a bridge", 50},
				{"botanica_17976_02", "Legion", "Arcane resistance pots and gear could be helpful for this fight, but debuffs still need to be watched/dispelled.", 40},
				{"botanica_17976_03", "Important", "Dispel Arcane Resonance (increases target's Arcane damage taken) as often as possible.", 30},
				{"botanica_17976_04", "TANK", "Maintain strong defensives, esp if you don't have a group that can dispel Arcane Resonance as Arcane Devastation hit hard!", 20},
				{"botanica_17976_05", "PriorityTargets", "When adds appear, focus them down first. The Mender (healer) is elite and can be CC'd or Feared. When not feared, her heals must be interrupted", 10}}, -- Commander Sarannis
	[17975] = {{"botanica_17975_01", "PriorityTargets", "Focus DPS on adds when they spawn before shifting back to boss", 40},
				{"botanica_17975_02", "Important", "When boss shapeshifts into Tree Form, boss becomes immune (this happens with greater frequency as fight goes on). At this point, 3 Frayer Protectors are summoned and begin channeling Tranquility (heal) to boss. When tank pulls them away from boss, DPS should focus down these adds", 30},
				{"botanica_17975_03", "TANK", "When boss changes into Tree Form, drag the Frayer Protectors away from boss", 20},
				{"botanica_17975_04", "Important", "During add phases (esp), DPS should focus on the tank's target (boss/adds) to burn mobs down quickly else the fight will be very long and healer will run out of mana", 10}}, -- High Botanist Freywinn
	[17978] = {{"botanica_17978_01", "Legion", "Optional Boss", 90},
				{"botanica_17978_02", "Legion", "Boss deals a combination of Fire AoE Damage and Shadow damage DoT during Sacrifice phase. Use of auras/buffs/pots can help mitigate this damage (use fire if you have only one choice).", 80},
				{"botanica_17978_03", "Important", "Boss casts Hellfire which deals AoE fire damage. Healers should take note of this as melee will take increased damage", 70},
				{"botanica_17978_04", "Important", "Clear room by killing the adds near boss and two stealthed mobs in the direction of Laj's chambers", 60},
				{"botanica_17978_05", "Advanced", "POSITIONING: Tank should fight boss in the middle of the room (to avoid LoS issues with healer). It's reccomended to assign an off-healer in case healer is being sacrificed", 50},
				{"botanica_17978_06", "Important", "If healer is being Sacrificed (8 sec stun +Shadow DoT +boss leeches sacrificed player's health), use your 'off-healer' to assist with heals, and melee DPS should run out of range of boss' Hellfire AoE to mitigate group damage (if off-healer isn't well geared or off-healer not present)", 40},
				{"botanica_17978_07", "TANK", "DEFENSIVES: If healer is being Sacrificed be prepared to pop defensives to assist off-healer, or esp if an off-healer isn't available", 30},
				{"botanica_17978_08", "Defensives", "DEFENSIVES: Use defensive CD if boss is enraging against you (likely tank).", 20},
				{"botanica_17978_09", "HEALER", "Healer will need to keep 'enraged' player at max health (or as close to as possible).", 10}}, -- Thorngrin the Tender
	[17980] = {{"botanica_17980_01", "Important", "Watch for and dispel Allergic Reaction (Disease) from tank.", 40},
				{"botanica_17980_02", "Important", "Watch for the color that Laj turns to see which school of magic it becomes immune to & don't cast from that school.", 30},
				{"botanica_17980_03", "Legion", "[BLUE] Frost; [RED] Fire; [GREEN] Nature; [BLACK] Shadow; [WHITE] Arcane", 20},
				{"botanica_17980_04", "PriorityTargets", "When boss teleports to original platform, adds will appear that must be focused down", 10}},
				-- Laj
	[17977] = {{"botanica_17977_01", "Important", "DPS and Healer should be at maximum range (if possible) when dealing with boss to avoid Stomp (25 yd range; Deals AoE Physical damage +5 sec stun)", 40},
				{"botanica_17977_02", "WARRIOR", "Use Berserker Rage to grant brief immunity to Stomp's stun effect", 30},
				{"botanica_17977_03", "PriorityTargets", "Focus down Sapling adds when summoned as they will heal boss. Some abilities from hunter (Aimed Shot), warrior (Mortal Strike) and rogue (Wound Poison) can reduce healing effects.", 20},
				{"botanica_17977_04", "Important", "Sapling adds can also be CC'd using a mage's Frost Nova or a priest's Psychic Scream.", 10}},
				-- Warp Splinter

	---Sarannis' Adds
	[20078] = {{"botanica_20078_01", "Legion", "Deals Arcane melee damage", 10}}, -- Summoned Bloodwarder Reservist (Non-Elite)
	[20083] = {{"botanica_20083_01", "PriorityTargets", "Fear/Burn Down mob asap as it will heal allies (including boss)", 10}}, -- Summoned Bloodwarder Mender (Elite)

	---Freywinn Seedlings
	[19953] = {{"botanica_19953_01", "PriorityTargets", "", 10}}, -- Frayer Protector
	[19958] = {{"botanica_19958_01", "Important", "Dispel magic-effect from player that is encased in block of ice (Freezing Touch)", 10}}, -- White Seedling
	[19962] = {{"botanica_19962_01", "Important", "AoE ability that reduces movement speed of players for 4 sec", 10}}, -- Blue Seedling
	[19964] = {{"botanica_19964_01", "Important", "Deals Fire damage to random player", 10}}, -- Red Seedling
	[19969] = {{"botanica_19969_01", "Important", "Deals AoE Nature damage", 10}}, -- Green Seedling

	---Laj's Adds
	[19919] = {{"botanica_19919_01", "PriorityTargets", "Shots Thorn Missiles at player applying a Physical damage bleed", 10}}, -- Thorn Lasher
	[19920] = {{"botanica_19920_01", "PriorityTargets", "Casts Mind Flay at player applying Shadow damage +movement speed reduction to that player", 10}}, -- Thorn Flayer

	---Warp Splinter Adds
	[19949] = {{"botanica_19949_01", "PriorityTargets", "Burn these adds down to prevent boss from being healed", 10}}, -- Sapling

	---Trash Mobs
	[17993] = {{"botanica_17993_01", "PriorityTargets", "CC/DPS these mobs down quickly before they can put up Spell Reflection", 20},
				{"botanica_17993_02", "Important", "Immune to Mind Control", 10}},
				-- Bloodwarder Protector
	[17994] = {{"botanica_17994_01", "Defensives", "Player with Call of the Falcon mark will take extra damage from Bloodfalcons", 10}},
				-- Bloodwarder Falconer
	[18155] = {{"botanica_18155_01", "Legion", "", 10}}, -- Bloodfalcon
	[18404] = {{"botanica_18404_01", "Dodge", "DODGE: Arcane Flurry (AoE/WW Ability) when mob begins channeling, or stun this mob", 10}},
				-- Bloodwarder Steward
	[18405] = {{"botanica_18405_01", "Legion", "Deal AoE damage and drain player mana from nearby players", 10}}, -- Tempest-Forge Peacekeeper
	[18419] = {{"botanica_18419_01", "Legion", "Mobs deal primarily Nature Damage", 30},
				{"botanica_18419_02", "Important", "Dispel Impending Coma (Poison) from tank (increases time between attacks +reduces movement speed +puts target to sleep)", 20},
				{"botanica_18419_03", "Interrupts", "Interrupt: Greenkeeper's Fury (Lightning Bolt dealing Nature damage)", 10}},
				-- Bloodwarder Greenkeeper
	[18420] = {{"botanica_18420_01", "Important", "Casts Arcane Explosion AoE (melee players may need extra heals)", 20},
				{"botanica_18420_02", "Important", "Immune to Crowd Control", 10}}, -- Sunseeker Geomancer
	[18421] = {{"botanica_18421_01", "Important", "Applies Frost/Fire/Nature DoT (magic debuff) to players that can be dispelled", 10}},
				-- Sunseeker Researcher
	[18422] = {{"botanica_18422_01", "Legion", "Resto Druid-Type Mob", 20},
				{"botanica_18422_02", "PriorityTargets", "INTERRUPT: Regrowth & Rejuvenate Plant (Both 2 sec cast time that heal/apply HoTs to their allies", 10}},
				-- Sunseeker Botanist
	[18587] = {{"botanica_18587_01", "Important", "Mob applies buff to itself making it immune to either Arcane, Fire, Frost, or Shadow - players should switch to alternate spell types to counter immunities", 10}},
				-- Frayer
	[19486] = {{"botanica_19486_01", "Important", "These mobs should be tanked away from the group", 20},
				{"botanica_19486_02", "Dodge", "Move out of poison clouds from Vial of Poison", 10}}, -- Sunseeker Chemist
	[19505] = {{"botanica_19505_01", "PriorityTargets", "Mob applies damage buff to nearby allies. This mob is fairly weak when it is alone", 20},
				{"botanica_19505_02", "Important", "Dispel: Soul Channel (magic ability leeching health and mana over 6 sec)", 10}},
				-- Sunseeker Channeler
	[19507] = {{"botanica_19507_01", "Legion", "Death Knight-Type Mob", 20},
				{"botanica_19507_02", "Dodge", "DODGE/RUN from area that Death & Decay is cast (AoE targeted at a selected location)", 10}},
				-- Sunseeker Gene-Splicer
	[19508] = {{"botanica_19508_01", "Important", "Herbalists will summon Mutate Fleshlashers that should be DPS'd down quickly!", 20},
				{"botanica_19508_02", "Important", "Dispel Entangling Roots from players (Roots player and deals Nature DoT over 6 sec)", 10}},
				-- Sunseeker Herbalist
	[19509] = {{"botanica_19509_01", "Important", "These mobs should be CC'd or burned down quickly as their casting of Polymorph could be very dangerous to the group if done to tank/healer", 10}},
				-- Sunseeker Harvester
	[19511] = {{"botanica_19511_01", "Important", "Immune to Enslave, but vulnerable to Banish", 20},
				{"botanica_19511_02", "Important", "Dispel Deadly Poison from player (Nature DoT lasting 60 sec)", 10}},
				-- Nethervine Inciter
	[19512] = {{"botanica_19512_01", "Important", "Dispel Pale Death (curse effect reducing stamina by 35% for 60 sec) from tank ASAP!", 20},
				{"botanica_19512_02", "Defensives", "Due to cleave AoE, melee ranged players will take increased damage and will need additional heals", 10}},
				-- Nethervine Reaper
	[19513] = {{"botanica_19513_01", "Important", "Immune to most forms of CC; Vulnerable to a hunter's Ice Trap slows", 20},
				{"botanica_19513_02", "Important", "Fear-Shrieker has an AoE Fear, it should be pulled clear of other mobs so you don't pull unwanted groups.", 10}},
				-- Mutate Fear-Shrieker
	[19557] = {{"botanica_19557_01", "Legion", "", 10}}, -- Greater Frayer
	[19598] = {{"botanica_19598_01", "Legion", "", 10}}, -- Mutate Fleshlasher
	[19608] = {{"botanica_19608_01", "Important", "These mobs should be defeated prior to engaging Warp Splinter (boss)", 10}},
				-- Frayer Wildling
	[19633] = {{"botanica_19633_01", "PriorityTargets", "INTERRUPT: Greater Heal (mob will cast this on self or ally)", 10}},
				-- Bloodwarder Mender
	[19843] = {{"botanica_19843_01", "Legion", "Rogue-Type Mob", 20},
				{"botanica_19843_02", "Important", "Mob starts Stealthed, deals increased damage from behind target", 10}},
				-- Nethervine Trickster
	[19865] = {{"botanica_19865_01", "Important", "Use Stuns/Ice Trap; Mob is immune to Polymorph and Fear", 10}}, -- Mutate Horror
	[25354] = {{"botanica_25354_01", "PriorityTargets", "Hard hitting non-elites summoned by Sunseeker Herbalists", 10}}, -- Mutate Fleshlasher


	------- Dungeon: The Arcatraz -------------------

	---Bosses
	[20870] = {{"arcatraz_20870_01", "TANK", "Tank the boss with your back against the wall to avoid knockback", 50},
				{"arcatraz_20870_02", "Dodge", "DODGE/RUN from Void Zones boss spawns (Purple swirl on ground dealing Shadow damage to players)", 40},
				{"arcatraz_20870_03", "Dodge", "DODGE: If you are afflicted with Seed of Corruption, run out of group as AoE Shadow damage will be dealt to players w/in 10 yards and applying a Shadow DoT to those players. If the tank is the one afflicted, all other players must run away from tank.", 30},
				{"arcatraz_20870_04", "Legion", "Boss deals Shadow damage - having Shadow resistance auras/buffs can help mitigate damage taken", 20},
				{"arcatraz_20870_05", "Important", "Players can minimize the knockback from Shadow Nova by standing with backs close to a wall, but still need to be aware of void zones that will spawn", 10}},
				-- Zereketh the Unbound
	[20885] = {{"arcatraz_20885_01", "Dodge", "DODGE: ~30 sec into the fight, boss will do a Whirlwind (lasts 6 sec), be sure to run out of this as it deals massive AoE Physical damage", 70},
				{"arcatraz_20885_02", "PriorityTargets", "INTERRUPT: After boss' Whirlwind ends, she will cast a heal on herself", 60},
				{"arcatraz_20885_03", "Important", "Boss applies Gift of the Doomsayer to player (looks like Shadow Protection buff from a priest and has a chance to heal boss if player with debuff is healed this includes healing pots)", 50},
				{"arcatraz_20885_04", "SHAMAN", "Avoid using Earth Shield on a player, during this fight", 40},
				{"arcatraz_20885_05", "PRIEST", "Power Word: Shield is okay to use, but do NOT use Vampiric Embrace during this fight as it could result in boss getting healed.", 30},
				{"arcatraz_20885_06", "Legion", "Boss deals Shadow damage - having Shadow resistance auras/buffs can help mitigate damage taken", 20},
				{"arcatraz_20885_07", "Important", "Using Wound Poison (rogue), Aimed Shot (hunter) or Mortal Strike (warrior) can reduce the amount of healing boss receives, if she manages to get a cast off.", 10}},
				-- Dalliah the Doomsayer
	[20886] = {{"arcatraz_20886_01", "Important", "Boss should be tanked with tank's back against the wall to mitigate Knockback", 50},
				{"arcatraz_20886_02", "Dodge", "After boss does Knockback, he will charge a random player and apply a Felfire trail that must be moved out of!", 40},
				{"arcatraz_20886_03", "HEALER", "Boss applies Fel Immolation Aura that deals AoE fire damage to players w/in 15 yds. If you have melee DPS in your group, be aware that these ones will take increased damage as a result", 30},
				{"arcatraz_20886_04", "Important", "Dispel player afflicted ith Felfire Shock (Fire DoT)", 20},
				{"arcatraz_20886_05", "PALADIN", "Boss deals mostly Fire damage - consider Fire Resistance Aura", 10}},
				-- Wrath-Scryer Soccothrates
	[20912] = {{"arcatraz_20912_01", "Advanced", "PHASE ONE - 4 Cells will open, the 1st, 3rd and 4th will be one of two possibility enemies", 100},
				{"arcatraz_20912_02", "Legion", "First Cell: Mobs deal Fire/Physical Damage", 90},
				{"arcatraz_20912_03", "Legion", "Second Cell: Millhouse Manastorm (Helps players)", 80},
				{"arcatraz_20912_04", "Legion", "Third Cell: Mobs deal Fire/Physical for Blackwing or Fire/Frost/Arcane for Twilight Drakonaar", 70},
				{"arcatraz_20912_05", "Advanced", "PHASE TWO - Begins once 4th cell's mob is defeated and Skyriss becomes active.", 60},
				{"arcatraz_20912_06", "Legion", "Boss deals primarily Shadow/Physical Damage to players", 50},
				{"arcatraz_20912_07", "Important", "During fight, boss will mind-control a player that needs to be CC'd ASAP!", 40},
				{"arcatraz_20912_08", "Important", "Boss will create illusions of himself at 66% and 33%. Boss and illusions use Mind Rend (Channeled Shadow Damage against players)", 30},
				{"arcatraz_20912_09", "TANK", "Make sure to pick up and hold aggro of boss and his clones so that healer won't get hit by multiple Mind Rend's and die", 20},
				{"arcatraz_20912_10", "Important", "Boss will also fear a random player. Use of Fear Ward or a Tremor Totem can mitigate problems, esp if it is done to a healer/tank", 10}},
				-- Harbinger Skyriss

	-- Warden Mellichar
	[20904] = {{"arcatraz_20904_01", "Important", "Once you approach Warden, players will enter combat and fight will soon begin. Make sure that your group is aware of boss strategy before entering 'combat range'", 10}},
				-- Warden Mellichar

	-- Warden Mellich's Prisons
	[20905] = {{"arcatraz_20905_01", "Legion", "Deals Fire Damage", 20},
				{"arcatraz_20905_02", "Important", "Use non-Fire spells against this mob as they have increased Fire resistance", 10}},
				-- Blazing Trickster (1st Cell)
	[20906] = {{"arcatraz_20906_01", "Important", "Mob will cast Warp and appear behind a player", 20},
				{"arcatraz_20906_02", "Important", "Mob will deal increased damage when attacking a player from behind", 10}},
				-- Phase-Hunter (1st Cell)
	[20977] = {{"arcatraz_20977_01", "Legion", "Friendly; Helps players", 10}}, -- Millhouse Manastorm (2nd Cell)
	[20908] = {{"arcatraz_20908_01", "Legion", "Deals mostly Nature damage", 40},
				{"arcatraz_20908_02", "Important", "Dispel Magic Grounding (applies buff that mob takes 50% reduced magic damage for 30 sec)", 30},
				{"arcatraz_20908_03", "HEALER", "Apply extra heals to player afflicted with Lightning Jump (causes player to receive increased damage from all schools of magic for 60 sec).", 20},
				{"arcatraz_20908_04", "Important", "Lightning Discharge is a chain lightning dealing nature damage all to players w/in 50 yds", 10}},
				-- Akkiris Lightning-Waker (3rd Cell)
	[20909] = {{"arcatraz_20909_01", "Important", "Deals mostly Fire (AoE) & Shadow (single-target) damage", 50},
				{"arcatraz_20909_02", "Important", "Dispel curse from player of Magma-Thrower's Curse (curse reduces effectiveness of healing received)", 40},
				{"arcatraz_20909_03", "Important", "Casts Rain of Fire (10 yd AoE), which deals damage every 2 sec for 8 sec", 30},
				{"arcatraz_20909_04", "Dodge", "Run out of Rain of Fire!", 20},
				{"arcatraz_20909_05", "Important", "Casts Shadow Bolt at a player", 10}},
				-- Sulfuron Magma-Thrower (3rd Cell)
	[20910] = {{"arcatraz_20910_01", "Legion", "ONLY the tank should be standing in front of the mob so rest can avoid damage mob deals!", 70},
				{"arcatraz_20910_02", "Important", "Mob will deal certain type of damage depending on color buff it has:", 60},
				{"arcatraz_20910_03", "Important", "BROOD POWER: Green (Stuns players in front of mob for 1 sec)", 50},
				{"arcatraz_20910_04", "Important", "BROOD POWER: Black (Deals Fire damage to players in front of it)", 40},
				{"arcatraz_20910_05", "Important", "BROOD POWER: Blue (Deals Frost damage to players in front of it destroying player mana and increasing player time between attacks)", 30},
				{"arcatraz_20910_06", "Important", "BROOD POWER: Bronze (Deals Arcane damage +reduced casting +increased time between attacks to players in front of it)", 20},
				{"arcatraz_20910_07", "Important", "BROOD POWER: Red (Applies Fire DoT to players in front of it)", 10}},
				-- Twilight Drakonaar (4th Cell)
	[20911] = {{"arcatraz_20911_01", "Legion", "Mob deals mostly Fire damage", 40},
				{"arcatraz_20911_02", "Important", "Deals frontal-cone Fire damage (only tank should be standing in front of mob)", 30},
				{"arcatraz_20911_03", "Important", "Mob applies Mortal Wounds debuff to target causing reduced effectiveness to heals received", 20},
				{"arcatraz_20911_04", "Important", "Mob deals AoE Fire damage thru Blsat Wave ability", 10}},
				-- Blackwing Drakonaar (4th Cell)

	---Trash Mobs
	[20857] = {{"arcatraz_20857_01", "Legion", "Deals a combination of Fire and Nature damage in form of DoTs", 30},
				{"arcatraz_20857_02", "Important", "Immolate (Fire DoT; Magic-ability can be dispelled from tank)", 20},
				{"arcatraz_20857_03", "Important", "Infected Blood (Nature DoT; Disease-ability can be dispelled from tank)", 10}}, -- Arcatraz Defender
	[20859] = {{"arcatraz_20859_01", "Legion", "Ranged Hunter-type mobs", 20},
				{"arcatraz_20859_02", "Important", "Make sure to defeat these mobs. Leaving them alone will result in adds continuing to spawn, which will be very problematic if DPS/Healer need to run back after a wipe.", 10}},
				-- Arcatraz Warder
	[20864] = {{"arcatraz_20864_01", "Legion", "Deals Nature damage and some physical damage", 20},
				{"arcatraz_20864_02", "Important", "Group should try to fight this at range w/only the tank in melee range due to Incubation (AoE explosion)", 10}},
				-- Protean Nightmare
	[20865] = {{"arcatraz_20865_01", "Legion", "Triggered when group gets too close to these mobs. Tank should pickup aggro and group focus them down", 10}},
				-- Protean Horror
	[20866] = {{"arcatraz_20866_01", "Legion", "Deals combination of Fire and Shadow Damage", 30},
				{"arcatraz_20866_02", "Important", "Only the tank should be in front of this mob due to frontal cone Fel Breath (Fire Damage)", 20},
				{"arcatraz_20866_03", "Important", "Mob will summon Sightless Eyes that DPS should focus on killing as they apply a movement speed and casting/attack speed debuff to players", 10}},
				-- Soul Devourer
	[20867] = {{"arcatraz_20867_01", "PriorityTargets", "Once boss reaches 50% health, group has 15 sec to finish mob off as massive dmg is dealt to those with the debuff when timer goes out", 40},
				{"arcatraz_20867_02", "Important", "If your group is lacking in the DPS needed to bring mob down from 50% to 0 in 15 sec, DPS and Healer can drop LoS from boss prior to 50% to prevent debuff from being applied to them.", 30},
				{"arcatraz_20867_03", "ROGUE", "Using Cloak of Shadows can drop Mark of Death debuff from you", 20},
				{"arcatraz_20867_04", "Important", "Dispel Drain Life (Magic) from Tank", 10}}, -- Death Watcher
	[20868] = {{"arcatraz_20868_01", "Important", "Mob deals big damage to players in front of him, so only the tank should be in front.", 30},
				{"arcatraz_20868_02", "Important", "After tank takes Chaos Breath make sure to dispel curse, poison and magics from tank ASAP that this ability puts on them.", 20},
				{"arcatraz_20868_03", "Important", "If Healer or Tank are Hexed (5 sec CC against players), an off-tank or off-healer may need to pick up the slack during the sheeping", 10}},
				-- Entropic Eye
	[20869] = {{"arcatraz_20869_01", "Important", "Mob sparks AoE Arcane Damage", 50},
				{"arcatraz_20869_02", "TANK", "When/If mob comes back to life, tank should be quick to pick up aggro (these mobs will regularly reset aggro also)", 40},
				{"arcatraz_20869_03", "ROGUE", "Sentinels are vulnerable to Cheap Shot and Kidney Shot to mitigate some of the damage being dealt to tank", 30},
				{"arcatraz_20869_04", "Important", "Ranged DPS/Healer should stand 40 yds away from mob to avoid Energy Discharge while alive", 20},
				{"arcatraz_20869_05", "Dodge", "RUN AWAY: When mob reaches low health they will try to explode dealing AoE Damage", 10}},
				-- Arcatraz Sentinel
	[20873] = {{"arcatraz_20873_01", "Important", "When mob places glowing purple AoE below them, tank will need to kite boss away as it heals mob for large amount, and increases the damage they deal", 10}},
				-- Negaton Warp-Master
	[20875] = {{"arcatraz_20875_01", "Important", "Players need to pay attention to the Elemental Response buff that mob applies to itself. This buff reduces certain magic schools/physical abilities it takes by 75%. Make sure to coordinate (if poss) switching magic schools cast to keep boss guessing", 40},
				{"arcatraz_20875_02", "Important", "When tank is about to pull, players should first strike boss with an ability that the tank isn't primarily using (Holy for Prot Paladin, Physical for Prot Warrior), so that Tank can quickly grab & maintain aggro", 30},
				{"arcatraz_20875_03", "TANK", "Threat building/maintaining might be issue if mob resists your type of attack (Holy, Physical, etc). If that's the case, wait for mob to switch to different resistance before using an abilities it isn't resisting", 20},
				{"arcatraz_20875_04", "Important", "Shaman using Tremor Totem or Priest applying Fear Ward to the tank is helpful to mitigate issues during Psychic Scream (AoE Fear)", 10}},
				-- Negaton Screamer
	[20879] = {{"arcatraz_20879_01", "Important", "Dispel Soul Steal (magic buff) from tank (reduces stats & damage done by 45% for 20 sec)", 30},
				{"arcatraz_20879_02", "MAGE", "Dispel Soul Steal (magic buff) from mob (increases mob stats & damage done by 45% for 20%).", 20},
				{"arcatraz_20879_03", "Defensives", "If there is no mage in the grp to dispel Soul Steal from enemy mob, tank will need to pop extra CDs and need extra heals to deal with damage", 10}},
				-- Eredar Soul-Eater
	[20880] = {{"arcatraz_20880_01", "PriorityTargets", "Mob casts Diminish Soul on player (stacks up to 10) for 12 sec. If stacks get too high on tank because fight is taking too long, tank could quickly become overwhelmed resulting in a wipe", 30},
				{"arcatraz_20880_02", "Legion", "Mob deals AoE shadow damage to players (~40 yd range); Consider Shadow Resistance auras & buffs.", 20},
				{"arcatraz_20880_03", "Important", "Forceful Cleave is an AoE knockback, players (esp tank) should stand with backs against a wall.", 10}},
				-- Eredar Deathbringer
	[20881] = {{"arcatraz_20881_01", "Legion", "Mob deals Physical and Shadow damage", 40},
				{"arcatraz_20881_02", "WARLOCK", "Felguard is immune to Enslave and Banish", 30},
				{"arcatraz_20881_03", "Important", "Mob should be tanked with tank's back against wall due to Devastate", 20},
				{"arcatraz_20881_04", "Important", "Mob will cast Deafening Roar (AoE Interrupt); Healers and DPS can LoS until after this mob casts Deafening Roar on the tank to minimize chances that they will get hit by a second one", 10}},
				-- Unbound Devastator
	[20882] = {{"arcatraz_20882_01", "Important", "Mob begins stealthed, and will Gouge (stun) the tank regularly. When this happens, mob will attack second highest player on the threat table.", 10}},
				-- Skulking Witch
	[20883] = {{"arcatraz_20883_01", "Important", "Mob will cast Domination on player mind-controlling them for 6 sec. MC'd player needs to be stunned/CC'd ASAP!", 10}},
				-- Spiteful Temptress
	[20896] = {{"arcatraz_20896_01", "Legion", "Rogue-type mob with Evasion ability", 40},
				{"arcatraz_20896_02", "Important", "When Evasion is active on mob, its Dodge abilities are increased (save big attacks when buff not active)", 30},
				{"arcatraz_20896_03", "Important", "Dispel Impaired Poison when mob applies this to players", 20},
				{"arcatraz_20896_04", "Important", "Immune to Mind Control on Heroic difficulty", 10}}, -- Ethereum Slayer
	[20897] = {{"arcatraz_20897_01", "Legion", "Arcane Mage-Type Mob", 50},
				{"arcatraz_20897_02", "Important", "Dispel polymorph from tank/healer", 40},
				{"arcatraz_20897_03", "Important", "Sonic Boom is AoE Arcane Explosion ability w/45 yd range. This ability also disrupts casting of spells from a school of magic that were being cast when this was activated for 4 seconds", 30},
				{"arcatraz_20897_04", "HEALER", "If possibly try to use instant cast heals, totems or healing spells with as short of a cast time as possible to minimize risk of becoming spell silenced.", 20},
				{"arcatraz_20897_05", "Important", "If Healer is spell silenced from Sonic Boom, an off-healer may be needed as well as tank popping extra defensive CDs", 10}},
				-- Ethereum Wave-Caster
	[20898] = {{"arcatraz_20898_01", "Important", "Players need to stack to split damage from Meteor!", 40},
				{"arcatraz_20898_02", "Important", "When Meteor isn't being used, ranged DPS and Healer should be at least 20 yds away to avoid Fire Shield AoE that will impact those in melee range", 30},
				{"arcatraz_20898_03", "WARLOCK", "Abyssal is immune to Banish & Enslave", 20},
				{"arcatraz_20898_04", "Legion", "Mob deals mostly Fire-type damage - consider Fire Resistance aura.", 10}}, -- Gargantuan Abyssal
	[20900] = {{"arcatraz_20900_01", "Important", "Players need to watch their threat when dealing with this target. If non-tank pulls aggro just before War Stomp (5 sec AoE stun) goes off, it could result in a wipe.", 20},
				{"arcatraz_20900_02", "WARLOCK", "Doomguard is immune to Enslave Demon", 10}}, -- Unchained Doombringer
	[20901] = {{"arcatraz_20901_01", "Important", "Ranged mobs that root tank and disorient players with Hooked Net and Scatter Shot", 20},
				{"arcatraz_20901_02", "Important", "Immune to Freezing Trap, Banish, Fear, Enslave Demon and most stuns", 10}},
				-- Sargeron Archer
	[20902] = {{"arcatraz_20902_01", "Legion", "Mob deals mostly Fire Damage", 30},
				{"arcatraz_20902_02", "Important", "Immune to Freezing Trap, Banish, Fear, Enslave Demon and most stuns", 20},
				{"arcatraz_20902_03", "Dodge", "When mob casts Hellfire (AoE Damage) at random location/player, players need to run out this ability!", 10}},
				-- Sargeron Hellcaller
	[21303] = {{"arcatraz_21303_01", "Legion", "", 10}}, -- Defender Corpse
	[21346] = {{"arcatraz_21346_01", "PriorityTargets", "Applies Sightless Touch to players (Reduced movement speed by 40% +Reduced attack/casting speed by 50%)", 10}},
				-- Sightless Eye
	[21395] = {{"arcatraz_21395_01", "Legion", "", 10}}, -- Protean Spawn
	[21702] = {{"arcatraz_21702_01", "Legion", "Shadow Priest-Type Mob dealing mostly Shadow damage", 20},
				{"arcatraz_21702_02", "Important", "Immobilizes players with Shackle and Bind", 10}}, -- Ethereum Life-Binder
	[22892] = {{"arcatraz_22892_01", "Important", "Can be stunned, blinded and gouged", 10}}, -- Third Fragment Guardian



	------- Dungeon: Magister’s Terrace -------------

	---Bosses
	[24723] = {{"magisters_terrace_24723_01", "Important", "", 10}}, -- Selin Fireheart
	[24744] = {{"magisters_terrace_24744_01", "Important", "", 10}}, -- Vexallus
	[24560] = {{"magisters_terrace_24560_01", "Important", "", 10}}, -- Priestess Delrissa
	[24664] = {{"magisters_terrace_24664_01", "Important", "", 10}}, -- Kael'thas Sunstrider <Lord of the Blood Elves>

	---Priestess Delrissa' Minions
	[24552] = {{"magisters_terrace_24552_01", "Important", "", 10}}, -- Sliver <Garaxxas' Pet>
	[24553] = {{"magisters_terrace_24553_01", "Important", "", 10}}, -- Apoko
	[24554] = {{"magisters_terrace_24554_01", "Important", "", 10}}, -- Eramas Brightblaze
	[24555] = {{"magisters_terrace_24555_01", "Important", "", 10}}, -- Garaxxas
	[24556] = {{"magisters_terrace_24556_01", "Important", "", 10}}, -- Zelfan
	[24557] = {{"magisters_terrace_24557_01", "Important", "", 10}}, -- Kagani Nightstrike
	[24558] = {{"magisters_terrace_24558_01", "Important", "", 10}}, -- Ellrys Duskhallow
	[24559] = {{"magisters_terrace_24559_01", "Important", "", 10}}, -- Warlord Salaris
	[24561] = {{"magisters_terrace_24561_01", "Important", "", 10}}, -- Yazzai

	---Trash Mobs
	[24656] = {{"magisters_terrace_24656_01", "Important", "", 10}}, -- Fizzle
	[24674] = {{"magisters_terrace_24674_01", "Important", "", 10}}, -- Phoenix
	[24675] = {{"magisters_terrace_24675_01", "Legion", "", 10}}, -- Phoenix Egg
	[24683] = {{"magisters_terrace_24683_01", "Important", "", 10}}, -- Sunblade Mage Guard
	[24684] = {{"magisters_terrace_24684_01", "Important", "", 10}}, -- Sunblade Blood Knight
	[24685] = {{"magisters_terrace_24685_01", "Important", "", 10}}, -- Sunblade Magister
	[24686] = {{"magisters_terrace_24686_01", "Important", "", 10}}, -- Sunblade Warlock
	[24687] = {{"magisters_terrace_24687_01", "Important", "", 10}}, -- Sunblade Physician
	[24688] = {{"magisters_terrace_24688_01", "Important", "", 10}}, -- Wretched Skulker
	[24689] = {{"magisters_terrace_24689_01", "Important", "", 10}}, -- Wretched Bruiser
	[24690] = {{"magisters_terrace_24690_01", "Important", "", 10}}, -- Wretched Husk
	[24696] = {{"magisters_terrace_24696_01", "Important", "", 10}}, -- Coilskar Witch
	[24697] = {{"magisters_terrace_24697_01", "Important", "", 10}}, -- Sister of Torment
	[24698] = {{"magisters_terrace_24698_01", "Important", "", 10}}, -- Ethereum Smuggler
	[24722] = {{"magisters_terrace_24722_01", "Legion", "", 10}}, -- Fel Crystal
	[24745] = {{"magisters_terrace_24745_01", "Legion", "", 10}}, -- Pure Energy
	[24761] = {{"magisters_terrace_24761_01", "Important", "", 10}}, -- Brightscale Wyrm
	[24762] = {{"magisters_terrace_24762_01", "Important", "", 10}}, -- Sunblade Keeper
	[24777] = {{"magisters_terrace_24777_01", "Important", "", 10}}, -- Sunblade Sentinel
	[24781] = {{"magisters_terrace_24781_01", "Legion", "", 10}}, -- Nether Energy
	[24815] = {{"magisters_terrace_24815_01", "Important", "", 10}}, -- Sunblade Imp


	-------------0--------------	
	
	[0] = {{"-"}}	
	
}

tipsMap_deDE = tipsMap_deDE or {}
