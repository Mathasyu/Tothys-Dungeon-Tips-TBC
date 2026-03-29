
-- This is the full database of tips.

local _, addon = ...;

local function cloneTableDeep(source)
	if type(source) ~= "table" then
		return source
	end

	local copy = {}
	for key, value in pairs(source) do
		copy[key] = cloneTableDeep(value)
	end

	return copy
end

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
					deDE = "Hoellenfeuerbollwerk",
				},
				npcNames = {
					[17259] = { enUS = "Bonechewer Hungerer", deDE = "Zehrer der Knochenmalmer" },
					[17264] = { enUS = "Bonechewer Ravener", deDE = "Tobsüchtiger der Knochenmalmer" },
					[17269] = { enUS = "Bleeding Hollow Darkcaster", deDE = "Dunkelzauberer des Blutenden Auges" },
					[17270] = { enUS = "Bleeding Hollow Archer", deDE = "Bogenschütze des Blutenden Auges" },
					[17271] = { enUS = "Bonechewer Destroyer", deDE = "Zerstörer der Knochenmalmer" },
					[17280] = { enUS = "Shattered Hand Warhound", deDE = "Kriegshund der Zerschmetterten Hand" },
					[17281] = { enUS = "Bonechewer Ripper", deDE = "Schlächter der Knochenmalmer" },
					[17306] = { enUS = "Watchkeeper Gargolmar", deDE = "Wachhabender Gargolmar" },
					[17308] = { enUS = "Omor the Unscarred", deDE = "Omor der Narbenlose" },
					[17309] = { enUS = "Hellfire Watcher", deDE = "Höllenfeuerwächter" },
					[17455] = { enUS = "Bonechewer Beastmaster", deDE = "Bestienmeister der Knochenmalmer" },
					[17478] = { enUS = "Bleeding Hollow Scryer", deDE = "Wahrsager des Blutenden Auges" },
					[17517] = { enUS = "Hellfire Sentry", deDE = "Höllenfeuerspäher" },
					[17536] = { enUS = "Nazan", deDE = "Nazan" },
					[17537] = { enUS = "Vazruden", deDE = "Vazruden" },
					[17540] = { enUS = "Fiendish Hound", deDE = "Dämonischer Hund" },
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
					deDE = "Der Blutkessel",
				},
				npcNames = {
					[17370] = { enUS = "Laughing Skull Enforcer", deDE = "Vollstrecker des Lachenden Schädels" },
					[17371] = { enUS = "Shadowmoon Warlock", deDE = "Hexenmeister des Schattenmondklans" },
					[17377] = { enUS = "Keli'dan the Breaker", deDE = "Keli\\'dan der Zerstörer" },
					[17380] = { enUS = "Broggok", deDE = "Broggok" },
					[17381] = { enUS = "The Maker", deDE = "Der Schöpfer" },
					[17395] = { enUS = "Shadowmoon Summoner", deDE = "Beschwörer des Schattenmondklans" },
					[17397] = { enUS = "Shadowmoon Adept", deDE = "Adept des Schattenmondklans" },
					[17398] = { enUS = "Nascent Fel Orc", deDE = "Werdender Höllenorc" },
					[17399] = { enUS = "Seductress", deDE = "Verführerin" },
					[17400] = { enUS = "Felguard Annihilator", deDE = "Vernichter der Teufelswache" },
					[17401] = { enUS = "Felhound Manastalker", deDE = "Teufelshundmanapirscher" },
					[17414] = { enUS = "Shadowmoon Technician", deDE = "Techniker des Schattenmondklans" },
					[17429] = { enUS = "Fel Orc Neophyte", deDE = "Höllenorcneophyt" },
					[17477] = { enUS = "Hellfire Imp", deDE = "Höllenfeuerwichtel" },
					[17491] = { enUS = "Laughing Skull Rogue", deDE = "Schurke des Lachenden Schädels" },
					[17624] = { enUS = "Laughing Skull Warden", deDE = "Aufseher des Lachenden Schädels" },
					[17626] = { enUS = "Laughing Skull Legionnaire", deDE = "Legionär des Lachenden Schädels" },
					[17653] = { enUS = "Shadowmoon Channeler", deDE = "Kanalisierer des Schattenmondklans" },
					[18894] = { enUS = "Felguard Brute", deDE = "Schläger der Teufelswache" },
					[19016] = { enUS = "Hellfire Familiar", deDE = "Höllenfeuerfamiliar" },
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
					[18371] = { enUS = "Shirrak the Dead Watcher", deDE = "Shirrak der Totenwächter" },
					[18373] = { enUS = "Exarch Maladaar", deDE = "Exarch Maladaar" },
					[18441] = { enUS = "Stolen Soul", deDE = "Gestohlene Seele" },
					[18478] = { enUS = "Avatar of the Martyred", deDE = "Avatar des Gemarterten" },
					[18493] = { enUS = "Auchenai Soulpriest", deDE = "Seelenpriester der Auchenai" },
					[18495] = { enUS = "Auchenai Vindicator", deDE = "Verteidiger der Auchenai" },
					[18497] = { enUS = "Auchenai Monk", deDE = "Mönch der Auchenai" },
					[18498] = { enUS = "Unliving Soldier", deDE = "Untoter Soldat" },
					[18499] = { enUS = "Unliving Sorcerer", deDE = "Untoter Zauberhexer" },
					[18500] = { enUS = "Unliving Cleric", deDE = "Untoter Kleriker" },
					[18501] = { enUS = "Unliving Stalker", deDE = "Untoter Pirscher" },
					[18503] = { enUS = "Phantasmal Possessor", deDE = "Geisterhafter Besitzer" },
					[18506] = { enUS = "Raging Soul", deDE = "Tobende Seele" },
					[18521] = { enUS = "Raging Skeleton", deDE = "Tobendes Skelett" },
					[18524] = { enUS = "Angered Skeleton", deDE = "Erbostes Skelett" },
					[18556] = { enUS = "Phasing Soldier", deDE = "Phasensoldat" },
					[18557] = { enUS = "Phasing Cleric", deDE = "Phasenkleriker" },
					[18558] = { enUS = "Phasing Sorcerer", deDE = "Phasenzauberhexer" },
					[18559] = { enUS = "Phasing Stalker", deDE = "Phasenpirscher" },
					[18700] = { enUS = "Reanimated Bones", deDE = "Wiedererweckte Knochen" },
					[18702] = { enUS = "Auchenai Necromancer", deDE = "Totenbeschwörer der Auchenai" },
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
					deDE = "Sethekkhallen",
				},
				npcNames = {
					[18318] = { enUS = "Sethekk Initiate", deDE = "Initiand der Sethekk" },
					[18319] = { enUS = "Time-Lost Scryer", deDE = "Zeitverlorener Wahrsager" },
					[18320] = { enUS = "Time-Lost Shadowmage", deDE = "Zeitverlorener Schattenmagier" },
					[18321] = { enUS = "Sethekk Talon Lord", deDE = "Klauenlord der Sethekk" },
					[18322] = { enUS = "Sethekk Ravenguard", deDE = "Rabenwächter der Sethekk" },
					[18323] = { enUS = "Sethekk Guard", deDE = "Wächter der Sethekk" },
					[18325] = { enUS = "Sethekk Prophet", deDE = "Prophet der Sethekk" },
					[18326] = { enUS = "Sethekk Shaman", deDE = "Schamane der Sethekk" },
					[18327] = { enUS = "Time-Lost Controller", deDE = "Zeitverlorener Aufseher" },
					[18328] = { enUS = "Sethekk Oracle", deDE = "Orakel der Sethekk" },
					[18472] = { enUS = "Darkweaver Syth", deDE = "Dunkelwirker Syth" },
					[18473] = { enUS = "Talon King Ikiss", deDE = "Klauenkönig Ikiss" },
					[18701] = { enUS = "Dark Vortex", deDE = "Dunkler Vortex" },
					[19203] = { enUS = "Syth Fire Elemental", deDE = "Syths Feuerelementar" },
					[19204] = { enUS = "Syth Frost Elemental", deDE = "Syths Frostelementar" },
					[19205] = { enUS = "Syth Arcane Elemental", deDE = "Syths Arkanelementar" },
					[19206] = { enUS = "Syth Shadow Elemental", deDE = "Syths Schattenelementar" },
					[19428] = { enUS = "Cobalt Serpent", deDE = "Kobaltblaue Schlange" },
					[19429] = { enUS = "Avian Darkhawk", deDE = "Dunkelfalke der Federschwingen" },
					[20343] = { enUS = "Charming Totem", deDE = "Totem der Bezauberung" },
					[21891] = { enUS = "Avian Ripper", deDE = "Reißer der Federschwingen" },
					[21904] = { enUS = "Avian Warhawk", deDE = "Kriegsfalke der Federschwingen" },
					[23035] = { enUS = "Anzu", deDE = "Anzu" },
					[23132] = { enUS = "Brood of Anzu", deDE = "Brut des Anzu" },
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
					deDE = "Schattenlabyrinth",
				},
				npcNames = {
					[18631] = { enUS = "Cabal Cultist", deDE = "Kultist der Kabale" },
					[18632] = { enUS = "Cabal Executioner", deDE = "Henker der Kabale" },
					[18633] = { enUS = "Cabal Acolyte", deDE = "Akolyth der Kabale" },
					[18634] = { enUS = "Cabal Summoner", deDE = "Beschwörer der Kabale" },
					[18635] = { enUS = "Cabal Deathsworn", deDE = "Todeshöriger der Kabale" },
					[18636] = { enUS = "Cabal Assassin", deDE = "Auftragsmörder der Kabale" },
					[18637] = { enUS = "Cabal Shadow Priest", deDE = "Schattenpriester der Kabale" },
					[18638] = { enUS = "Cabal Zealot", deDE = "Zelot der Kabale" },
					[18639] = { enUS = "Cabal Spellbinder", deDE = "Zauberbinder der Kabale" },
					[18640] = { enUS = "Cabal Warlock", deDE = "Hexenmeister der Kabale" },
					[18641] = { enUS = "Cabal Familiar", deDE = "Familiar der Kabale" },
					[18642] = { enUS = "Maiden of Discipline", deDE = "Teuflischer Wachhund" },
					[18663] = { enUS = "Maiden of Discipline", deDE = "Maid der Zucht" },
					[18667] = { enUS = "Blackheart the Inciter", deDE = "Schwarzherz der Hetzer" },
					[18708] = { enUS = "Murmur", deDE = "Murmur" },
					[18731] = { enUS = "Ambassador Hellmaw", deDE = "Botschafter Höllenschlund" },
					[18732] = { enUS = "Grandmaster Vorpil", deDE = "Großmeister Vorpil" },
					[18794] = { enUS = "Cabal Ritualist", deDE = "Ritualist der Kabale" },
					[18796] = { enUS = "Fel Overseer", deDE = "Teuflischer Vorarbeiter" },
					[18797] = { enUS = "Tortured Skeleton", deDE = "Gequältes Skelett" },
					[18830] = { enUS = "Cabal Fanatic", deDE = "Fanatiker der Kabale" },
					[18848] = { enUS = "Malicious Instructor", deDE = "Bösartige Ausbilderin" },
					[19208] = { enUS = "Summoned Cabal Acolyte", deDE = "Beschworener Akolyth der Kabale" },
					[19209] = { enUS = "Summoned Cabal Deathsworn", deDE = "Beschworener Todeshöriger der Kabale" },
					[19226] = { enUS = "Void Traveler", deDE = "Leerreisender" },
					[22890] = { enUS = "First Fragment Guardian", deDE = "Wächter des ersten Teils" },
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
					[15547] = { enUS = "Spectral Charger", deDE = "Spektrales Streitross" },
					[15548] = { enUS = "Spectral Stallion", deDE = "Spektraler Hengst" },
					[15551] = { enUS = "Spectral Stable Hand", deDE = "Spektraler Stallarbeiter" },
					[15687] = { enUS = "Moroes", deDE = "Moroes" },
					[15688] = { enUS = "Terestian Illhoof", deDE = "Terestian Siechhuf" },
					[15689] = { enUS = "Netherspite", deDE = "Nethergroll" },
					[15690] = { enUS = "Prince Malchezaar", deDE = "Prinz Malchezaar" },
					[15691] = { enUS = "The Curator", deDE = "Der Kurator" },
					[16151] = { enUS = "Midnight", deDE = "Mittnacht" },
					[16152] = { enUS = "Attumen the Huntsman", deDE = "Attumen der Jäger" },
					[16170] = { enUS = "Coldmist Stalker", deDE = "Eisnebelpirscher" },
					[16171] = { enUS = "Coldmist Widow", deDE = "Eisnebelwitwe" },
					[16173] = { enUS = "Shadowbat", deDE = "Schattenfledermaus" },
					[16174] = { enUS = "Greater Shadowbat", deDE = "Große Schattenfledermaus" },
					[16175] = { enUS = "Vampiric Shadowbat", deDE = "Vampirschattenfledermaus" },
					[16176] = { enUS = "Shadowbeast", deDE = "Schattenbestie" },
					[16177] = { enUS = "Dreadbeast", deDE = "Schreckensbestie" },
					[16178] = { enUS = "Phase Hound", deDE = "Phasenhund" },
					[16179] = { enUS = "Hyakiss the Lurker", deDE = "Hyakiss der Lauerer" },
					[16180] = { enUS = "Shadikith the Glider", deDE = "Shadikith der Gleiter" },
					[16181] = { enUS = "Rokad the Ravager", deDE = "Rokad der Verheerer" },
					[16457] = { enUS = "Maiden of Virtue", deDE = "Tugendhafte Maid" },
					[16389] = { enUS = "Spectral Apprentice", deDE = "Spektraler Lehrling" },
					[16406] = { enUS = "Phantom Attendant", deDE = "Phantomknecht" },
					[16407] = { enUS = "Spectral Servant", deDE = "Spektraler Diener" },
					[16408] = { enUS = "Phantom Valet", deDE = "Phantomdiener" },
					[16409] = { enUS = "Phantom Guest", deDE = "Phantomgast" },
					[16410] = { enUS = "Spectral Retainer", deDE = "Spektraler Anhänger" },
					[16411] = { enUS = "Spectral Chef", deDE = "Spektraler Küchenchef" },
					[16412] = { enUS = "Ghostly Baker", deDE = "Geisterhafter Bäcker" },
					[16414] = { enUS = "Ghostly Steward", deDE = "Geisterhafter Bediensteter" },
					[16415] = { enUS = "Skeletal Waiter", deDE = "Skelettkellner" },
					[16424] = { enUS = "Spectral Sentry", deDE = "Spektraler Wachposten" },
					[16425] = { enUS = "Phantom Guardsman", deDE = "Phantomgardist" },
					[16459] = { enUS = "Wanton Hostess", deDE = "Üppige Schankmaid" },
					[16460] = { enUS = "Night Mistress", deDE = "Herrin der Nacht" },
					[16461] = { enUS = "Concubine", deDE = "Konkubine" },
					[16468] = { enUS = "Spectral Patron", deDE = "Spektraler Gast" },
					[16470] = { enUS = "Ghostly Philanthropist", deDE = "Geisterhafter Philanthrop" },
					[16471] = { enUS = "Skeletal Usher", deDE = "Skelettpförtner" },
					[16472] = { enUS = "Phantom Stagehand", deDE = "Phantombühnenarbeiter" },
					[16473] = { enUS = "Spectral Performer", deDE = "Spektraler Gaukler" },
					[16481] = { enUS = "Ghastly Haunt", deDE = "Grauenhafte Spukgestalt" },
					[16482] = { enUS = "Trapped Soul", deDE = "Gefangene Seele" },
					[16485] = { enUS = "Arcane Watchman", deDE = "Arkanwachmann" },
					[16488] = { enUS = "Arcane Anomaly", deDE = "Arkananomalie" },
					[16489] = { enUS = "Chaotic Sentience", deDE = "Chaotisches Scheinbild" },
					[16491] = { enUS = "Mana Feeder", deDE = "Manaschlinger" },
					[16492] = { enUS = "Syphoner", deDE = "Manaschmarotzer" },
					[16504] = { enUS = "Arcane Protector", deDE = "Arkanbeschützer" },
					[16524] = { enUS = "Shade of Aran", deDE = "Arans Schemen" },
					[16525] = { enUS = "Ethereal Spellfilcher", deDE = "Zauberschemen" },
					[16526] = { enUS = "Sorcerous Shade", deDE = "Magieschemen" },
					[16529] = { enUS = "Magical Horror", deDE = "Magischer Schrecken" },
					[16530] = { enUS = "Mana Warp", deDE = "Manawirbel" },
					[16539] = { enUS = "Homunculus", deDE = "Homonculus" },
					[16540] = { enUS = "Shadow Pillager", deDE = "Schattenplünderer" },
					[16544] = { enUS = "Ethereal Thief", deDE = "Astraler Dieb" },
					[16545] = { enUS = "Ethereal Spellfilcher", deDE = "Astraler Zauberfresser" },
					[16595] = { enUS = "Fleshbeast", deDE = "Fleischbestie" },
					[16596] = { enUS = "Greater Fleshbeast", deDE = "Große Fleischbestie" },
					[16812] = { enUS = "Barnes", deDE = "Barnes" },
					[16816] = { enUS = "Echo of Medivh", deDE = "Echo Medivhs" },
					[17007] = { enUS = "Lady Keira Berrybuck", deDE = "Lady Keira Beerhas" },
					[17067] = { enUS = "Phantom Hound", deDE = "Phantomhund" },
					[17096] = { enUS = "Astral Flare", deDE = "Astralflimmern" },
					[17167] = { enUS = "Astral Spark", deDE = "Herbeigezauberter Elementar" },
					[17211] = { enUS = "Human Footman", deDE = "Menschenfußsoldat" },
					[17225] = { enUS = "Nightbane", deDE = "Schrecken der Nacht" },
					[17229] = { enUS = "Infernal", deDE = "Kil\\'rek" },
					[17248] = { enUS = "Demon Chains", deDE = "Dämonenketten" },
					[17261] = { enUS = "Restless Skeleton", deDE = "Ruheloses Skelett" },
					[17267] = { enUS = "Fiendish Imp", deDE = "Dämonischer Wichtel" },
					[17283] = { enUS = "Astral Spark", deDE = "Astralfunke" },
					[17469] = { enUS = "Orc Grunt", deDE = "Orcgrunzer" },
					[17521] = { enUS = "The Big Bad Wolf", deDE = "Der große böse Wolf" },
					[17533] = { enUS = "Romulo", deDE = "Romulo" },
					[17534] = { enUS = "Julianne", deDE = "Julianne" },
					[17535] = { enUS = "Dorothee", deDE = "Dorothee" },
					[17543] = { enUS = "Strawman", deDE = "Strohmann" },
					[17546] = { enUS = "Roar", deDE = "Brüller" },
					[17547] = { enUS = "Tinhead", deDE = "Blechkopf" },
					[17548] = { enUS = "Tito", deDE = "Tito" },
					[17603] = { enUS = "Grandmother", deDE = "Großmutter" },
					[18168] = { enUS = "The Crone", deDE = "Die böse Hexe" },
					[19872] = { enUS = "Lady Catriona Von'Indi", deDE = "Lady Catriona Von\\'Indi" },
					[19873] = { enUS = "Lord Crispin Ference", deDE = "Lord Crispin Ference" },
					[19874] = { enUS = "Baron Rafe Dreuger", deDE = "Baron Rafe Dreuger" },
					[19875] = { enUS = "Baroness Dorothea Millstipe", deDE = "Baroness Dorothea Mühlenstein" },
					[19876] = { enUS = "Lord Robin Daris", deDE = "Lord Robin Daris" },
					[21160] = { enUS = "Conjured Water Elemental", deDE = "Herbeigezauberter Wasserelementar" },
					[21664] = { enUS = "Human Charger", deDE = "Streitross der Menschen" },
					[21682] = { enUS = "Human Cleric", deDE = "Menschenkleriker" },
					[21683] = { enUS = "Human Conjurer", deDE = "Menschenbeschwörer" },
					[21684] = { enUS = "King Llane", deDE = "König Llane" },
					[21726] = { enUS = "Summoned Daemon", deDE = "Beschworener Dämon" },
					[21747] = { enUS = "Orc Necrolyte", deDE = "Orcnekrolyth" },
					[21748] = { enUS = "Orc Wolf", deDE = "Wolf der Orcs" },
					[21750] = { enUS = "Orc Warlock", deDE = "Orchexenmeister" },
					[21752] = { enUS = "Warchief Blackhand", deDE = "Kriegshäuptling Schwarzfaust" },
				},
				npcIDs = {
					16151, 16152, 15687, 16812, 16457, 15691, 15688, 16524, 15689, 15690,
					17225, 16179, 16180, 16181, 17007, 19872, 19873, 19874, 19875, 19876,
					17603, 17521, 17533, 17534, 17535, 17543, 17546, 17547, 17548, 18168,
					16816, 17211, 17469, 21160, 21664, 21682, 21683, 21684, 21726, 21747,
					21748, 21750, 21752, 15547, 15548, 15551, 16170, 16171, 16173, 16174,
					16175, 16176, 16177, 16178, 16389, 16406, 16407, 16408, 16409, 16410,
					16411, 16412, 16414, 16415, 16424, 16425, 16459, 16460, 16461, 16468,
					16470, 16471, 16472, 16473, 16481, 16482, 16485, 16488, 16489, 16491,
					16492, 16504, 16525, 16526, 16529, 16530, 16539, 16540, 16544, 16545,
					16595, 16596, 17067, 17096, 17167, 17229, 17248, 17261, 17267, 17283,
				},
			},
			gruuls_lair = {
				order = 7,
				type = "Raid",
				name = {
					enUS = "Gruul's Lair",
					deDE = "Gruuls Unterschlupf",
				},
				npcNames = {
					[18831] = { enUS = "High King Maulgar", deDE = "Hochkönig Maulgar" },
					[18832] = { enUS = "Krosh Firehand", deDE = "Krosh Feuerhand" },
					[18834] = { enUS = "Olm the Summoner", deDE = "Olm der Beschwörer" },
					[18835] = { enUS = "Kiggler the Crazed", deDE = "Gicherer der Wahnsinnige" },
					[18836] = { enUS = "Blindeye the Seer", deDE = "Blindauge der Seher" },
					[18847] = { enUS = "Wild Fel Stalker", deDE = "Wilder Teufelspirscher" },
					[19044] = { enUS = "Gruul the Dragonkiller", deDE = "Gruul der Drachenschlächter" },
					[19389] = { enUS = "Lair Brute", deDE = "Schläger des Unterschlupfs" },
					[21350] = { enUS = "Gronn-Priest", deDE = "Gronnpriester" },
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
					deDE = "Magtheridons Kammer",
				},
				npcNames = {
					[17256] = { enUS = "Hellfire Channeler", deDE = "Kanalisierer des Höllenfeuers" },
					[17257] = { enUS = "Magtheridon", deDE = "Magtheridon" },
					[17454] = { enUS = "Burning Abyssal", deDE = "Brennender Abyss" },
					[18829] = { enUS = "Hellfire Warder", deDE = "Höllenfeuerwärter" },
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
					[23542] = { enUS = "Amani'shi Axe Thrower", deDE = "Axtwerfer der Amani\\'shi" },
					[23574] = { enUS = "Akil'zon", deDE = "Akil\\'zon" },
					[23576] = { enUS = "Nalorakk", deDE = "Nalorakk" },
					[23577] = { enUS = "Halazzi", deDE = "Halazzi" },
					[23578] = { enUS = "Jan'alai", deDE = "Jan\\'alai" },
					[23580] = { enUS = "Amani'shi Warbringer", deDE = "Kriegshetzer der Amani\\'shi" },
					[23581] = { enUS = "Amani'shi Medicine Man", deDE = "Medizinmann der Amani\\'shi" },
					[23582] = { enUS = "Amani'shi Tribesman", deDE = "Stammesangehöriger der Amani\\'shi" },
					[23584] = { enUS = "Amani Bear", deDE = "Bär der Amani" },
					[23586] = { enUS = "Amani'shi Scout", deDE = "Späher der Amani\\'shi" },
					[23596] = { enUS = "Amani'shi Flame Caster", deDE = "Flammenwirker der Amani\\'shi" },
					[23597] = { enUS = "Amani'shi Guardian", deDE = "Wächter der Amani\\'shi" },
					[23774] = { enUS = "Amani'shi Trainer", deDE = "Ausbilder der Amani\\'shi" },
					[23834] = { enUS = "Amani Dragonhawk", deDE = "Drachenfalke der Amani" },
					[23863] = { enUS = "Zul'jin", deDE = "Zul\\'jin" },
					[23889] = { enUS = "Amani'shi Savage", deDE = "Wilder der Amani\\'shi" },
					[24043] = { enUS = "Amani Lynx", deDE = "Luchs der Amani" },
					[24047] = { enUS = "Amani Crocolisk", deDE = "Krokilisk der Amani" },
					[24059] = { enUS = "Amani'shi Beast Tamer", deDE = "Bestienbändiger der Amani\\'shi" },
					[24064] = { enUS = "Amani Lynx Cub", deDE = "Luchsjunges der Amani" },
					[24065] = { enUS = "Amani'shi Handler", deDE = "Tierführer der Amani\\'shi" },
					[24138] = { enUS = "Tamed Amani Crocolisk", deDE = "Gezähmter Krokilisk der Amani" },
					[24175] = { enUS = "Amani'shi Lookout", deDE = "Ausguck der Amani\\'shi" },
					[24179] = { enUS = "Amani'shi Wind Walker", deDE = "Windwandler der Amani\\'shi" },
					[24180] = { enUS = "Amani'shi Protector", deDE = "Beschützer der Amani\\'shi" },
					[24217] = { enUS = "Amani Bear Mount", deDE = "Bärenreittier der Amani" },
					[24239] = { enUS = "Hex Lord Malacrass", deDE = "Hexlord Malacrass" },
					[24374] = { enUS = "Amani'shi Berserker", deDE = "Berserker der Amani\\'shi" },
					[24530] = { enUS = "Amani Elder Lynx", deDE = "Alter Luchs der Amani" },
					[24549] = { enUS = "Amani'shi Tempest", deDE = "Sturmkrieger der Amani\\'shi" },
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
					deDE = "Die Zerschmetterten Hallen",
				},
				npcNames = {
					[16507] = { enUS = "Shattered Hand Sentry", deDE = "Wachposten der Zerschmetterten Hand" },
					[16523] = { enUS = "Shattered Hand Savage", deDE = "Wilder der Zerschmetterten Hand" },
					[16593] = { enUS = "Shattered Hand Brawler", deDE = "Raufbold der Zerschmetterten Hand" },
					[16594] = { enUS = "Shadowmoon Acolyte", deDE = "Akolyth des Schattenmondklans" },
					[16699] = { enUS = "Shattered Hand Reaver", deDE = "Häscher der Zerschmetterten Hand" },
					[16700] = { enUS = "Shattered Hand Legionnaire", deDE = "Legionär der Zerschmetterten Hand" },
					[16704] = { enUS = "Shattered Hand Sharpshooter", deDE = "Scharfschütze der Zerschmetterten Hand" },
					[16807] = { enUS = "Grand Warlock Nethekurse", deDE = "Großhexenmeister Nethekurse" },
					[16808] = { enUS = "Warchief Kargath Bladefist", deDE = "Kriegshäuptling Kargath Messerfaust" },
					[16809] = { enUS = "Warbringer O'mrogg", deDE = "Kriegshetzer O\\'mrogg" },
					[17083] = { enUS = "Fel Orc Convert", deDE = "Höllenorckonvertit" },
					[17301] = { enUS = "Shattered Hand Executioner", deDE = "Henker der Zerschmetterten Hand" },
					[17356] = { enUS = "Creeping Ooze", deDE = "Schleichender Brühschlammer" },
					[17357] = { enUS = "Creeping Oozeling", deDE = "Schleichender Brühschlammling" },
					[17420] = { enUS = "Shattered Hand Heathen", deDE = "Häretiker der Zerschmetterten Hand" },
					[17427] = { enUS = "Shattered Hand Archer", deDE = "Bogenschütze der Zerschmetterten Hand" },
					[17461] = { enUS = "Shattered Hand Blood Guard", deDE = "Blutwache der Zerschmetterten Hand" },
					[17462] = { enUS = "Shattered Hand Zealot", deDE = "Zelot der Zerschmetterten Hand" },
					[17464] = { enUS = "Shattered Hand Gladiator", deDE = "Gladiator der Zerschmetterten Hand" },
					[17465] = { enUS = "Shattered Hand Centurion", deDE = "Zenturio der Zerschmetterten Hand" },
					[17578] = { enUS = "Hellfire Training Dummy", deDE = "Trainingsattrappe" },
					[17621] = { enUS = "Heathen Guard", deDE = "Heidnischer Wächter" },
					[17622] = { enUS = "Sharpshooter Guard", deDE = "Scharfschützenwächter" },
					[17623] = { enUS = "Reaver Guard", deDE = "Häscherwächter" },
					[17669] = { enUS = "Rabid Warhound", deDE = "Tollwütiger Kriegshund" },
					[17670] = { enUS = "Shattered Hand Houndmaster", deDE = "Hundemeister der Zerschmetterten Hand" },
					[17671] = { enUS = "Shattered Hand Champion", deDE = "Champion der Zerschmetterten Hand" },
					[17693] = { enUS = "Shattered Hand Scout", deDE = "Späher der Zerschmetterten Hand" },
					[17694] = { enUS = "Shadowmoon Darkcaster", deDE = "Dunkelzauberer des Schattenmondklans" },
					[17695] = { enUS = "Shattered Hand Assassin", deDE = "Auftragsmörder der Zerschmetterten Hand" },
					[20923] = { enUS = "Blood Guard Porung", deDE = "Blutwache Porung" },
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
					deDE = "Die Sklavenunterkuenfte",
				},
				npcNames = {
					[17816] = { enUS = "Bogstrok", deDE = "Sumpfstrok" },
					[17817] = { enUS = "Greater Bogstrok", deDE = "Großer Sumpfstrok" },
					[17893] = { enUS = "Naturalist Bite", deDE = "Naturalist Biss" },
					[17938] = { enUS = "Coilfang Observer", deDE = "Beobachter des Echsenkessels" },
					[17940] = { enUS = "Coilfang Technician", deDE = "Techniker des Echsenkessels" },
					[17941] = { enUS = "Mennu the Betrayer", deDE = "Mennu der Verräter" },
					[17942] = { enUS = "Quagmirran", deDE = "Quagmirran" },
					[17957] = { enUS = "Coilfang Champion", deDE = "Champion des Echsenkessels" },
					[17958] = { enUS = "Coilfang Defender", deDE = "Verteidiger des Echsenkessels" },
					[17959] = { enUS = "Coilfang Slavehandler", deDE = "Sklaventreiber des Echsenkessels" },
					[17960] = { enUS = "Coilfang Soothsayer", deDE = "Sterndeuter des Echsenkessels" },
					[17961] = { enUS = "Coilfang Enchantress", deDE = "Verzauberin des Echsenkessels" },
					[17962] = { enUS = "Coilfang Collaborator", deDE = "Kollaborateur des Echsenkessels" },
					[17963] = { enUS = "Wastewalker Slave", deDE = "Sklave der Ödniswandler" },
					[17964] = { enUS = "Wastewalker Worker", deDE = "Arbeiter der Ödniswandler" },
					[17991] = { enUS = "Rokmar the Crackler", deDE = "Rokmar der Zerquetscher" },
					[18176] = { enUS = "Tainted Earthgrab Totem", deDE = "Besudeltes Totem des Erdengriffs" },
					[18177] = { enUS = "Tainted Stoneskin Totem", deDE = "Besudeltes Totem der Steinhaut" },
					[18179] = { enUS = "Corrupted Nova Totem", deDE = "Verderbtes Totem der Nova" },
					[20208] = { enUS = "Mennu's Healing Ward", deDE = "Mennus Heilungszauberschutz" },
					[21126] = { enUS = "Coilfang Scale-Healer", deDE = "Schuppenheilerin des Echsenkessels" },
					[21127] = { enUS = "Coilfang Tempest", deDE = "Orkan des Echsenkessels" },
					[21128] = { enUS = "Coilfang Ray", deDE = "Rochen des Echsenkessels" },
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
					deDE = "Der Tiefensumpf",
				},
				npcNames = {
					[17723] = { enUS = "Bog Giant", deDE = "Sumpfriese" },
					[17724] = { enUS = "Underbat", deDE = "Tiefenfledermaus" },
					[17725] = { enUS = "Underbog Lurker", deDE = "Tiefensumpflauerer" },
					[17726] = { enUS = "Wrathfin Myrmidon", deDE = "Myrmidone der Zornflossen" },
					[17727] = { enUS = "Wrathfin Sentry", deDE = "Wachposten der Zornflossen" },
					[17728] = { enUS = "Murkblood Tribesman", deDE = "Stammesangehöriger der Finsterblut" },
					[17729] = { enUS = "Murkblood Spearman", deDE = "Speerträger der Finsterblut" },
					[17730] = { enUS = "Murkblood Healer", deDE = "Heiler der Finsterblut" },
					[17731] = { enUS = "Fen Ray", deDE = "Fennrochen" },
					[17732] = { enUS = "Lykul Wasp", deDE = "Lykulwespe" },
					[17734] = { enUS = "Underbog Lord", deDE = "Tiefensumpflord" },
					[17735] = { enUS = "Wrathfin Warrior", deDE = "Krieger der Zornflossen" },
					[17770] = { enUS = "Hungarfen", deDE = "Hungarfenn" },
					[17771] = { enUS = "Murkblood Oracle", deDE = "Orakel der Finsterblut" },
					[17826] = { enUS = "Swamplord Musel'ek", deDE = "Sumpffürst Musel\\'ek" },
					[17827] = { enUS = "Claw", deDE = "Klaue" },
					[17871] = { enUS = "Underbog Shambler", deDE = "Tiefensumpfschlurfer" },
					[17882] = { enUS = "The Black Stalker", deDE = "Die Schattenmutter" },
					[17990] = { enUS = "Underbog Mushroom", deDE = "Tiefensumpfpilz" },
					[18105] = { enUS = "Ghaz'an", deDE = "Ghaz\\'an" },
					[18107] = { enUS = "Overseer Tidewrath", deDE = "Vorarbeiter Gezeitenzorn" },
					[19632] = { enUS = "Lykul Stinger", deDE = "Lykulstecher" },
					[20465] = { enUS = "Underbog Frenzy", deDE = "Tiefensumpffrenzy" },
					[22299] = { enUS = "Spore Strider", deDE = "Sporenschreiter" },
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
					deDE = "Die Dampfkammer",
				},
				npcNames = {
					[17721] = { enUS = "Coilfang Engineer", deDE = "Ingenieur des Echsenkessels" },
					[17722] = { enUS = "Coilfang Sorceress", deDE = "Zauberhexerin des Echsenkessels" },
					[17796] = { enUS = "Mekgineer Steamrigger", deDE = "Robogenieur Dampfhammer" },
					[17797] = { enUS = "Hydromancer Thespia", deDE = "Wasserbeschwörerin Thespia" },
					[17798] = { enUS = "Warlord Kalithresh", deDE = "Kriegsherr Kalithresh" },
					[17799] = { enUS = "Warlord Kalithresh's Naga Distiller", deDE = "Sklave des Lumpenpacks" },
					[17800] = { enUS = "Coilfang Myrmidon", deDE = "Myrmidone des Echsenkessels" },
					[17801] = { enUS = "Coilfang Siren", deDE = "Sirene des Echsenkessels" },
					[17802] = { enUS = "Coilfang Warrior", deDE = "Krieger des Echsenkessels" },
					[17803] = { enUS = "Coilfang Oracle", deDE = "Orakel des Echsenkessels" },
					[17805] = { enUS = "Coilfang Slavemaster", deDE = "Sklavenmeister des Echsenkessels" },
					[17917] = { enUS = "Coilfang Water Elemental", deDE = "Wasserelementar des Echsenkessels" },
					[17951] = { enUS = "Steamrigger Mechanic", deDE = "Dampfhammers Mechaniker" },
					[17954] = { enUS = "Warlord Kalithresh", deDE = "Destillationsapparat der Naga" },
					[21338] = { enUS = "Coilfang Leper", deDE = "Aussätziger des Echsenkessels" },
					[21694] = { enUS = "Bog Overlord", deDE = "Sumpfoberanführer" },
					[21695] = { enUS = "Tidal Surger", deDE = "Gezeitenwoger" },
					[21696] = { enUS = "Steam Surger", deDE = "Dampfwoger" },
					[22891] = { enUS = "Second Fragment Guardian", deDE = "Wächter des zweiten Teils" },
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
					deDE = "Managruft",
				},
				npcNames = {
					[18309] = { enUS = "Ethereal Scavenger", deDE = "Astraler Strauchdieb" },
					[18311] = { enUS = "Ethereal Crypt Raider", deDE = "Astraler Grufträuber" },
					[18312] = { enUS = "Ethereal Spellbinder", deDE = "Astraler Zauberbinder" },
					[18313] = { enUS = "Ethereal Sorcerer", deDE = "Astraler Zauberhexer" },
					[18314] = { enUS = "Nexus Stalker", deDE = "Nexuswandler" },
					[18315] = { enUS = "Ethereal Theurgist", deDE = "Astraler Theurg" },
					[18317] = { enUS = "Ethereal Priest", deDE = "Astraler Priester" },
					[18331] = { enUS = "Ethereal Darkcaster", deDE = "Astraler Dunkelzauberer" },
					[18341] = { enUS = "Pandemonius", deDE = "Pandemonius" },
					[18343] = { enUS = "Tavarok", deDE = "Tavarok" },
					[18344] = { enUS = "Nexus-Prince Shaffar", deDE = "Nexusprinz Shaffar" },
					[18394] = { enUS = "Ethereal Wraith", deDE = "Astrales Gespenst" },
					[18429] = { enUS = "Arcane Fiend", deDE = "Arkane Bestie" },
					[18430] = { enUS = "Ethereal Apprentice", deDE = "Astraler Lehrling" },
					[18431] = { enUS = "Ethereal Beacon", deDE = "Astrales Leuchtfeuer" },
					[19306] = { enUS = "Mana Leech", deDE = "Manasauger" },
					[19307] = { enUS = "Nexus Terror", deDE = "Nexusschrecken" },
					[22930] = { enUS = "Yor", deDE = "Yor" },
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
					deDE = "Vorgebirge des Alten Huegellands",
				},
				npcNames = {
					[17814] = { enUS = "Lordaeron Watchman", deDE = "Wachmann von Lordaeron" },
					[17815] = { enUS = "Lordaeron Sentry", deDE = "Späher von Lordaeron" },
					[17819] = { enUS = "Durnholde Sentry", deDE = "Wachposten von Durnholde" },
					[17820] = { enUS = "Durnholde Rifleman", deDE = "Scharfschütze von Durnholde" },
					[17833] = { enUS = "Durnholde Warden", deDE = "Aufseher von Durnholde" },
					[17840] = { enUS = "Durnholde Tracking Hound", deDE = "Fährtenleserhund von Durnholde" },
					[17846] = { enUS = "Pit Spectator", deDE = "Grubenzuschauer" },
					[17848] = { enUS = "Lieutenant Drake", deDE = "Leutnant Drach" },
					[17860] = { enUS = "Durnholde Veteran", deDE = "Veteran von Durnholde" },
					[17862] = { enUS = "Captain Skarloc", deDE = "Kapitän Skarloc" },
					[18092] = { enUS = "Tarren Mill Guardsman", deDE = "Gardist von Tarrens Mühle" },
					[18093] = { enUS = "Tarren Mill Protector", deDE = "Beschützer von Tarrens Mühle" },
					[18094] = { enUS = "Tarren Mill Lookout", deDE = "Ausguck von Tarrens Mühle" },
					[18096] = { enUS = "Epoch Hunter", deDE = "Epochenjäger" },
					[18170] = { enUS = "Infinite Slayer", deDE = "Ewiger Töter" },
					[18171] = { enUS = "Infinite Defiler", deDE = "Ewiger Schänder" },
					[18172] = { enUS = "Infinite Saboteur", deDE = "Ewiger Saboteur" },
					[18673] = { enUS = "Pit Announcer", deDE = "Grubenansager" },
					[18725] = { enUS = "Brazen", deDE = "Brazen" },
					[18764] = { enUS = "Durnholde Armorer", deDE = "Rüstungsschmied von Durnholde" },
					[18765] = { enUS = "Durnholde Cook", deDE = "Koch von Durnholde" },
					[18786] = { enUS = "Thrall", deDE = "Thrall" },
					[18934] = { enUS = "Durnholde Mage", deDE = "Magier von Durnholde" },
					[26650] = { enUS = "Durnholde Captain", deDE = "Hauptmann von Durnholde" },
					[28132] = { enUS = "Don Carlos", deDE = "Don Carlos" },
					[28163] = { enUS = "Guerrero", deDE = "Guerrero" },
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
					deDE = "Der schwarze Morast",
				},
				npcNames = {
					[15608] = { enUS = "Medivh", deDE = "Medivh" },
					[17023] = { enUS = "Shadow Council Enforcer", deDE = "Vollstrecker des Schattenrats" },
					[17835] = { enUS = "Infinite Assassin", deDE = "Ewiger Assassine" },
					[17839] = { enUS = "Rift Lord", deDE = "Fürst der Zeitenrisse" },
					[17879] = { enUS = "Chrono Lord Deja", deDE = "Chronolord Deja" },
					[17880] = { enUS = "Temporus", deDE = "Temporus" },
					[17881] = { enUS = "Aeonus", deDE = "Aeonus" },
					[17892] = { enUS = "Infinite Chronomancer", deDE = "Ewige Chronomantin" },
					[17918] = { enUS = "Time Keeper", deDE = "Hüter der Zeit" },
					[17952] = { enUS = "Darkwater Crocolisk", deDE = "Dunkelwasserkrokilisk" },
					[18982] = { enUS = "Sable Jaguar", deDE = "Düsterjaguar" },
					[18983] = { enUS = "Blackfang Tarantula", deDE = "Schwarzfangtarantel" },
					[18994] = { enUS = "Infinite Executioner", deDE = "Ewiger Henker" },
					[18995] = { enUS = "Infinite Vanquisher", deDE = "Ewige Bezwingerin" },
					[20201] = { enUS = "Sa'at", deDE = "Sa\\'at" },
					[21104] = { enUS = "Rift Keeper", deDE = "Bewahrerin der Zeitrisse" },
					[21697] = { enUS = "Infinite Chrono-Lord", deDE = "Ewiger Chronolord" },
					[21698] = { enUS = "Infinite Timereaver", deDE = "Ewiger Zeithäscher" },
					[21818] = { enUS = "Infinite Whelp", deDE = "Ewiger Welpe" },
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
					deDE = "Die Mechanar",
				},
				npcNames = {
					[19166] = { enUS = "Tempest-Forge Patroller", deDE = "Patrolleur der Sturmschmiede" },
					[19167] = { enUS = "Bloodwarder Slayer", deDE = "Töter der Blutwärter" },
					[19168] = { enUS = "Sunseeker Astromage", deDE = "Astromagier der Sonnensucher" },
					[19218] = { enUS = "Gatewatcher Gyro-Kill", deDE = "Torwächter Gyrotod" },
					[19219] = { enUS = "Mechano-Lord Capacitus", deDE = "Mechanolord Kapazitus" },
					[19220] = { enUS = "Pathaleon the Calculator", deDE = "Pathaleon der Kalkulator" },
					[19221] = { enUS = "Nethermancer Sepethrea", deDE = "Nethermantin Sepethrea" },
					[19231] = { enUS = "Mechanar Crusher", deDE = "Zermalmer der Mechanar" },
					[19510] = { enUS = "Bloodwarder Centurion", deDE = "Zenturio der Blutwärter" },
					[19710] = { enUS = "Gatewatcher Iron-Hand", deDE = "Torwächter Eisenhand" },
					[19712] = { enUS = "Mechanar Driller", deDE = "Brecher der Mechanar" },
					[19713] = { enUS = "Mechanar Wrecker", deDE = "Zerstörer der Mechanar" },
					[19716] = { enUS = "Mechanar Tinkerer", deDE = "Tüftler der Mechanar" },
					[19735] = { enUS = "Tempest-Forge Destroyer", deDE = "Zerstörer der Sturmschmiede" },
					[20059] = { enUS = "Sunseeker Netherbinder", deDE = "Netherbinder der Sonnensucher" },
					[20478] = { enUS = "Arcane Servant", deDE = "Arkandiener" },
					[20481] = { enUS = "Nether Charge", deDE = "Tobende Flammen" },
					[20988] = { enUS = "Sunseeker Engineer", deDE = "Ingenieur der Sonnensucher" },
					[20990] = { enUS = "Bloodwarder Physician", deDE = "Heiler der Blutwärter" },
					[21062] = { enUS = "Nether Wraith", deDE = "Nethergespenst" },
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
					deDE = "Die Botanika",
				},
				npcNames = {
					[17975] = { enUS = "High Botanist Freywinn", deDE = "Hochbotaniker Freywinn" },
					[17976] = { enUS = "Commander Sarannis", deDE = "Kommandant Sarannis" },
					[17977] = { enUS = "Warp Splinter", deDE = "Warpzweig" },
					[17978] = { enUS = "Thorngrin the Tender", deDE = "Dorngrin der Hüter" },
					[17980] = { enUS = "Laj", deDE = "Laj" },
					[17993] = { enUS = "Bloodwarder Protector", deDE = "Beschützer der Blutwärter" },
					[17994] = { enUS = "Bloodwarder Falconer", deDE = "Falkner der Blutwärter" },
					[18155] = { enUS = "Bloodfalcon", deDE = "Bluthabicht" },
					[18404] = { enUS = "Bloodwarder Steward", deDE = "Bediensteter der Blutwärter" },
					[18405] = { enUS = "Tempest-Forge Peacekeeper", deDE = "Friedensbewahrer der Sturmschmiede" },
					[18419] = { enUS = "Bloodwarder Greenkeeper", deDE = "Waldbehüter der Blutwärter" },
					[18420] = { enUS = "Sunseeker Geomancer", deDE = "Geomant der Sonnensucher" },
					[18421] = { enUS = "Sunseeker Researcher", deDE = "Forscher der Sonnensucher" },
					[18422] = { enUS = "Sunseeker Botanist", deDE = "Botaniker der Sonnensucher" },
					[18587] = { enUS = "Frayer", deDE = "Peitschling" },
					[19486] = { enUS = "Sunseeker Chemist", deDE = "Chemiker der Sonnensucher" },
					[19505] = { enUS = "Sunseeker Channeler", deDE = "Kanalisierer der Sonnensucher" },
					[19507] = { enUS = "Sunseeker Gene-Splicer", deDE = "Genbinder der Sonnensucher" },
					[19508] = { enUS = "Sunseeker Herbalist", deDE = "Kräuterkundiger der Sonnensucher" },
					[19509] = { enUS = "Sunseeker Harvester", deDE = "Ernter der Sonnensucher" },
					[19511] = { enUS = "Nethervine Inciter", deDE = "Hetzer der Netherranke" },
					[19512] = { enUS = "Nethervine Reaper", deDE = "Ernter der Netherranke" },
					[19513] = { enUS = "Mutate Fear-Shrieker", deDE = "Mutierter Furchtkreischer" },
					[19557] = { enUS = "Greater Frayer", deDE = "Großer Peitschling" },
					[19598] = { enUS = "Mutate Fleshlasher", deDE = "Mutierter Fleischpeitscher" },
					[19608] = { enUS = "Frayer Wildling", deDE = "Wilder Peitschling" },
					[19633] = { enUS = "Bloodwarder Mender", deDE = "Heilkundiger der Blutwärter" },
					[19843] = { enUS = "Nethervine Trickster", deDE = "Schwindler der Netherranke" },
					[19865] = { enUS = "Mutate Horror", deDE = "Mutierter Schrecken" },
					[19919] = { enUS = "Thorn Lasher", deDE = "Dornpeitscher" },
					[19920] = { enUS = "Thorn Flayer", deDE = "Dornschinder" },
					[19949] = { enUS = "Sapling", deDE = "Schössling" },
					[19953] = { enUS = "Frayer Protector", deDE = "Peitschlingbeschützer" },
					[19958] = { enUS = "White Seedling", deDE = "Weißer Setzling" },
					[19962] = { enUS = "Blue Seedling", deDE = "Blauer Setzling" },
					[19964] = { enUS = "Red Seedling", deDE = "Roter Setzling" },
					[19969] = { enUS = "Green Seedling", deDE = "Grüner Setzling" },
					[20078] = { enUS = "Summoned Bloodwarder Reservist", deDE = "Beschworener Reservist der Blutwärter" },
					[20083] = { enUS = "Summoned Bloodwarder Mender", deDE = "Beschworener Heilkundiger der Blutwärter" },
					[25354] = { enUS = "Mutate Fleshlasher", deDE = "Mutierter Fleischpeitscher" },
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
					deDE = "Die Arkatraz",
				},
				npcNames = {
					[20857] = { enUS = "Arcatraz Defender", deDE = "Verteidiger der Arkatraz" },
					[20859] = { enUS = "Arcatraz Warder", deDE = "Wärter der Arkatraz" },
					[20864] = { enUS = "Protean Nightmare", deDE = "Mutabler Alptraum" },
					[20865] = { enUS = "Protean Horror", deDE = "Mutabler Schrecken" },
					[20866] = { enUS = "Soul Devourer", deDE = "Seelenverschlinger" },
					[20867] = { enUS = "Death Watcher", deDE = "Todeswächter" },
					[20868] = { enUS = "Entropic Eye", deDE = "Entropisches Auge" },
					[20869] = { enUS = "Arcatraz Sentinel", deDE = "Schildwache der Arkatraz" },
					[20870] = { enUS = "Zereketh the Unbound", deDE = "Zereketh der Unabhängige" },
					[20873] = { enUS = "Negaton Warp-Master", deDE = "Negatonwarpmeister" },
					[20875] = { enUS = "Negaton Screamer", deDE = "Negatonkreischer" },
					[20879] = { enUS = "Eredar Soul-Eater", deDE = "Seelenfresser der Eredar" },
					[20880] = { enUS = "Eredar Deathbringer", deDE = "Todesbringer der Eredar" },
					[20881] = { enUS = "Unbound Devastator", deDE = "Entfesselter Verwüster" },
					[20882] = { enUS = "Skulking Witch", deDE = "Schleichende Hexe" },
					[20883] = { enUS = "Spiteful Temptress", deDE = "Boshafte Verführerin" },
					[20885] = { enUS = "Dalliah the Doomsayer", deDE = "Dalliah die Verdammnisverkünderin" },
					[20886] = { enUS = "Wrath-Scryer Soccothrates", deDE = "Zornseher Soccothrates" },
					[20896] = { enUS = "Ethereum Slayer", deDE = "Töter des Astraleums" },
					[20897] = { enUS = "Ethereum Wave-Caster", deDE = "Wellenwirker des Astraleums" },
					[20898] = { enUS = "Gargantuan Abyssal", deDE = "Riesengroßer Abyss" },
					[20900] = { enUS = "Unchained Doombringer", deDE = "Entfesselter Verdammnisbringer" },
					[20901] = { enUS = "Sargeron Archer", deDE = "Bogenschütze von Sargeron" },
					[20902] = { enUS = "Sargeron Hellcaller", deDE = "Höllenrufer von Sargeron" },
					[20904] = { enUS = "Warden Mellichar", deDE = "Aufseher Mellichar" },
					[20905] = { enUS = "Blazing Trickster", deDE = "Lodernder Schwindler" },
					[20906] = { enUS = "Phase-Hunter", deDE = "Phasenjäger" },
					[20908] = { enUS = "Akkiris Lightning-Waker", deDE = "Akkiris Blitzrufer" },
					[20909] = { enUS = "Sulfuron Magma-Thrower", deDE = "Sulfuronmagmawerfer" },
					[20910] = { enUS = "Twilight Drakonaar", deDE = "Drakonaar des Zwielichts" },
					[20911] = { enUS = "Blackwing Drakonaar", deDE = "Drakonaar der Pechschwingen" },
					[20912] = { enUS = "Harbinger Skyriss", deDE = "Herold Horizontiss" },
					[20977] = { enUS = "Millhouse Manastorm", deDE = "Millhaus Manasturm" },
					[21303] = { enUS = "Defender Corpse", deDE = "Leichnam eines Verteidigers" },
					[21346] = { enUS = "Sightless Eye", deDE = "Blindes Auge" },
					[21395] = { enUS = "Protean Spawn", deDE = "Mutable Brut" },
					[21702] = { enUS = "Ethereum Life-Binder", deDE = "Lebensbinder des Astraleums" },
					[22892] = { enUS = "Third Fragment Guardian", deDE = "Wächter des dritten Teils" },
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
					deDE = "Terrasse der Magister",
				},
				npcNames = {
					[24552] = { enUS = "Sliver", deDE = "Splitter" },
					[24553] = { enUS = "Apoko", deDE = "Apoko" },
					[24554] = { enUS = "Eramas Brightblaze", deDE = "Eramas Leuchtfeuer" },
					[24555] = { enUS = "Garaxxas", deDE = "Garaxxas" },
					[24556] = { enUS = "Zelfan", deDE = "Zelfan" },
					[24557] = { enUS = "Kagani Nightstrike", deDE = "Kagani Nachtschlag" },
					[24558] = { enUS = "Ellrys Duskhallow", deDE = "Ellrys Dämmerweih" },
					[24559] = { enUS = "Warlord Salaris", deDE = "Kriegsherr Salaris" },
					[24560] = { enUS = "Priestess Delrissa", deDE = "Priesterin Delrissa" },
					[24561] = { enUS = "Yazzai", deDE = "Yazzai" },
					[24656] = { enUS = "Fizzle", deDE = "Zischel" },
					[24664] = { enUS = "Kael'thas Sunstrider", deDE = "Kael\\'thas Sonnenwanderer" },
					[24674] = { enUS = "Phoenix", deDE = "Phönix" },
					[24675] = { enUS = "Phoenix Egg", deDE = "Phönixei" },
					[24683] = { enUS = "Sunblade Mage Guard", deDE = "Magierwache der Sonnenklingen" },
					[24684] = { enUS = "Sunblade Blood Knight", deDE = "Blutritter der Sonnenklingen" },
					[24685] = { enUS = "Sunblade Magister", deDE = "Magister der Sonnenklingen" },
					[24686] = { enUS = "Sunblade Warlock", deDE = "Hexenmeister der Sonnenklingen" },
					[24687] = { enUS = "Sunblade Physician", deDE = "Heiler der Sonnenklingen" },
					[24688] = { enUS = "Wretched Skulker", deDE = "Getriebener Schleicher" },
					[24689] = { enUS = "Wretched Bruiser", deDE = "Getriebener Schläger" },
					[24690] = { enUS = "Wretched Husk", deDE = "Getriebene Hülle" },
					[24696] = { enUS = "Coilskar Witch", deDE = "Hexe der Echsennarbe" },
					[24697] = { enUS = "Sister of Torment", deDE = "Schwester der Qual" },
					[24698] = { enUS = "Ethereum Smuggler", deDE = "Schmuggler des Astraleums" },
					[24722] = { enUS = "Fel Crystal", deDE = "Teufelskristall" },
					[24723] = { enUS = "Selin Fireheart", deDE = "Selin Feuerherz" },
					[24744] = { enUS = "Vexallus", deDE = "Vexallus" },
					[24745] = { enUS = "Pure Energy", deDE = "Pure Energie" },
					[24761] = { enUS = "Brightscale Wyrm", deDE = "Hellschuppenwyrm" },
					[24762] = { enUS = "Sunblade Keeper", deDE = "Bewahrer der Sonnenklingen" },
					[24777] = { enUS = "Sunblade Sentinel", deDE = "Schildwache der Sonnenklingen" },
					[24781] = { enUS = "Nether Energy", deDE = "Netherenergie" },
					[24815] = { enUS = "Sunblade Imp", deDE = "Wichtel der Sonnenklingen" },
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
					deDE = "Hoehle des Schlangenschreins",
				},
				npcNames = {
					[21212] = { enUS = "Lady Vashj", deDE = "Lady Vashj" },
					[21213] = { enUS = "Morogrim Tidewalker", deDE = "Morogrim Gezeitenwandler" },
					[21214] = { enUS = "Fathom-Lord Karathress", deDE = "Tiefenlord Karathress" },
					[21215] = { enUS = "Leotheras the Blind", deDE = "Leotheras der Blinde" },
					[21216] = { enUS = "Hydross the Unstable", deDE = "Hydross der Unstete" },
					[21217] = { enUS = "The Lurker Below", deDE = "Das Grauen aus der Tiefe" },
					[21218] = { enUS = "Vashj'ir Honor Guard", deDE = "Ehrenwache der Vashj\\'ir" },
					[21220] = { enUS = "Coilfang Priestess", deDE = "Priesterin des Echsenkessels" },
					[21221] = { enUS = "Coilfang Beast-Tamer", deDE = "Bestienbändiger des Echsenkessels" },
					[21224] = { enUS = "Tidewalker Depth-Seer", deDE = "Tiefenseher der Gezeitenwandler" },
					[21225] = { enUS = "Tidewalker Warrior", deDE = "Krieger der Gezeitenwandler" },
					[21226] = { enUS = "Tidewalker Shaman", deDE = "Schamane der Gezeitenwandler" },
					[21227] = { enUS = "Tidewalker Harpooner", deDE = "Harpunenkämpfer der Gezeitenwandler" },
					[21228] = { enUS = "Tidewalker Hydromancer", deDE = "Wasserbeschwörer der Gezeitenwandler" },
					[21229] = { enUS = "Greyheart Tidecaller", deDE = "Gezeitenrufer der Grauherzen" },
					[21230] = { enUS = "Greyheart Nether-Mage", deDE = "Nethermagier der Grauherzen" },
					[21231] = { enUS = "Greyheart Shield-Bearer", deDE = "Schildträger der Grauherzen" },
					[21232] = { enUS = "Greyheart Skulker", deDE = "Schleicher der Grauherzen" },
					[21246] = { enUS = "Serpentshrine Sporebat", deDE = "Sporensegler des Echsenkessels" },
					[21251] = { enUS = "Underbog Colossus", deDE = "Tiefensumpfkoloss" },
					[21253] = { enUS = "Tainted Water Elemental", deDE = "Besudelter Wasserelementar" },
					[21263] = { enUS = "Greyheart Technician", deDE = "Techniker der Grauherzen" },
					[21298] = { enUS = "Coilfang Serpentguard", deDE = "Schlangenwache des Echsenkessels" },
					[21299] = { enUS = "Coilfang Fathom-Witch", deDE = "Tiefenhexe des Echsenkessels" },
					[21301] = { enUS = "Coilfang Shatterer", deDE = "Zertrümmerer des Echsenkessels" },
					[21339] = { enUS = "Coilfang Hate-Screamer", deDE = "Hassschürer des Echsenkessels" },
					[21508] = { enUS = "Coilfang Frenzy", deDE = "Echsenkesselfrenzy" },
					[21806] = { enUS = "Greyheart Spellbinder", deDE = "Zauberbinder der Grauherzen" },
					[21857] = { enUS = "Inner Demon", deDE = "Innerer Dämon" },
					[21863] = { enUS = "Serpentshrine Lurker", deDE = "Lauerer des Schlangenschreins" },
					[21865] = { enUS = "Coilfang Ambusher", deDE = "Wegelagerer des Echsenkessels" },
					[21873] = { enUS = "Coilfang Guardian", deDE = "Wächter des Echsenkessels" },
					[21875] = { enUS = "Shadow of Leotheras", deDE = "Schatten von Leotheras" },
					[21920] = { enUS = "Tidewalker Lurker", deDE = "Lauerer der Gezeitenwandler" },
					[21958] = { enUS = "Enchanted Elemental", deDE = "Verzauberter Elementar" },
					[21964] = { enUS = "Fathom-Guard Caribdis", deDE = "Tiefenwächterin Caribdis" },
					[21965] = { enUS = "Fathom-Guard Tidalvess", deDE = "Tiefenwächter Flutvess" },
					[21966] = { enUS = "Fathom-Guard Sharkkis", deDE = "Tiefenwächter Haikis" },
					[22009] = { enUS = "Tainted Elemental", deDE = "Besudelter Elementar" },
					[22035] = { enUS = "Pure Spawn of Hydross", deDE = "Gereinigter Nachkomme Hydross\\'" },
					[22036] = { enUS = "Tainted Spawn of Hydross", deDE = "Besudelter Nachkomme Hydross\\'" },
					[22055] = { enUS = "Coilfang Elite", deDE = "Elitesoldat des Echsenkessels" },
					[22056] = { enUS = "Coilfang Strider", deDE = "Schreiter des Echsenkessels" },
					[22119] = { enUS = "Fathom Lurker", deDE = "Tiefenlauerer" },
					[22120] = { enUS = "Fathom Sporebat", deDE = "Tiefensegler" },
					[22238] = { enUS = "Serpentshrine Tidecaller", deDE = "Gezeitenrufer des Schlangenschreins" },
					[22250] = { enUS = "Rancid Mushroom", deDE = "Ranziger Pilz" },
					[22347] = { enUS = "Colossus Lurker", deDE = "Kolosslauerer" },
					[22352] = { enUS = "Colossus Rager", deDE = "Kolosswüter" },
					[22820] = { enUS = "Seer Olum", deDE = "Seher Olum" },
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
					deDE = "Festung der Stuerme: Das Auge",
				},
				npcNames = {
					[18805] = { enUS = "High Astromancer Solarian", deDE = "Hochastromantin Solarian" },
					[18806] = { enUS = "Solarium Priest", deDE = "Solarispriester" },
					[18925] = { enUS = "Solarium Agent", deDE = "Solarisagent" },
					[19514] = { enUS = "Al'ar", deDE = "Al\\'ar" },
					[19516] = { enUS = "Void Reaver", deDE = "Leerhäscher" },
					[19551] = { enUS = "Ember of Al'ar", deDE = "Al\\'ars Asche" },
					[19622] = { enUS = "Kael'thas Sunstrider", deDE = "Kael\\'thas Sonnenwanderer" },
					[20031] = { enUS = "Bloodwarder Legionnaire", deDE = "Legionär der Blutwärter" },
					[20032] = { enUS = "Bloodwarder Vindicator", deDE = "Verteidiger der Blutwärter" },
					[20033] = { enUS = "Astromancer", deDE = "Astromant" },
					[20034] = { enUS = "Star Scryer", deDE = "Sternenseher" },
					[20035] = { enUS = "Bloodwarder Marshal", deDE = "Marschall der Blutwärter" },
					[20036] = { enUS = "Bloodwarder Squire", deDE = "Knappe der Blutwärter" },
					[20037] = { enUS = "Tempest Falconer", deDE = "Falkner der Stürme" },
					[20038] = { enUS = "Phoenix-Hawk Hatchling", deDE = "Phönixfalkenjunges" },
					[20039] = { enUS = "Phoenix-Hawk", deDE = "Phönixfalke" },
					[20040] = { enUS = "Crystalcore Devastator", deDE = "Kristallkernverwüster" },
					[20041] = { enUS = "Crystalcore Sentinel", deDE = "Kristallkernschildwache" },
					[20042] = { enUS = "Tempest-Smith", deDE = "Schmied der Stürme" },
					[20043] = { enUS = "Apprentice Star Scryer", deDE = "Sternenseherlehrling" },
					[20044] = { enUS = "Novice Astromancer", deDE = "Astromantennovize" },
					[20045] = { enUS = "Nether Scryer", deDE = "Netherseher" },
					[20046] = { enUS = "Astromancer Lord", deDE = "Astromantenlord" },
					[20047] = { enUS = "Crimson Hand Battle Mage", deDE = "Kampfmagier der Purpurhand" },
					[20048] = { enUS = "Crimson Hand Centurion", deDE = "Zenturio der Purpurhand" },
					[20049] = { enUS = "Crimson Hand Blood Knight", deDE = "Blutritter der Purpurhand" },
					[20050] = { enUS = "Crimson Hand Inquisitor", deDE = "Inquisitor der Purpurhand" },
					[20052] = { enUS = "Crystalcore Mechanic", deDE = "Kristallkernmechaniker" },
					[20060] = { enUS = "Lord Sanguinar", deDE = "Fürst Blutdurst" },
					[20062] = { enUS = "Grand Astromancer Capernian", deDE = "Großastromantin Capernian" },
					[20063] = { enUS = "Master Engineer Telonicus", deDE = "Meisteringenieur Telonicus" },
					[20064] = { enUS = "Thaladred the Darkener", deDE = "Thaladred der Verfinsterer" },
					[21268] = { enUS = "Netherstrand Longbow", deDE = "Netherbespannter Langbogen" },
					[21269] = { enUS = "Devastation", deDE = "Verwüstung" },
					[21270] = { enUS = "Cosmic Infuser", deDE = "Kosmische Macht" },
					[21271] = { enUS = "Infinity Blades", deDE = "Klinge der Unendlichkeit" },
					[21272] = { enUS = "Warp Slicer", deDE = "Warpschnitter" },
					[21273] = { enUS = "Phaseshift Bulwark", deDE = "Phasenverschobenes Bollwerk" },
					[21274] = { enUS = "Staff of Disintegration", deDE = "Stab der Auflösung" },
					[21362] = { enUS = "Phoenix", deDE = "Phönix" },
					[21364] = { enUS = "Phoenix Egg", deDE = "Phönixei" },
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
					deDE = "Hyjalgipfel",
				},
				npcNames = {
					[17767] = { enUS = "Rage Winterchill", deDE = "Furor Winterfrost" },
					[17808] = { enUS = "Anetheron", deDE = "Anetheron" },
					[17818] = { enUS = "Towering Infernal", deDE = "Gewaltige Höllenbestie" },
					[17842] = { enUS = "Azgalor", deDE = "Azgalor" },
					[17864] = { enUS = "Lesser Doomguard", deDE = "Geringe Verdammniswache" },
					[17888] = { enUS = "Kaz'rogal", deDE = "Kaz\\'rogal" },
					[17895] = { enUS = "Ghoul", deDE = "Ghul" },
					[17897] = { enUS = "Crypt Fiend", deDE = "Gruftscheusal" },
					[17898] = { enUS = "Abomination", deDE = "Monstrosität" },
					[17899] = { enUS = "Shadowy Necromancer", deDE = "Schattenhafter Nekromant" },
					[17902] = { enUS = "Skeleton Invader", deDE = "Skelettangreifer" },
					[17903] = { enUS = "Skeleton Mage", deDE = "Skelettmagier" },
					[17905] = { enUS = "Banshee", deDE = "Banshee" },
					[17906] = { enUS = "Gargoyle", deDE = "Gargoyle" },
					[17907] = { enUS = "Frost Wyrm", deDE = "Frostwyrm" },
					[17908] = { enUS = "Giant Infernal", deDE = "Riesige Höllenbestie" },
					[17916] = { enUS = "Fel Stalker", deDE = "Teufelspirscher" },
					[17968] = { enUS = "Archimonde", deDE = "Archimonde" },
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
					deDE = "Schwarzer Tempel",
				},
				npcNames = {
					[22841] = { enUS = "Shade of Akama", deDE = "Akamas Schemen" },
					[22844] = { enUS = "Ashtongue Battlelord", deDE = "Kampflord der Aschenzungen" },
					[22845] = { enUS = "Ashtongue Mystic", deDE = "Mystiker der Aschenzungen" },
					[22846] = { enUS = "Ashtongue Stormcaller", deDE = "Sturmrufer der Aschenzungen" },
					[22847] = { enUS = "Ashtongue Primalist", deDE = "Primalist der Aschenzungen" },
					[22848] = { enUS = "Storm Fury", deDE = "Sturmzürner" },
					[22849] = { enUS = "Ashtongue Feral Spirit", deDE = "Wildgeist der Aschenzungen" },
					[22853] = { enUS = "Illidari Defiler", deDE = "Schänder der Illidari" },
					[22855] = { enUS = "Illidari Nightlord", deDE = "Nachtlord der Illidari" },
					[22869] = { enUS = "Illidari Boneslicer", deDE = "Knochenschnitter der Illidari" },
					[22871] = { enUS = "Teron Gorefiend", deDE = "Teron Blutschatten" },
					[22873] = { enUS = "Coilskar General", deDE = "General der Echsennarbe" },
					[22874] = { enUS = "Coilskar Harpooner", deDE = "Harpunenkämpfer der Echsennarbe" },
					[22875] = { enUS = "Coilskar Sea-Caller", deDE = "Meeresrufer der Echsennarbe" },
					[22876] = { enUS = "Coilskar Soothsayer", deDE = "Sterndeuterin der Echsennarbe" },
					[22877] = { enUS = "Coilskar Wrangler", deDE = "Zänker der Echsennarbe" },
					[22878] = { enUS = "Aqueous Lord", deDE = "Aqueouslord" },
					[22879] = { enUS = "Shadowmoon Reaver", deDE = "Häscher des Schattenmondklans" },
					[22880] = { enUS = "Shadowmoon Champion", deDE = "Held des Schattenmondklans" },
					[22881] = { enUS = "Aqueous Surger", deDE = "Aqueouswoger" },
					[22882] = { enUS = "Shadowmoon Deathshaper", deDE = "Todesformer des Schattenmondklans" },
					[22883] = { enUS = "Aqueous Spawn", deDE = "Aqueousbrut" },
					[22884] = { enUS = "Leviathan", deDE = "Leviathan" },
					[22885] = { enUS = "Dragon Turtle", deDE = "Drachenschildkröte" },
					[22887] = { enUS = "High Warlord Naj'entus", deDE = "Oberster Kriegsfürst Naj\\'entus" },
					[22898] = { enUS = "Supremus", deDE = "Supremus" },
					[22917] = { enUS = "Illidan Stormrage", deDE = "Illidan Sturmgrimm" },
					[22929] = { enUS = "Greater Shadowfiend", deDE = "Großer Schattengeist" },
					[22939] = { enUS = "Temple Concubine", deDE = "Tempelkonkubine" },
					[22945] = { enUS = "Shadowmoon Blood Mage", deDE = "Blutmagier des Schattenmondklans" },
					[22946] = { enUS = "Shadowmoon War Hound", deDE = "Kriegshund des Schattenmondklans" },
					[22947] = { enUS = "Mother Shahraz", deDE = "Mutter Shahraz" },
					[22948] = { enUS = "Gurtogg Bloodboil", deDE = "Gurtogg Siedeblut" },
					[22949] = { enUS = "Gathios the Shatterer", deDE = "Gathios der Zerschmetterer" },
					[22950] = { enUS = "High Nethermancer Zerevor", deDE = "Hochnethermant Zerevor" },
					[22951] = { enUS = "Lady Malande", deDE = "Lady Malande" },
					[22952] = { enUS = "Veras Darkshadow", deDE = "Veras Schwarzschatten" },
					[22953] = { enUS = "Wrathbone Flayer", deDE = "Zornknochenschinder" },
					[22954] = { enUS = "Illidari Fearbringer", deDE = "Furchtwecker der Illidari" },
					[22955] = { enUS = "Charming Courtesan", deDE = "Bezaubernde Kurtisane" },
					[22956] = { enUS = "Sister of Pain", deDE = "Schwester der Schmerzen" },
					[22957] = { enUS = "Priestess of Dementia", deDE = "Priesterin des Deliriums" },
					[22959] = { enUS = "Spellbound Attendant", deDE = "Verzauberter Aufseher" },
					[22960] = { enUS = "Dragonmaw Wyrmcaller", deDE = "Drachenrufer des Drachenmals" },
					[22962] = { enUS = "Priestess of Delight", deDE = "Priesterin der Lust" },
					[22963] = { enUS = "Bonechewer Worker", deDE = "Arbeiter der Knochenmalmer" },
					[22964] = { enUS = "Sister of Pleasure", deDE = "Schwester der Freuden" },
					[22965] = { enUS = "Enslaved Servant", deDE = "Versklavter Diener" },
					[22996] = { enUS = "Blade of Azzinoth", deDE = "Klinge von Azzinoth" },
					[22997] = { enUS = "Flame of Azzinoth", deDE = "Flamme von Azzinoth" },
					[23018] = { enUS = "Shadowmoon Houndmaster", deDE = "Hundemeister des Schattenmondklans" },
					[23028] = { enUS = "Bonechewer Taskmaster", deDE = "Sklaventreiber der Knochenmalmer" },
					[23030] = { enUS = "Dragonmaw Sky Stalker", deDE = "Himmelspirscher des Drachenmals" },
					[23047] = { enUS = "Shadowmoon Soldier", deDE = "Soldat des Schattenmondklans" },
					[23049] = { enUS = "Shadowmoon Weapon Master", deDE = "Waffenmeister des Schattenmondklans" },
					[23083] = { enUS = "Shadowmoon Riding Hound", deDE = "Reithund des Schattenmondklans" },
					[23109] = { enUS = "Vengeful Spirit", deDE = "Rachsüchtiger Geist" },
					[23111] = { enUS = "Shadowy Construct", deDE = "Skelettschöpfung" },
					[23147] = { enUS = "Shadowmoon Grunt", deDE = "Grunzer des Schattenmondklans" },
					[23172] = { enUS = "Hand of Gorefiend", deDE = "Hand von Blutschatten" },
					[23196] = { enUS = "Bonechewer Behemoth", deDE = "Ungetüm der Knochenmalmer" },
					[23215] = { enUS = "Ashtongue Sorcerer", deDE = "Zauberhexer der Aschenzungen" },
					[23216] = { enUS = "Ashtongue Defender", deDE = "Verteidiger der Aschenzungen" },
					[23222] = { enUS = "Bonechewer Brawler", deDE = "Mutierter Muskelprotz" },
					[23223] = { enUS = "Bonechewer Spectator", deDE = "Zuschauer der Knochenmalmer" },
					[23232] = { enUS = "Mutant War Hound", deDE = "Mutierter Kriegshund" },
					[23235] = { enUS = "Bonechewer Blade Fury", deDE = "Klingenwüter der Knochenmalmer" },
					[23236] = { enUS = "Bonechewer Shield Disciple", deDE = "Schildjünger der Knochenmalmer" },
					[23237] = { enUS = "Bonechewer Blood Prophet", deDE = "Blutprophet der Knochenmalmer" },
					[23239] = { enUS = "Bonechewer Combatant", deDE = "Kämpfer der Knochenmalmer" },
					[23318] = { enUS = "Ashtongue Rogue", deDE = "Schurke der Aschenzungen" },
					[23319] = { enUS = "Ashtongue Broken", deDE = "Zerschlagener der Aschenzungen" },
					[23330] = { enUS = "Dragonmaw Wind Reaver", deDE = "Windhäscher des Drachenmals" },
					[23337] = { enUS = "Illidari Centurion", deDE = "Zenturio der Illidari" },
					[23339] = { enUS = "Illidari Heartseeker", deDE = "Herzsucher der Illidari" },
					[23371] = { enUS = "Shadowmoon Fallen", deDE = "Gefallener des Schattenmondklans" },
					[23374] = { enUS = "Ashtongue Stalker", deDE = "Pirscher der Aschenzungen" },
					[23375] = { enUS = "Shadow Demon", deDE = "Schattendämon" },
					[23389] = { enUS = "Fallen Ally", deDE = "Gefallener Verbündeter" },
					[23394] = { enUS = "Promenade Sentinel", deDE = "Schildwache der Promenade" },
					[23397] = { enUS = "Illidari Blood Lord", deDE = "Blutlord der Illidari" },
					[23398] = { enUS = "Angered Soul Fragment", deDE = "Zorniges Seelenfragment" },
					[23399] = { enUS = "Suffering Soul Fragment", deDE = "Leidendes Seelenfragment" },
					[23400] = { enUS = "Illidari Archon", deDE = "Archon der Illidari" },
					[23401] = { enUS = "Hungering Soul Fragment", deDE = "Zehrendes Seelenfragment" },
					[23402] = { enUS = "Illidari Battle-mage", deDE = "Kampfmagier der Illidari" },
					[23403] = { enUS = "Illidari Assassin", deDE = "Auftragsmörder der Illidari" },
					[23418] = { enUS = "Essence of Suffering", deDE = "Essenz des Leidens" },
					[23419] = { enUS = "Essence of Desire", deDE = "Essenz der Begierde" },
					[23420] = { enUS = "Essence of Anger", deDE = "Essenz des Zorns" },
					[23421] = { enUS = "Ashtongue Channeler", deDE = "Kanalisierer der Aschenzungen" },
					[23436] = { enUS = "Image of Dementia", deDE = "Abbild des Deliriums" },
					[23469] = { enUS = "Enslaved Soul", deDE = "Versklavte Seele" },
					[23498] = { enUS = "Parasitic Shadowfiend", deDE = "Schädlicher Schattengeist" },
					[23523] = { enUS = "Ashtongue Elementalist", deDE = "Elementarist der Aschenzungen" },
					[23524] = { enUS = "Ashtongue Spiritbinder", deDE = "Geistbinder der Aschenzungen" },
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
					deDE = "Sonnenbrunnenplateau",
				},
				npcNames = {
					[24850] = { enUS = "Kalecgos", deDE = "Kalecgos" },
					[24882] = { enUS = "Brutallus", deDE = "Brutallus" },
					[24892] = { enUS = "Sathrovarr the Corruptor", deDE = "Sathrovarr der Verderber" },
					[25038] = { enUS = "Felmyst", deDE = "Teufelsruch" },
					[25165] = { enUS = "Lady Sacrolash", deDE = "Lady Sacrolash" },
					[25166] = { enUS = "Grand Warlock Alythess", deDE = "Großhexenmeisterin Alythess" },
					[25268] = { enUS = "Unyielding Dead", deDE = "Unerschütterlicher Toter" },
					[25315] = { enUS = "Kil'jaeden", deDE = "Kil\\'jaeden" },
					[25363] = { enUS = "Sunblade Cabalist", deDE = "Kabalist der Sonnenklingen" },
					[25367] = { enUS = "Sunblade Arch Mage", deDE = "Erzmagier der Sonnenklingen" },
					[25368] = { enUS = "Sunblade Slayer", deDE = "Töter der Sonnenklingen" },
					[25369] = { enUS = "Sunblade Vindicator", deDE = "Verteidiger der Sonnenklingen" },
					[25370] = { enUS = "Sunblade Dusk Priest", deDE = "Abendpriester der Sonnenklingen" },
					[25371] = { enUS = "Sunblade Dawn Priest", deDE = "Morgenpriester der Sonnenklingen" },
					[25372] = { enUS = "Sunblade Scout", deDE = "Späher der Sonnenklingen" },
					[25373] = { enUS = "Shadowsword Soulbinder", deDE = "Seelenbinder der Schattenschwerter" },
					[25483] = { enUS = "Shadowsword Manafiend", deDE = "Manabestie der Schattenschwerter" },
					[25484] = { enUS = "Shadowsword Assassin", deDE = "Assassine der Schattenschwerter" },
					[25485] = { enUS = "Shadowsword Deathbringer", deDE = "Todesbringer der Schattenschwerter" },
					[25486] = { enUS = "Shadowsword Vanquisher", deDE = "Bezwinger der Schattenschwerter" },
					[25502] = { enUS = "Shield Orb", deDE = "Schildkugel" },
					[25506] = { enUS = "Shadowsword Lifeshaper", deDE = "Lebensformer der Schattenschwerter" },
					[25507] = { enUS = "Sunblade Protector", deDE = "Beschützer der Sonnenklingen" },
					[25508] = { enUS = "Shadowsword Guardian", deDE = "Wächter der Schattenschwerter" },
					[25509] = { enUS = "Priestess of Torment", deDE = "Priesterin der Qual" },
					[25588] = { enUS = "Hand of the Deceiver", deDE = "Hand des Betrügers" },
					[25591] = { enUS = "Painbringer", deDE = "Schmerzbringer" },
					[25592] = { enUS = "Doomfire Destroyer", deDE = "Verdammnisfeuerzerstörer" },
					[25593] = { enUS = "Apocalypse Guard", deDE = "Wächter der Apokalypse" },
					[25595] = { enUS = "Chaos Gazer", deDE = "Chaosbetrachter" },
					[25597] = { enUS = "Oblivion Mage", deDE = "Infernomagier" },
					[25598] = { enUS = "Volatile Felfire Fiend", deDE = "Unstetes Teufelsfeuerscheusal" },
					[25599] = { enUS = "Cataclysm Hound", deDE = "Desasterhund" },
					[25708] = { enUS = "Sinister Reflection", deDE = "Finstere Spiegelung" },
					[25741] = { enUS = "M'uru", deDE = "M\\'uru" },
					[25744] = { enUS = "Dark Fiend", deDE = "Finsteres Scheusal" },
					[25772] = { enUS = "Void Sentinel", deDE = "Leerenwache" },
					[25798] = { enUS = "Shadowsword Berserker", deDE = "Berserker der Schattenschwerter" },
					[25799] = { enUS = "Shadowsword Fury Mage", deDE = "Furormagus der Schattenschwerter" },
					[25824] = { enUS = "Void Spawn", deDE = "Brut der Leere" },
					[25837] = { enUS = "Shadowsword Commander", deDE = "Kommandant der Schattenschwerter" },
					[25840] = { enUS = "Entropius", deDE = "Entropius" },
					[25851] = { enUS = "Volatile Fiend", deDE = "Unstetes Scheusal" },
					[25867] = { enUS = "Sunblade Dragonhawk", deDE = "Drachenfalke der Sonnenklingen" },
					[25948] = { enUS = "Doomfire Shard", deDE = "Splitter des Verdammnisfeuers" },
					[26101] = { enUS = "Fire Fiend", deDE = "Feuerscheusal" },
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

addon.npcGroups = addon.npcGroups or {
    hellfire_ramparts = {
        [17306] = "boss",
        [17308] = "boss",
        [17536] = "boss",
        [17537] = "boss",
    },
    blood_furnace = {
        [17377] = "boss",
        [17380] = "boss",
        [17381] = "boss",
    },
    auchenai_crypts = {
        [18371] = "boss",
        [18373] = "boss",
    },
    sethekk_halls = {
        [18472] = "boss",
        [18473] = "boss",
        [23035] = "boss",
    },
    shadow_labyrinth = {
        [18667] = "boss",
        [18708] = "boss",
        [18731] = "boss",
        [18732] = "boss",
    },
    mana_tombs = {
        [18341] = "boss",
        [18343] = "boss",
        [18344] = "boss",
    },
    slave_pens = {
        [17941] = "boss",
        [17991] = "boss",
        [17942] = "boss",
    },
    underbog = {
        [17770] = "boss",
        [17826] = "boss",
        [17827] = "boss",
        [17882] = "boss",
    },
    steamvault = {
        [17797] = "boss",
        [17796] = "boss",
        [17798] = "boss",
    },
    old_hillsbrad = {
        [17848] = "boss",
        [17862] = "boss",
        [18096] = "boss",
    },
    black_morass = {
        [17879] = "boss",
        [17880] = "boss",
        [17881] = "boss",
    },
    shattered_halls = {
        [16807] = "boss",
        [20923] = "boss",
        [16809] = "boss",
        [16808] = "boss",
    },
    mechanar = {
        [19219] = "boss",
        [19220] = "boss",
        [19221] = "boss",
        [19710] = "boss",
    },
    botanica = {
        [17976] = "boss",
        [17975] = "boss",
        [17978] = "boss",
        [17980] = "boss",
        [17977] = "boss",
    },
    arcatraz = {
        [20870] = "boss",
        [20885] = "boss",
        [20912] = "boss",
        [20904] = "boss",
    },
    magisters_terrace = {
        [24723] = "boss",
        [24744] = "boss",
        [24560] = "boss",
        [24664] = "boss",
    },
    karazhan = {
        [16151] = "boss",
        [16152] = "boss",
        [15687] = "boss",
        [16457] = "boss",
        [15691] = "boss",
        [15688] = "boss",
        [16524] = "boss",
        [15689] = "boss",
        [15690] = "boss",
        [17225] = "boss",
        [16179] = "boss",
        [16180] = "boss",
        [16181] = "boss",
        [17603] = "boss",
        [17521] = "boss",
        [17533] = "boss",
        [17534] = "boss",
        [17535] = "boss",
        [18168] = "boss",
        [16816] = "boss",
    },
    gruuls_lair = {
        [18831] = "boss",
        [19044] = "boss",
    },
    magtheridons_lair = {
        [17257] = "boss",
    },
    zulaman = {
        [23574] = "boss",
        [23576] = "boss",
        [23577] = "boss",
        [24239] = "boss",
        [23863] = "boss",
        [24240] = "boss",
    },
    serpentshrine_cavern = {
        [21212] = "boss",
        [21213] = "boss",
        [21214] = "boss",
        [21215] = "boss",
        [21216] = "boss",
        [21217] = "boss",
    },
    tempest_keep_the_eye = {
        [19514] = "boss",
        [19516] = "boss",
        [18805] = "boss",
        [19622] = "boss",
    },
    hyjal_summit = {
        [17767] = "boss",
        [17808] = "boss",
        [17888] = "boss",
        [17842] = "boss",
        [17968] = "boss",
    },
    black_temple = {
        [22887] = "boss",
        [22898] = "boss",
        [22841] = "boss",
        [22871] = "boss",
        [22948] = "boss",
        [23418] = "boss",
        [22947] = "boss",
        [22949] = "boss",
        [22950] = "boss",
    },
    sunwell_plateau = {
        [24850] = "boss",
        [24882] = "boss",
        [25038] = "boss",
        [25166] = "boss",
        [25315] = "boss",
        [24892] = "boss",
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
addon.instanceContent = addon.instanceContent or {}

addon.instanceContent.auchenai_crypts = addon.instanceContent.auchenai_crypts or {
	mapIDs = {256, 257},
	info = {
		{
			id = "auchenai_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "TEST: Auchenai Crypts instance notes are now loaded through the new instanceContent structure.",
				deDE = "TEST: Die Instanzhinweise der Auchenaikrypta werden jetzt ueber die neue instanceContent-Struktur geladen.",
			},
		},
		{
			id = "auchenai_instance_002",
			type = "Important",
			weight = 20,
			text = {
				enUS = "Use this area later for personal dungeon notes and shared baseline instance reminders.",
				deDE = "Dieser Bereich ist spaeter fuer persoenliche Dungeon-Notizen und gemeinsame Basis-Hinweise gedacht.",
			},
		},
		{
			id = "auchenai_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "HEALER TEST: Watch for fear, burst damage, and awkward bridge knockbacks in this dungeon.",
				deDE = "HEILER-TEST: Achte in diesem Dungeon auf Furcht, Burst-Schaden und unangenehme Knockbacks auf Bruecken.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Auchindoun in Terokkar Forest.",
			deDE = "Auchindoun im Wald von Terokkar.",
		},
		attunement = {
			enUS = "No attunement required.",
			deDE = "Keine Zugangsvoraussetzung erforderlich.",
		},
		notes = {
			enUS = "Short but awkward instance with fears, bridges, knockbacks, and punishing caster trash.",
			deDE = "Kurze, aber unangenehme Instanz mit Furchteffekten, Bruecken, Knockbacks und hartem Zauberwirker-Trash.",
		},
		lore = {
			enUS = "A sacred draenei burial complex later corrupted by dark rituals and restless dead.",
			deDE = "Ein heiliger draenei'scher Grabkomplex, der spaeter durch dunkle Rituale und ruhelose Tote verdorben wurde.",
		},
	},
}

addon.instanceContent.hellfire_ramparts = addon.instanceContent.hellfire_ramparts or {
	mapIDs = {347},
	info = {
		{
			id = "ramparts_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Expect frequent pulls with ranged pressure, knockbacks, and patrol risks in narrow spaces.",
				deDE = "Rechne mit haeufigen Pulls mit Fernkampfdruck, Knockbacks und Patrouillenrisiken in engen Bereichen.",
			},
		},
		{
			id = "ramparts_instance_002",
			type = "TANK",
			weight = 20,
			text = {
				enUS = "Try to keep dangerous trash faced away from the party and be careful near edges and corners.",
				deDE = "Versuche, gefaehrlichen Trash von der Gruppe wegzudrehen, und sei an Kanten und Ecken vorsichtig.",
			},
		},
		{
			id = "ramparts_instance_003",
			type = "Interrupts",
			weight = 10,
			text = {
				enUS = "Clean interrupts and controlled pulls are often more valuable here than raw damage.",
				deDE = "Saubere Unterbrechungen und kontrollierte Pulls sind hier oft wertvoller als roher Schaden.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Hellfire Citadel in Hellfire Peninsula.",
			deDE = "Hoellenfeuerzitadelle auf der Hoellenfeuerhalbinsel.",
		},
		attunement = {
			enUS = "No attunement required.",
			deDE = "Keine Zugangsvoraussetzung erforderlich.",
		},
		notes = {
			enUS = "Compact first TBC dungeon with straightforward pacing and some dangerous ranged trash.",
			deDE = "Kompakter erster TBC-Dungeon mit direktem Tempo und einigen gefaehrlichen Fernkampfgegnern.",
		},
		lore = {
			enUS = "The Alliance and Horde push into Hellfire Citadel by breaching its outer defenses.",
			deDE = "Allianz und Horde dringen in die Hoellenfeuerzitadelle vor, nachdem sie ihre aeusseren Verteidigungen durchbrochen haben.",
		},
	},
}

addon.instanceContent.blood_furnace = addon.instanceContent.blood_furnace or {
	mapIDs = {261},
	info = {
		{
			id = "bloodfurnace_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Blood Furnace has several pulls where positioning and crowd control smooth out incoming damage a lot.",
				deDE = "Der Blutkessel hat mehrere Pulls, in denen Positionierung und Massenkontrolle den eingehenden Schaden stark abfedern.",
			},
		},
		{
			id = "bloodfurnace_instance_002",
			type = "HEALER",
			weight = 20,
			text = {
				enUS = "Be ready for sudden spikes from explosives, poison, and chaotic multi-target pulls.",
				deDE = "Sei bereit fuer ploetzliche Schadensspitzen durch Explosionen, Gift und chaotische Multi-Target-Pulls.",
			},
		},
		{
			id = "bloodfurnace_instance_003",
			type = "PriorityTargets",
			weight = 10,
			text = {
				enUS = "Watch for casters and support mobs that can destabilize the pull if left alone too long.",
				deDE = "Achte auf Zauberwirker und Support-Mobs, die den Pull destabilisieren koennen, wenn man sie zu lange gewaehrt laesst.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Hellfire Citadel in Hellfire Peninsula.",
			deDE = "Hoellenfeuerzitadelle auf der Hoellenfeuerhalbinsel.",
		},
		attunement = {
			enUS = "No attunement required.",
			deDE = "Keine Zugangsvoraussetzung erforderlich.",
		},
		notes = {
			enUS = "More chaotic than Ramparts, with heavier caster pressure and volatile pulls.",
			deDE = "Chaotischer als das Bollwerk, mit staerkerem Zauberwirkerdruck und explosiven Pulls.",
		},
		lore = {
			enUS = "Magtheridon's fel orcs are forged here in the industrial heart of the citadel.",
			deDE = "Hier werden Magtheridons Teufelsorks im industriellen Herzen der Zitadelle erschaffen.",
		},
	},
}

addon.instanceContent.sethekk_halls = addon.instanceContent.sethekk_halls or {
	mapIDs = {258, 259},
	info = {
		{
			id = "sethekk_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Sethekk Halls mixes caster pressure, crowd control, and dangerous add phases across multiple pulls.",
				deDE = "Sethekkhallen verbinden Zauberwirkerdruck, Massenkontrolle und gefaehrliche Add-Phasen ueber mehrere Pulls hinweg.",
			},
		},
		{
			id = "sethekk_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Respect healer and controller mobs so the run does not get derailed by avoidable casts or mind control.",
				deDE = "Nimm Heiler- und Kontrollmobs ernst, damit der Run nicht durch vermeidbare Zauber oder Gedankenkontrolle entgleist.",
			},
		},
		{
			id = "sethekk_instance_003",
			type = "Dodge",
			weight = 10,
			text = {
				enUS = "Line-of-sight and movement matter a lot in boss mechanics and caster-heavy trash packs here.",
				deDE = "Sichtlinien und Bewegung sind hier bei Bossmechaniken und zauberwirkerlastigen Trashgruppen besonders wichtig.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Auchindoun in Terokkar Forest.",
			deDE = "Auchindoun im Wald von Terokkar.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Known for dangerous caster trash, mind control, and boss mechanics that punish slow reactions.",
			deDE = "Bekannt fuer gefaehrlichen Zauberwirker-Trash, Gedankenkontrolle und Bossmechaniken, die langsame Reaktionen bestrafen.",
		},
		lore = {
			enUS = "The arakkoa turned these halls into a haunt of dark magic, summoning and scheming in the shadows.",
			deDE = "Die Arakkoa machten aus diesen Hallen einen Ort dunkler Magie, an dem sie in den Schatten beschwoeren und planen.",
		},
	},
}

addon.instanceContent.shadow_labyrinth = addon.instanceContent.shadow_labyrinth or {
	mapIDs = {260},
	info = {
		{
			id = "slabs_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Shadow Labyrinth rewards controlled positioning and awareness more than rushing pulls.",
				deDE = "Das Schattenlabyrinth belohnt kontrollierte Positionierung und Aufmerksamkeit mehr als ueberhastete Pulls.",
			},
		},
		{
			id = "slabs_instance_002",
			type = "HEALER",
			weight = 20,
			text = {
				enUS = "Expect fear effects, burst windows, and moments where line of sight can make healing awkward.",
				deDE = "Rechne mit Furchteffekten, Burst-Phasen und Momenten, in denen Sichtlinien das Heilen unangenehm machen.",
			},
		},
		{
			id = "slabs_instance_003",
			type = "TANK",
			weight = 10,
			text = {
				enUS = "Use corners and tunnel space to keep dangerous mobs stable and facing away from the group.",
				deDE = "Nutze Ecken und Tunnel, um gefaehrliche Mobs stabil zu halten und von der Gruppe wegzudrehen.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Auchindoun in Terokkar Forest.",
			deDE = "Auchindoun im Wald von Terokkar.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "A slower, more punishing dungeon where positioning, line of sight, and fear management matter a lot.",
			deDE = "Ein langsamerer, haerterer Dungeon, in dem Positionierung, Sichtlinien und Furcht-Management viel ausmachen.",
		},
		lore = {
			enUS = "These depths hide cabals, demons, and the terrible resonance of Murmur itself.",
			deDE = "Diese Tiefen verbergen Kulte, Daemonen und die schreckliche Resonanz von Murmur selbst.",
		},
	},
}

addon.instanceContent.shattered_halls = addon.instanceContent.shattered_halls or {
	mapIDs = {246},
	info = {
		{
			id = "shattered_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Shattered Halls is one of the most punishing TBC dungeons if pulls get out of control. Respect patrols, stuns, and heavy melee pressure.",
				deDE = "Die Zerschmetterten Hallen sind einer der haertesten TBC-Dungeons, wenn Pulls ausser Kontrolle geraten. Respektiere Patrouillen, Stuns und hohen Nahkampfdruck.",
			},
		},
		{
			id = "shattered_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Control dangerous support mobs quickly. A clean target order is often more important than rushing damage.",
				deDE = "Gefaehrliche Support-Mobs sollten schnell kontrolliert werden. Eine saubere Zielreihenfolge ist oft wichtiger als hektischer Schaden.",
			},
		},
		{
			id = "shattered_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Expect repeated damage spikes on the tank and moments where the whole group suddenly needs attention.",
				deDE = "Rechne mit wiederholten Schadensspitzen auf dem Tank und Momenten, in denen ploetzlich die ganze Gruppe Aufmerksamkeit braucht.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Hellfire Citadel in Hellfire Peninsula.",
			deDE = "Höllenfeuerzitadelle auf der Höllenfeuerhalbinsel.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Long trash-heavy dungeon with very punishing melee packs and little room for sloppy execution.",
			deDE = "Langer, trashlastiger Dungeon mit sehr harten Nahkampfgruppen und wenig Raum fuer unsaubere Ausfuehrung.",
		},
		lore = {
			enUS = "The shattered corridors of Hellfire are packed with brutal fel orc forces and broken war machinery.",
			deDE = "Die zerbrochenen Hallen der Höllenfeuerzitadelle sind voller brutaler Teufelsorks und zerstoerter Kriegsmaschinen.",
		},
	},
}

addon.instanceContent.slave_pens = addon.instanceContent.slave_pens or {
	mapIDs = {265},
	info = {
		{
			id = "slavepens_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Slave Pens is more forgiving than some other Coilfang dungeons, but sloppy positioning and ignored support mobs can still punish the group.",
				deDE = "Die Sklavenunterkuenfte sind nachsichtiger als andere Echsenkessel-Dungeons, aber schlampige Positionierung und ignorierte Support-Mobs bestrafen die Gruppe trotzdem.",
			},
		},
		{
			id = "slavepens_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Watch for healers, totems, and adds that extend pulls longer than they should.",
				deDE = "Achte auf Heiler, Totems und Adds, die Pulls unnoetig in die Laenge ziehen.",
			},
		},
		{
			id = "slavepens_instance_003",
			type = "Dodge",
			weight = 10,
			text = {
				enUS = "Movement still matters here. Knockbacks, pools, and bad stacking can create unnecessary pressure.",
				deDE = "Bewegung bleibt auch hier wichtig. Knockbacks, Flaechen und schlechtes Stacken erzeugen schnell unnoetigen Druck.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Coilfang Reservoir in Zangarmarsh.",
			deDE = "Echsenkessel in den Zangarmarschen.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Compact naga dungeon with manageable pacing, but still enough control mechanics to punish inattentive groups.",
			deDE = "Kompakter Naga-Dungeon mit gutem Tempo, aber dennoch genug Kontrollmechaniken, um unaufmerksame Gruppen zu bestrafen.",
		},
		lore = {
			enUS = "Lady Vashj's forces hold prisoners and creatures in the flooded depths of Coilfang Reservoir.",
			deDE = "Die Truppen von Lady Vashj halten Gefangene und Kreaturen in den ueberfluteten Tiefen des Echsenkessels fest.",
		},
	},
}

addon.instanceContent.underbog = addon.instanceContent.underbog or {
	mapIDs = {262},
	info = {
		{
			id = "underbog_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Underbog mixes awkward pulls, large creatures, and mechanics that punish poor movement or spread.",
				deDE = "Der Tiefensumpf verbindet unangenehme Pulls, grosse Kreaturen und Mechaniken, die schlechte Bewegung oder Verteilung bestrafen.",
			},
		},
		{
			id = "underbog_instance_002",
			type = "Dodge",
			weight = 20,
			text = {
				enUS = "Be ready to move around mushrooms, knockbacks, and zone control effects instead of standing still too long.",
				deDE = "Sei bereit, um Pilze, Knockbacks und Flaechenkontrolle herumzuspielen, statt zu lange stehenzubleiben.",
			},
		},
		{
			id = "underbog_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Several fights create burst windows or awkward healing angles. Keep people topped when mechanics are about to overlap.",
				deDE = "Mehrere Kaempfe erzeugen Burst-Phasen oder unangenehme Heilwinkel. Halte die Gruppe hoch, wenn Mechaniken gleich ueberlappen.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Coilfang Reservoir in Zangarmarsh.",
			deDE = "Echsenkessel in den Zangarmarschen.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Creature-heavy dungeon with odd terrain, dangerous mushrooms, and bosses that reward movement discipline.",
			deDE = "Kreaturenlastiger Dungeon mit seltsamem Gelaende, gefaehrlichen Pilzen und Bossen, die saubere Bewegung belohnen.",
		},
		lore = {
			enUS = "This wild lower chamber of Coilfang is filled with bog creatures, spores, and the reservoir's strangest life.",
			deDE = "Dieser wilde untere Bereich des Echsenkessels ist voller Sumpfkreaturen, Sporen und dem seltsamsten Leben des Reservoirs.",
		},
	},
}

addon.instanceContent.steamvaults = addon.instanceContent.steamvaults or {
	mapIDs = {263, 264},
	info = {
		{
			id = "steamvaults_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Steamvault asks for clean interrupts, stable tank positioning, and fast reactions to dangerous caster trash.",
				deDE = "Die Dampfkammer verlangt saubere Unterbrechungen, stabile Tank-Positionierung und schnelle Reaktionen auf gefaehrlichen Zauberwirker-Trash.",
			},
		},
		{
			id = "steamvaults_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Do not let dangerous support mobs free-cast for too long. Target priority matters throughout the dungeon.",
				deDE = "Gefaehrliche Support-Mobs duerfen nicht zu lange frei zaubern. Zielprioritaet ist im ganzen Dungeon wichtig.",
			},
		},
		{
			id = "steamvaults_instance_003",
			type = "TANK",
			weight = 10,
			text = {
				enUS = "Use corners and controlled pulls to keep ranged enemies from creating chaos in open rooms.",
				deDE = "Nutze Ecken und kontrollierte Pulls, damit Fernkampfgegner in offenen Raeumen kein Chaos verursachen.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Coilfang Reservoir in Zangarmarsh.",
			deDE = "Echsenkessel in den Zangarmarschen.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Harder Coilfang dungeon with strong caster pressure, positioning checks, and several memorable boss mechanics.",
			deDE = "Schwererer Echsenkessel-Dungeon mit starkem Zauberwirkerdruck, Positionschecks und mehreren markanten Bossmechaniken.",
		},
		lore = {
			enUS = "The steam-filled inner vaults of Coilfang hide machinery, naga command, and unstable water power.",
			deDE = "Die dampfgefuellten inneren Gewoelbe des Echsenkessels verbergen Maschinen, Naga-Befehl und instabile Wassermacht.",
		},
	},
}

addon.instanceContent.mana_tombs = addon.instanceContent.mana_tombs or {
	mapIDs = {272},
	info = {
		{
			id = "manatombs_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Mana-Tombs has many pulls where casters, interrupts, and threat mistakes decide whether the fight stays clean.",
				deDE = "Mana-Gruft hat viele Pulls, in denen Zauberwirker, Unterbrechungen und Bedrohungsfehler darueber entscheiden, ob der Kampf sauber bleibt.",
			},
		},
		{
			id = "manatombs_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Respect support mobs, summons, and ranged pressure. Ignoring them often snowballs quickly.",
				deDE = "Nimm Support-Mobs, Beschwoerungen und Fernkampfdruck ernst. Sie zu ignorieren snowballt schnell.",
			},
		},
		{
			id = "manatombs_instance_003",
			type = "Interrupts",
			weight = 10,
			text = {
				enUS = "Good interrupts and line-of-sight pulls make many packs much easier than trying to brute-force them.",
				deDE = "Gute Unterbrechungen und Sichtlinien-Pulls machen viele Gruppen deutlich einfacher, als sie mit roher Gewalt zu spielen.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Auchindoun in Terokkar Forest.",
			deDE = "Auchindoun im Wald von Terokkar.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Arcane- and caster-heavy dungeon with several mechanics that reward patience, interrupts, and controlled positioning.",
			deDE = "Arkane- und zauberwirkerlastiger Dungeon mit mehreren Mechaniken, die Geduld, Unterbrechungen und kontrollierte Positionierung belohnen.",
		},
		lore = {
			enUS = "These tombs of Auchindoun were plundered by ethereals seeking relics, power, and arcane secrets.",
			deDE = "Diese Gruften von Auchindoun wurden von Astralen gepluendert, die nach Relikten, Macht und arkanen Geheimnissen suchten.",
		},
	},
}

addon.instanceContent.old_hillsbrad = addon.instanceContent.old_hillsbrad or {
	mapIDs = {274},
	info = {
		{
			id = "ohf_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Old Hillsbrad mixes escort pacing, event pressure, and pulls where awareness matters more than speed.",
				deDE = "Vorgebirge des Alten Hügellands verbindet Escort-Tempo, Eventdruck und Pulls, in denen Aufmerksamkeit wichtiger ist als Geschwindigkeit.",
			},
		},
		{
			id = "ohf_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Take dangerous ranged enemies seriously and avoid letting the event pace force rushed decisions.",
				deDE = "Nimm gefaehrliche Fernkampfgegner ernst und lass dich nicht vom Eventtempo zu ueberhasteten Entscheidungen zwingen.",
			},
		},
		{
			id = "ohf_instance_003",
			type = "Advanced",
			weight = 10,
			text = {
				enUS = "This dungeon feels smoother when the group stays organized around the event flow instead of treating it like a normal corridor run.",
				deDE = "Dieser Dungeon fuehlt sich deutlich besser an, wenn die Gruppe sich am Eventfluss orientiert statt ihn wie einen normalen Flurdungeon zu spielen.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Caverns of Time in Tanaris.",
			deDE = "Die Hoehlen der Zeit in Tanaris.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Story-driven escort dungeon where event structure and target control matter as much as raw execution.",
			deDE = "Storygetriebener Escort-Dungeon, in dem Eventstruktur und Zielkontrolle genauso wichtig sind wie die rohe Ausfuehrung.",
		},
		lore = {
			enUS = "The Bronze Dragonflight sends players back in time to protect Thrall's escape from Durnholde.",
			deDE = "Der bronzene Drachenschwarm schickt Spieler in die Vergangenheit, um Thralls Flucht aus Durnholde zu schuetzen.",
		},
	},
}

addon.instanceContent.black_morass = addon.instanceContent.black_morass or {
	mapIDs = {173, 733},
	info = {
		{
			id = "bm_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Black Morass is an event dungeon where assignments, portal control, and pacing matter more than wandering damage.",
				deDE = "Der schwarze Morast ist ein Event-Dungeon, in dem Zuweisungen, Portal-Kontrolle und Tempo wichtiger sind als ungeordneter Schaden.",
			},
		},
		{
			id = "bm_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "React quickly to incoming portal enemies and do not let the event overwhelm the healer with avoidable chaos.",
				deDE = "Reagiere schnell auf neue Portalgegner und lass das Event den Heiler nicht mit vermeidbarem Chaos ueberrollen.",
			},
		},
		{
			id = "bm_instance_003",
			type = "Advanced",
			weight = 10,
			text = {
				enUS = "Smooth runs come from clean role execution and movement between portals, not from overcommitting to one wave.",
				deDE = "Saubere Runs entstehen durch klare Rollen und Bewegung zwischen Portalen, nicht dadurch, dass man sich in eine Welle verrennt.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Caverns of Time in Tanaris.",
			deDE = "Die Hoehlen der Zeit in Tanaris.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Portal-based event dungeon where time pressure and movement between spawns define the run.",
			deDE = "Portalbasierter Event-Dungeon, in dem Zeitdruck und Bewegung zwischen den Spawnpunkten den Run bestimmen.",
		},
		lore = {
			enUS = "Players defend Medivh's opening of the Dark Portal against the Infinite Dragonflight.",
			deDE = "Spieler verteidigen Medivhs Oeffnung des Dunklen Portals gegen den unendlichen Drachenschwarm.",
		},
	},
}

addon.instanceContent.mechanar = addon.instanceContent.mechanar or {
	mapIDs = {267, 268},
	info = {
		{
			id = "mechanar_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Mechanar rewards clean pulls, interrupt discipline, and respect for dangerous support mobs.",
				deDE = "Die Mechanar belohnt saubere Pulls, Unterbrechungsdisziplin und Respekt vor gefaehrlichen Support-Mobs.",
			},
		},
		{
			id = "mechanar_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Good focus target calls make this dungeon far smoother than trying to tunnel through mixed packs.",
				deDE = "Gute Fokusansagen machen diesen Dungeon deutlich angenehmer, als gemischte Gruppen einfach zu tunneln.",
			},
		},
		{
			id = "mechanar_instance_003",
			type = "TANK",
			weight = 10,
			text = {
				enUS = "Use line-of-sight and controlled engagement space to stop open-room pulls from getting messy.",
				deDE = "Nutze Sichtlinien und kontrollierte Pullraeume, damit offene Zimmer nicht chaotisch werden.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Tempest Keep in Netherstorm.",
			deDE = "Festung der Stuerme im Nethersturm.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Compact Tempest Keep dungeon with a strong focus on pull control, support mobs, and clean execution.",
			deDE = "Kompakter Festung-der-Stuerme-Dungeon mit starkem Fokus auf Pullkontrolle, Support-Mobs und saubere Ausfuehrung.",
		},
		lore = {
			enUS = "The Mechanar contains the workshops, patrols, and engineered defenses of Tempest Keep.",
			deDE = "Die Mechanar beherbergt Werkstaetten, Patrouillen und konstruierte Verteidigungen der Festung der Stuerme.",
		},
	},
}

addon.instanceContent.botanica = addon.instanceContent.botanica or {
	mapIDs = {266},
	info = {
		{
			id = "botanica_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Botanica combines healer pressure, add control, and several pulls where support mobs can overwhelm slow groups.",
				deDE = "Die Botanika verbindet Heilerdruck, Add-Kontrolle und mehrere Pulls, in denen Support-Mobs langsame Gruppen ueberrollen koennen.",
			},
		},
		{
			id = "botanica_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Respect healers, summoners, and dangerous ranged enemies. This dungeon gets easier when priority damage is clear.",
				deDE = "Nimm Heiler, Beschwoerer und gefaehrliche Fernkampfgegner ernst. Dieser Dungeon wird leichter, wenn die Prioritaet klar ist.",
			},
		},
		{
			id = "botanica_instance_003",
			type = "Dodge",
			weight = 10,
			text = {
				enUS = "Several encounters become much cleaner when the group keeps moving out of zones and reacts quickly to spawns.",
				deDE = "Mehrere Begegnungen werden deutlich sauberer, wenn sich die Gruppe aus Zonen bewegt und schnell auf Spawns reagiert.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Tempest Keep in Netherstorm.",
			deDE = "Festung der Stuerme im Nethersturm.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Longer Tempest Keep dungeon with many support mobs, plant-themed chaos, and several add-heavy moments.",
			deDE = "Laengerer Festung-der-Stuerme-Dungeon mit vielen Support-Mobs, Pflanzenchaos und mehreren addlastigen Momenten.",
		},
		lore = {
			enUS = "The Botanica was built to preserve and manipulate life, now twisted by blood elves and unstable growth.",
			deDE = "Die Botanika wurde gebaut, um Leben zu bewahren und zu formen, nun verdorben durch Blutelfen und instabiles Wachstum.",
		},
	},
}

addon.instanceContent.arcatraz = addon.instanceContent.arcatraz or {
	mapIDs = {269, 270, 271},
	info = {
		{
			id = "arcatraz_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Arcatraz is one of the roughest Tempest Keep dungeons. Expect dangerous casters, event pressure, and multiple pulls that punish slow reactions.",
				deDE = "Die Arkatraz ist einer der haertesten Festung-der-Stuerme-Dungeons. Rechne mit gefaehrlichen Zauberwirkern, Eventdruck und mehreren Pulls, die langsame Reaktionen bestrafen.",
			},
		},
		{
			id = "arcatraz_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Target priority and control matter heavily here. A few wrong enemies free-casting can end the pull fast.",
				deDE = "Zielprioritaet und Kontrolle sind hier extrem wichtig. Wenn ein paar falsche Gegner frei zaubern, kippt der Pull schnell.",
			},
		},
		{
			id = "arcatraz_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Be ready for awkward damage patterns, sudden control loss, and moments where dispels or quick recovery decide the fight.",
				deDE = "Sei bereit fuer unangenehme Schadensmuster, ploetzlichen Kontrollverlust und Momente, in denen Dispels oder schnelle Erholung den Kampf entscheiden.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Tempest Keep in Netherstorm.",
			deDE = "Festung der Stuerme im Nethersturm.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Notorious Tempest Keep dungeon with high danger, awkward control, and multiple memorable prison-event pulls.",
			deDE = "Beruechtigter Festung-der-Stuerme-Dungeon mit hoher Gefahr, unangenehmer Kontrolle und mehreren markanten Gefaengnis-Event-Pulls.",
		},
		lore = {
			enUS = "The Arcatraz is Tempest Keep's prison, holding dangerous beings, failed experiments, and escalating chaos.",
			deDE = "Die Arkatraz ist das Gefaengnis der Festung der Stuerme und haelt gefaehrliche Wesen, fehlgeschlagene Experimente und eskalierendes Chaos fest.",
		},
	},
}

addon.instanceContent.magisters_terrace = addon.instanceContent.magisters_terrace or {
	info = {
		{
			id = "mgt_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Magisters' Terrace has several short but dangerous pulls where control, focus targets, and clean reactions matter a lot.",
				deDE = "Terrasse der Magister hat mehrere kurze, aber gefaehrliche Pulls, in denen Kontrolle, Fokusziele und saubere Reaktionen wichtig sind.",
			},
		},
		{
			id = "mgt_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Support mobs and event enemies can snowball quickly if they are not handled in the right order.",
				deDE = "Support-Mobs und Eventgegner koennen schnell snowballen, wenn sie nicht in der richtigen Reihenfolge behandelt werden.",
			},
		},
		{
			id = "mgt_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Expect fast incoming damage on some pulls and be ready for sudden pressure during Delrissa and Kael'thas.",
				deDE = "Rechne auf manchen Pulls mit schnellem eingehendem Schaden und sei auf ploetzlichen Druck bei Delrissa und Kael'thas vorbereitet.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Isle of Quel'Danas.",
			deDE = "Insel von Quel'Danas.",
		},
		attunement = {
			enUS = "No attunement required. Heroic access still follows the usual key rules.",
			deDE = "Keine Zugangsvoraussetzung erforderlich. Heroisch folgt den ueblichen Schluesselregeln.",
		},
		notes = {
			enUS = "Late TBC dungeon with compact pacing, dangerous support enemies, and strong pressure in several key fights.",
			deDE = "Spaeter TBC-Dungeon mit kompaktem Tempo, gefaehrlichen Support-Gegnern und starkem Druck in mehreren Schluesselkaempfen.",
		},
		lore = {
			enUS = "The Magisters' Terrace is a shattered blood elf stronghold tied to Kael'thas and the final struggles around Quel'Danas.",
			deDE = "Die Terrasse der Magister ist eine zerbrochene Blutelfenfestung, verbunden mit Kael'thas und den letzten Kaempfen um Quel'Danas.",
		},
	},
}

addon.instanceContent.karazhan = addon.instanceContent.karazhan or {
	mapIDs = {350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362, 363, 364, 365, 366},
	info = {
		{
			id = "kara_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Karazhan is a long raid where preparation, assignments, and clean transitions matter as much as raw throughput.",
				deDE = "Karazhan ist ein langer Raid, in dem Vorbereitung, Einteilungen und saubere Uebergaenge genauso wichtig sind wie reiner Durchsatz.",
			},
		},
		{
			id = "kara_instance_002",
			type = "Advanced",
			weight = 20,
			text = {
				enUS = "Many encounters reward clear phase calls and disciplined threat management during transitions.",
				deDE = "Viele Begegnungen belohnen klare Phasenansagen und diszipliniertes Bedrohungsmanagement waehrend Uebergaengen.",
			},
		},
		{
			id = "kara_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Plan healer assignments early, especially on fights with split damage patterns or sudden raid-wide pressure.",
				deDE = "Plane Heilereinteilungen frueh, besonders bei Kaempfen mit geteilten Schadensmustern oder ploetzlichem raidweitem Druck.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Deadwind Pass.",
			deDE = "Gebirgspass der Totenwinde.",
		},
		attunement = {
			enUS = "Requires the Karazhan key chain in the original TBC progression model.",
			deDE = "Im urspruenglichen TBC-Fortschrittsmodell wird die Karazhan-Schluesselquestreihe benoetigt.",
		},
		notes = {
			enUS = "Long introductory raid with strong atmosphere, varied encounters, and many iconic progression lessons.",
			deDE = "Langer Einstiegsraid mit starker Atmosphaere, abwechslungsreichen Begegnungen und vielen praegenden Fortschrittslektionen.",
		},
		lore = {
			enUS = "Medivh's haunted tower is a nexus of arcane secrets, ghosts, opera, and old disasters waiting upstairs.",
			deDE = "Medivhs verfluchter Turm ist ein Knotenpunkt arkaner Geheimnisse, Geister, Oper und alter Katastrophen, die weiter oben warten.",
		},
	},
}

addon.instanceContent.gruuls_lair = addon.instanceContent.gruuls_lair or {
	info = {
		{
			id = "gruul_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Gruul's Lair is compact but punishes sloppy positioning and threat mistakes quickly.",
				deDE = "Gruuls Unterschlupf ist kompakt, bestraft aber schlampige Positionierung und Bedrohungsfehler sehr schnell.",
			},
		},
		{
			id = "gruul_instance_002",
			type = "TANK",
			weight = 20,
			text = {
				enUS = "Threat order and boss facing are central to keeping both encounters under control.",
				deDE = "Bedrohungsreihenfolge und Bossausrichtung sind entscheidend, um beide Begegnungen unter Kontrolle zu halten.",
			},
		},
		{
			id = "gruul_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Be ready for heavy tank focus healing and punishing damage spikes during progression pulls.",
				deDE = "Sei auf starke Tankheilung und harte Schadensspitzen waehrend Fortschrittspulls vorbereitet.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Blade's Edge Mountains.",
			deDE = "Schergrat.",
		},
		attunement = {
			enUS = "No attunement required.",
			deDE = "Keine Zugangsvoraussetzung erforderlich.",
		},
		notes = {
			enUS = "Short raid with very direct mechanics where positioning and execution get tested immediately.",
			deDE = "Kurzer Raid mit sehr direkten Mechaniken, in dem Positionierung und Ausfuehrung sofort getestet werden.",
		},
		lore = {
			enUS = "Gruul rules a brutal ogre stronghold carved into the blades of the mountains.",
			deDE = "Gruul herrscht ueber eine brutale Ogerfestung, die in die Klingen der Berge geschlagen wurde.",
		},
	},
}

addon.instanceContent.magtheridons_lair = addon.instanceContent.magtheridons_lair or {
	info = {
		{
			id = "mag_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Magtheridon's Lair depends heavily on assignments, coordination, and players knowing their exact jobs.",
				deDE = "Magtheridons Kammer haengt stark von Einteilungen, Koordination und Spielern ab, die ihre genaue Aufgabe kennen.",
			},
		},
		{
			id = "mag_instance_002",
			type = "Advanced",
			weight = 20,
			text = {
				enUS = "Rotation planning and execution matter as much as damage output on this encounter.",
				deDE = "Rotationsplanung und Ausfuehrung sind in dieser Begegnung genauso wichtig wie Schadensausstoss.",
			},
		},
		{
			id = "mag_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Be prepared to support assigned groups and react quickly during high-pressure transition moments.",
				deDE = "Sei bereit, eingeteilte Gruppen zu unterstuetzen und in druckvollen Uebergangsmomenten schnell zu reagieren.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Hellfire Citadel in Hellfire Peninsula.",
			deDE = "Hoellenfeuerzitadelle auf der Hoellenfeuerhalbinsel.",
		},
		attunement = {
			enUS = "No attunement required.",
			deDE = "Keine Zugangsvoraussetzung erforderlich.",
		},
		notes = {
			enUS = "Assignment-heavy one-boss raid where discipline matters more than improvisation.",
			deDE = "Ein-Boss-Raid mit starken Einteilungen, in dem Disziplin wichtiger ist als Improvisation.",
		},
		lore = {
			enUS = "Deep under the citadel, Magtheridon is chained and bled by Illidan's fel industry.",
			deDE = "Tief unter der Zitadelle wird Magtheridon von Illidans Teufelsindustrie angekettet und ausgeblutet.",
		},
	},
}

addon.instanceContent.zulaman = addon.instanceContent.zulaman or {
	info = {
		{
			id = "za_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Zul'Aman combines fast trash pacing with boss fights that punish poor awareness and slow reactions.",
				deDE = "Zul'Aman verbindet schnelles Trash-Tempo mit Bosskaempfen, die schlechte Aufmerksamkeit und langsame Reaktionen bestrafen.",
			},
		},
		{
			id = "za_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Pay close attention to dangerous support and trash mobs so the run stays controlled between bosses.",
				deDE = "Achte genau auf gefaehrliche Support- und Trashmobs, damit der Run zwischen den Bossen kontrolliert bleibt.",
			},
		},
		{
			id = "za_instance_003",
			type = "DAMAGE",
			weight = 10,
			text = {
				enUS = "Good target swaps and mechanics discipline usually save more time than greedy damage tunneling.",
				deDE = "Gute Zielwechsel und disziplinierter Umgang mit Mechaniken sparen meist mehr Zeit als gieriges Schadens-Tunneln.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Ghostlands, eastern Zul'Aman entrance.",
			deDE = "Geisterlande, oestlicher Eingang nach Zul'Aman.",
		},
		attunement = {
			enUS = "No attunement required.",
			deDE = "Keine Zugangsvoraussetzung erforderlich.",
		},
		notes = {
			enUS = "A timed raid with fast movement, compact boss progression, and a strong reward for clean execution.",
			deDE = "Ein zeitbasierter Raid mit viel Bewegung, kompakter Bossabfolge und grosser Belohnung fuer saubere Ausfuehrung.",
		},
		lore = {
			enUS = "The Amani return in force under Zul'jin, turning the old troll city into a brutal warfront.",
			deDE = "Die Amani kehren unter Zul'jin mit voller Wucht zurueck und verwandeln die alte Trollstadt in eine brutale Kriegsfront.",
		},
	},
}

addon.instanceContent.serpentshrine_cavern = addon.instanceContent.serpentshrine_cavern or {
	info = {
		{
			id = "ssc_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Serpentshrine Cavern is a longer raid where assignments, movement, and handling adds cleanly matter as much as damage output.",
				deDE = "Die Hoehle des Schlangenschreins ist ein laengerer Raid, in dem Einteilungen, Bewegung und sauberes Add-Handling genauso wichtig sind wie Schaden.",
			},
		},
		{
			id = "ssc_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Many pulls and bosses become far safer when dangerous support enemies and key targets are controlled quickly.",
				deDE = "Viele Pulls und Bosse werden deutlich sicherer, wenn gefaehrliche Support-Gegner und Schluesselziele schnell kontrolliert werden.",
			},
		},
		{
			id = "ssc_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Plan healing assignments carefully. Several encounters can pressure multiple groups or punish slow recovery.",
				deDE = "Plane Heilereinteilungen sorgfaeltig. Mehrere Begegnungen setzen mehrere Gruppen gleichzeitig unter Druck oder bestrafen langsame Erholung.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Coilfang Reservoir in Zangarmarsh.",
			deDE = "Echsenkessel in den Zangarmarschen.",
		},
		attunement = {
			enUS = "Original TBC progression tied this raid to attunement chains and raid progression planning.",
			deDE = "Im urspruenglichen TBC-Fortschritt war dieser Raid an Zugangsquestreihen und Raidplanung gekoppelt.",
		},
		notes = {
			enUS = "Large raid with varied encounters, several add-heavy phases, and a strong need for assignment discipline.",
			deDE = "Grosser Raid mit abwechslungsreichen Begegnungen, mehreren addlastigen Phasen und hohem Bedarf an disziplinierten Einteilungen.",
		},
		lore = {
			enUS = "Lady Vashj rules Serpentshrine Cavern from deep within Coilfang Reservoir, guarding her forces and allies.",
			deDE = "Lady Vashj herrscht tief im Echsenkessel ueber die Hoehle des Schlangenschreins und bewacht dort ihre Truppen und Verbuendeten.",
		},
	},
}

addon.instanceContent.tempest_keep_the_eye = addon.instanceContent.tempest_keep_the_eye or {
	info = {
		{
			id = "eye_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "The Eye rewards controlled positioning, clean phase handling, and strong awareness during high-pressure transitions.",
				deDE = "Das Auge belohnt kontrollierte Positionierung, saubere Phasenabwicklung und starke Aufmerksamkeit in druckvollen Uebergaengen.",
			},
		},
		{
			id = "eye_instance_002",
			type = "Advanced",
			weight = 20,
			text = {
				enUS = "Several encounters ask for disciplined assignments and clear calls rather than brute-forcing mechanics.",
				deDE = "Mehrere Begegnungen verlangen disziplinierte Einteilungen und klare Ansagen statt Mechaniken einfach zu ueberdruecken.",
			},
		},
		{
			id = "eye_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Expect sharp bursts, split-group damage, and transition moments where healer coordination matters a lot.",
				deDE = "Rechne mit harten Schadensspitzen, geteiltem Gruppenschaden und Uebergangsphasen, in denen Heilerkoordination sehr wichtig ist.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Tempest Keep in Netherstorm.",
			deDE = "Festung der Stuerme im Nethersturm.",
		},
		attunement = {
			enUS = "Original TBC progression tied access closely to raid attunements and earlier boss kills.",
			deDE = "Im urspruenglichen TBC-Fortschritt war der Zugang eng an Raid-Zugaenge und fruehere Bosskills gebunden.",
		},
		notes = {
			enUS = "Compact raid wing with iconic boss mechanics, heavy transition play, and strong demands on raid control.",
			deDE = "Kompakter Raidfluegel mit ikonischen Bossmechaniken, vielen Uebergaengen und hohen Anforderungen an Raidkontrolle.",
		},
		lore = {
			enUS = "The Eye is Kael'thas Sunstrider's stronghold high within Tempest Keep and a major turning point in TBC raiding.",
			deDE = "Das Auge ist Kael'thas Sonnenwanderers Festung hoch in der Festung der Stuerme und ein zentraler Wendepunkt des TBC-Raidings.",
		},
	},
}

addon.instanceContent.hyjal_summit = addon.instanceContent.hyjal_summit or {
	info = {
		{
			id = "hyjal_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Hyjal Summit depends on wave control, clear assignments, and keeping momentum between trash and bosses.",
				deDE = "Der Hyjalgipfel haengt von Wellenkontrolle, klaren Einteilungen und gutem Tempo zwischen Trash und Bossen ab.",
			},
		},
		{
			id = "hyjal_instance_002",
			type = "PriorityTargets",
			weight = 20,
			text = {
				enUS = "Wave management is the core of this raid. Dangerous enemies need to be identified and handled quickly.",
				deDE = "Wellenmanagement ist der Kern dieses Raids. Gefaehrliche Gegner muessen schnell erkannt und behandelt werden.",
			},
		},
		{
			id = "hyjal_instance_003",
			type = "TANK",
			weight = 10,
			text = {
				enUS = "Tank coordination matters throughout the raid because wave pickups and boss transitions often decide the pace.",
				deDE = "Tankkoordination ist im ganzen Raid wichtig, weil Wellenaufnahmen und Bossuebergaenge oft das Tempo bestimmen.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Caverns of Time in Tanaris.",
			deDE = "Hoehlen der Zeit in Tanaris.",
		},
		attunement = {
			enUS = "Original TBC progression required prior raid progress to unlock Hyjal Summit.",
			deDE = "Im urspruenglichen TBC-Fortschritt war vorheriger Raidfortschritt noetig, um den Hyjalgipfel freizuschalten.",
		},
		notes = {
			enUS = "Wave-based raid where endurance, planning, and trash execution define much of the run.",
			deDE = "Wellenbasierter Raid, in dem Ausdauer, Planung und saubere Trash-Ausfuehrung einen grossen Teil des Runs bestimmen.",
		},
		lore = {
			enUS = "Raiders join the Battle of Mount Hyjal, defending the World Tree against the Burning Legion.",
			deDE = "Raidgruppen nehmen an der Schlacht um den Hyjal teil und verteidigen den Weltenbaum gegen die Brennende Legion.",
		},
	},
}

addon.instanceContent.black_temple = addon.instanceContent.black_temple or {
	info = {
		{
			id = "bt_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Black Temple is a long progression raid where assignments, positioning, and consistency matter across many very different fights.",
				deDE = "Der Schwarze Tempel ist ein langer Fortschrittsraid, in dem Einteilungen, Positionierung und Konstanz ueber viele sehr unterschiedliche Kaempfe hinweg zaehlen.",
			},
		},
		{
			id = "bt_instance_002",
			type = "Advanced",
			weight = 20,
			text = {
				enUS = "Expect encounters that reward preparation, clean transitions, and raid discipline more than reactive improvisation.",
				deDE = "Erwarte Begegnungen, die Vorbereitung, saubere Uebergaenge und Raiddisziplin staerker belohnen als reaktive Improvisation.",
			},
		},
		{
			id = "bt_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Healing plans should be set early because the raid mixes sustained pressure, burst damage, and several assignment-heavy fights.",
				deDE = "Heilplaene sollten frueh stehen, weil der Raid anhaltenden Druck, Schadensspitzen und mehrere einteilungsintensive Kaempfe verbindet.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Shadowmoon Valley.",
			deDE = "Schattenmondtal.",
		},
		attunement = {
			enUS = "Original TBC progression tied Black Temple to late attunement and raid progression requirements.",
			deDE = "Im urspruenglichen TBC-Fortschritt war der Schwarze Tempel an spaete Zugangs- und Raidfortschrittsanforderungen gebunden.",
		},
		notes = {
			enUS = "Large late-tier raid with diverse encounters, heavy coordination demands, and a strong emphasis on consistent execution.",
			deDE = "Grosser Spaetstufen-Raid mit vielseitigen Begegnungen, hohem Koordinationsbedarf und starkem Fokus auf konstante Ausfuehrung.",
		},
		lore = {
			enUS = "The Black Temple is Illidan Stormrage's seat of power and one of the central settings of TBC endgame.",
			deDE = "Der Schwarze Tempel ist Illidan Sturmgrimms Machtsitz und einer der zentralen Schauplaetze des TBC-Endgames.",
		},
	},
}

addon.instanceContent.sunwell_plateau = addon.instanceContent.sunwell_plateau or {
	info = {
		{
			id = "sunwell_instance_001",
			type = "Important",
			weight = 30,
			text = {
				enUS = "Sunwell Plateau is a demanding late-tier raid where execution, assignments, and recovery from mistakes are all tested hard.",
				deDE = "Das Sonnenbrunnenplateau ist ein anspruchsvoller Spaetstufen-Raid, in dem Ausfuehrung, Einteilungen und Erholung nach Fehlern hart geprueft werden.",
			},
		},
		{
			id = "sunwell_instance_002",
			type = "Advanced",
			weight = 20,
			text = {
				enUS = "Several encounters reward disciplined positioning and exact handling of high-pressure mechanics.",
				deDE = "Mehrere Begegnungen belohnen disziplinierte Positionierung und exakten Umgang mit druckvollen Mechaniken.",
			},
		},
		{
			id = "sunwell_instance_003",
			type = "HEALER",
			weight = 10,
			text = {
				enUS = "Healing coverage and cooldown planning matter greatly because many fights combine burst damage with punishing attrition.",
				deDE = "Heilabdeckung und Cooldown-Planung sind sehr wichtig, weil viele Kaempfe Schadensspitzen mit zermuerbendem Druck verbinden.",
			},
		},
	},
	details = {
		travel = {
			enUS = "Isle of Quel'Danas.",
			deDE = "Insel von Quel'Danas.",
		},
		attunement = {
			enUS = "No classic raid attunement chain is required, but the raid belongs to the final tier of TBC progression.",
			deDE = "Keine klassische Raid-Zugangsquestreihe ist noetig, aber der Raid gehoert zur letzten TBC-Fortschrittsstufe.",
		},
		notes = {
			enUS = "Late TBC raid with highly demanding encounters and a strong focus on clean execution from pull to kill.",
			deDE = "Spaeter TBC-Raid mit sehr anspruchsvollen Begegnungen und starkem Fokus auf saubere Ausfuehrung vom Pull bis zum Kill.",
		},
		lore = {
			enUS = "Sunwell Plateau is the final assault on the corrupted Sunwell and the culmination of Kael'thas and Kil'jaeden's plans.",
			deDE = "Das Sonnenbrunnenplateau ist der letzte Angriff auf den verdorbenen Sonnenbrunnen und der Hoehepunkt von Kael'thas' und Kil'jaedens Plaenen.",
		},
	},
}

-- The Tips maps holds tooltip information and mob ID's for all 13 legion dungeons, 10 BFA dungeons and the 8 Shadowlands dungeons. This is basically the database.
-- Each array uses the format: {{"Type", "Tip1"}, {"Type", "Tip2"}}
tipsMap_enUS = {
	-- Example
	[126389] = {{"example_126389_01", "Blank", "A+ Tip right here. \n It's a shame it's so damn long eh? It just goes on and on and on and ooon", 20},
				{"example_126389_02", "Interrupts", "INTERRUPT: Stone Bolt", 10}}, -- In this example case, all roles will see "A+ Tip right here" on the mobs tooltip but only Healers will see the second tip.
	
		--
	[99999] = {{"example_99999_01", "Important", "PlaceholderImportant", 30}, {"example_99999_02", "Important", "PlaceholderImportant", 20},
				{"example_99999_03", "Advanced", "PlaceholderAdvanced", 10}}, -- Tirnenn Villager	



	---------------------------------------------------
	----------------Burning Crusade--------------------
	---------------------------------------------------

	------- World Boss -----------------

	[17711] = {{"worldboss_17711_01", "Legion", "", 10}}, -- Doomwalker
	[18728] = {{"worldboss_18728_01", "Legion", "", 10}}, -- Doom Lord Kazzak


	------- Raid: Karazhan -----------------

	---Bosses
	[16151] = {{"kara_16151_01", "Important", "Make sure that the trash leading up to Attumen has been cleared (has a 25 min respawn timer while Midnight is still alive)", 200},
				{"kara_16151_02", "Important", "Midnight AND Attumen are immune to taunt effects, so make sure that ALL raiders are properly managing their threat for their role and during phase changes!", 190},
				{"kara_16151_03", "Advanced", "PHASE ONE", 180},
				{"kara_16151_04", "Important", "Place offtank on Midnight during start of the fight. Warrior maintank should be reserved for Attumen", 170},
				{"kara_16151_05", "HEALER", "Each tank should have its own dedicated healer for start of fight plus another for raid healing", 160},
				{"kara_16151_06", "Advanced", "PHASE TWO (Starts when Midnight is at 95% and Attumen appears)", 150},
				{"kara_16151_07", "TANK", "Warrior/MT should pick up Attumen and move boss slightly away from Midnight and facing away from group to avoid cleaves", 140},
				{"kara_16151_08", "HEALER", "STOP Heals when Attumen appears in order for MT to pick up aggro on Attumen", 130},
				{"kara_16151_09", "DAMAGE", "STOP DPS at start of phase 2 as Attumen wipes threat at start of transition", 120},
				{"kara_16151_10", "DAMAGE", "DPS should stack behind Attumen to avoid his cleave damage", 110},
				{"kara_16151_11", "Important", "Dispel/Spell Reflect CURSE: Intangible Presence (Reduce player hit chance by 50%)", 100},
				{"kara_16151_12", "DRUID", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE", 90},
				{"kara_16151_13", "MAGE", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE", 80},
				{"kara_16151_14", "WARRIOR", "If Tank: Use Spell Reflect when boss about to apply curse (instant cast)", 70},
				{"kara_16151_15", "DAMAGE", "When Attumen appears (when Midnight is at 95%), DPS should swap to Attumen", 60},
				{"kara_16151_16", "Advanced", "PHASE THREE (Starts when Midnight/Attumen is dropped to 25% - Attumen will mount Midnight at this phase)", 50},
				{"kara_16151_17", "TANK", "Attumen wipes threat at start of transition, pick him up quick!", 40},
				{"kara_16151_18", "HEALER", "STOP Heals at start of phase 3 as Attumen wipes threat at start of transition", 30},
				{"kara_16151_19", "DAMAGE", "STOP DPS at start of phase 3 as Attumen wipes threat at start of transition", 20},
				{"kara_16151_20", "TANK", "OT that was assigned to Midnight should swap to DPS'ing Attumen", 10}}, -- Midnight
	[16152] = {{"kara_16152_01", "Important", "Make sure that the trash leading up to Attumen has been cleared (has a 25 min respawn timer while Midnight is still alive)", 200},
				{"kara_16152_02", "Important", "Midnight AND Attumen are immune to taunt effects, so make sure that ALL raiders are properly managing their threat for their role and during phase changes!", 190},
				{"kara_16152_03", "Advanced", "PHASE ONE", 180},
				{"kara_16152_04", "Important", "Place offtank on Midnight during start of the fight. Warrior maintank should be reserved for Attumen", 170},
				{"kara_16152_05", "HEALER", "Each tank should have its own dedicated healer for start of fight plus another for raid healing", 160},
				{"kara_16152_06", "Advanced", "PHASE TWO (Starts when Midnight is at 95% and Attumen appears)", 150},
				{"kara_16152_07", "TANK", "Warrior/MT should pick up Attumen and move boss slightly away from Midnight and facing away from group to avoid cleaves", 140},
				{"kara_16152_08", "HEALER", "STOP Heals when Attumen appears in order for MT to pick up aggro on Attumen", 130},
				{"kara_16152_09", "DAMAGE", "STOP DPS at start of phase 2 as Attumen wipes threat at start of transition", 120},
				{"kara_16152_10", "DAMAGE", "DPS should stack behind Attumen to avoid his cleave damage", 110},
				{"kara_16152_11", "Important", "Dispel/Spell Reflect CURSE: Intangible Presence (Reduce player hit chance by 50%)", 100},
				{"kara_16152_12", "DRUID", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE", 90},
				{"kara_16152_13", "MAGE", "Intangible Presence: Dispel Curse from PLAYER with REMOVE CURSE", 80},
				{"kara_16152_14", "WARRIOR", "If Tank: Use Spell Reflect when boss about to apply curse (instant cast)", 70},
				{"kara_16152_15", "DAMAGE", "When Attumen appears (when Midnight is at 95%), DPS should swap to Attumen", 60},
				{"kara_16152_16", "Advanced", "PHASE THREE (Starts when Midnight/Attumen is dropped to 25% - Attumen will mount Midnight at this phase)", 50},
				{"kara_16152_17", "TANK", "Attumen wipes threat at start of transition, pick him up quick!", 40},
				{"kara_16152_18", "HEALER", "STOP Heals at start of phase 3 as Attumen wipes threat at start of transition", 30},
				{"kara_16152_19", "DAMAGE", "STOP DPS at start of phase 3 as Attumen wipes threat at start of transition", 20},
				{"kara_16152_20", "TANK", "OT that was assigned to Midnight should swap to DPS'ing Attumen", 10}}, -- Attumen the Huntsman
	[15687] = {{"kara_15687_01", "Important", "Clear room before engaging Moroes so that you'll have room to deal with boss", 210},
				{"kara_15687_02", "Important", "Mark Boss and his 4 dinner guests and assign MT/OT/CC of those targets", 200},
				{"kara_15687_03", "Important", "When fight starts, MT should be on Moroes, CC targets should be applied when on their initial platform or one side of room, while OT should be on Top Kill Prio Dinner guest & remain #2 on Moroes threat", 190},
				{"kara_15687_04", "PriorityTargets", "CC/Kill Priority for Moroes' Dinner Guests:", 180},
				{"kara_15687_05", "Important", "1) Baroness Dorothea Millstipe (mana burner)", 170},
				{"kara_15687_06", "Important", "2) Lady Catriona Von'Indi and Lady Keira Berrybuck (healers that will buff/heal other dinner guests)", 160},
				{"kara_15687_07", "Important", "3) Baron Rafe Dreuger (stunner that can result in loss of aggro)", 150},
				{"kara_15687_08", "Important", "4) Lord Robin Daris (warrior-type mob that should be fought away from other raid members due to his Whirlwind ability)", 140},
				{"kara_15687_09", "Important", "5) Moroes (boss)", 130},
				{"kara_15687_10", "Important", "6) Lord Crispin Ference (survivalist, takes long time to kill, deal with this guy AFTER Moroes)", 120},
				{"kara_15687_11", "Advanced", "DEALING WITH GARROTE", 110},
				{"kara_15687_12", "Important", "GARROTE: Every 30 seconds, Moroes vanishes and applies this LARGE bleed on random raid target. This player should be called out so that they can receive heal priority.", 100},
				{"kara_15687_13", "Important", "Dwarves can use STONEFORM racial to remove their own bleed", 90},
				{"kara_15687_14", "PALADIN", "Remove garrote using Divine Shield (from self) / Blessing of Protection (from raid member)", 80},
				{"kara_15687_15", "MAGE", "Remove garrote using Ice Block", 70},
				{"kara_15687_16", "Advanced", "DEALING WITH GOUGE", 60},
				{"kara_15687_17", "Important", "MT and OT should remain #1 and #2 on threat meters", 50},
				{"kara_15687_18", "Important", "Moroes will Gouge/Stun MT and then swap to #2 threat, during that stun.", 40},
				{"kara_15687_19", "Advanced", "DEALING WITH BLIND", 30},
				{"kara_15687_20", "Important", "Assign a non-tank player to stand on top of Moroes at all times to receive the Blind (10 sec CC)", 20},
				{"kara_15687_21", "Important", "Paladins, Druids, Shamans can remove Blinds (disease)", 10}}, -- Moroes <Tower Steward>
	[16812] = {{"kara_16812_01", "Legion", "Speak to Barnes when ready to start Opera boss event", 10}}, -- Barnes <The Stage Manager>
	[16457] = {{"kara_16457_01", "Important", "Maiden is immune to taunt, so allow tank(s) chance to build up aggro on boss before others engage. Maiden's abilities are used at random and not a strict timer, but knowing her ability CD can help plan for dealing with Repentance", 220},
				{"kara_16457_02", "Advanced", "POSITIONING", 210},
				{"kara_16457_03", "Important", "Tank and Melee DPS (the fewer Melee the better) will fight boss in center of room", 200},
				{"kara_16457_04", "Important", "Melee DPS should stand in a triangle around Maiden to minimize chance of a chained Holy Wrath hitting multiple targets", 190},
				{"kara_16457_05", "Important", "Ranged DPS and Healers should be assigned to their own gap between pillars. When fight begins, Ranged should take one step forward to ensure they are in LoS of Healers", 180},
				{"kara_16457_06", "Important", "Healers should be placed opposite the other(s) to ensure they are within range of their assigned raid members", 170},
				{"kara_16457_07", "Advanced", "DEALING WITH REPENTANCE", 160},
				{"kara_16457_08", "Important", "Maiden casts Repentance stunning raid for 12 seconds (broken on damage or certain abilities)", 150},
				{"kara_16457_09", "HEALER", "When Maiden's Repentance timer is almost up, healers should run to center of platform to take Holy Ground damage to break the upcoming Repentance. When Repentance is used, Healers should return to original positions OFF of center platform. If healer can break Repentance, they don't need to run into Holy Ground AoE", 140},
				{"kara_16457_10", "TANK", "DEFENSIVE: When group takes Repentance, tank(s) should be popping defensives until healers can break free of Repentance. If Healer is stunned with Repentance and can't break free, pull Maiden over Healer(s) so that Holy Ground AoE can break healers free of stun", 130},
				{"kara_16457_11", "HUNTER", "Using Bestial Wrath before Repentance can negate its effect", 120},
				{"kara_16457_12", "PRIEST", "Using Shadow Word: Pain during the 0.5 sec Repentance cast can break the Priest free when they are hit with Repentance", 110},
				{"kara_16457_13", "WARRIOR", "Popping Berserker Rage can allow warrior to become immune or break Repentance", 100},
				{"kara_16457_14", "Advanced", "DEALING WITH HOLY FIRE (Magic Debuff causing Fire Damage)", 90},
				{"kara_16457_15", "Important", "Using a Major Fire Protection Potion can mitigate Holy Fire DoT", 80},
				{"kara_16457_16", "Important", "Restorative Potion can remove Holy Fire", 70},
				{"kara_16457_17", "MAGE", "HOLY FIRE: Remove with ICE BLOCK", 60},
				{"kara_16457_18", "PALADIN", "HOLY FIRE: Dispel Magic with CLEANSE or DIVINE SHIELD", 50},
				{"kara_16457_19", "PRIEST", "HOLY FIRE: Dispel Magic with DISPEL MAGIC", 40},
				{"kara_16457_20", "ROGUE", "HOLY FIRE: Remove with CLOAK OF SHADOWS", 30},
				{"kara_16457_21", "SHAMAN", "Effective positioning of Grounding Totem can remove a nearby player's Holy Fire debuff", 20},
				{"kara_16457_22", "WARRIOR", "HOLY FIRE: Use SPELL REFLECTION", 10},
				{"kara_16457_23", "WARLOCK", "HOLY FIRE: Dispel Magic with DEVOUR MAGIC (Felhound)", 5}}, -- Maiden of Virtue
	[15691] = {{"kara_15691_01", "Advanced", "FLARE PHASE", 70},
				{"kara_15691_02", "PriorityTargets", "Curator summons an Astral Flare every 10 sec at 10% of boss' mana. Flares must be destroyed before next flare is launched", 60},
				{"kara_15691_03", "Important", "During this phase, Curator should ONLY be damaged IF/WHEN there are no Flares up!", 50}, 
				{"kara_15691_04", "Advanced", "EVOCATION PHASE (starts when boss has 0% mana):", 40},
				{"kara_15691_05", "Important", "Curator takes increased damage during this phase. Make sure that ALL Flares are destroyed before switching to Curator!", 30},
				{"kara_15691_06", "Advanced", "ENRAGE PHASE (starts at 15% health:", 20},
				{"kara_15691_07", "Important", "Curator stops launching Flares and its damage output increases. Tank n spank phase", 10}}, 
				-- The Curator
	[15688] = {{"kara_15688_01", "Important", "Kill Priority: DEMON CHAINS > KIL'REK > ILLHOOF", 140},
				{"kara_15688_02", "Important", "Composition: Should have a paladin healer w/Concentration Aura (for warlock) and Destro Lock with Nether Protection and Intensity. Paladin healer should be dedicated to healing Warlock and Warlock should use Hellfire to deal with portal imps. A priest buffing Prayer of Shadow Protection can help resist Sacrifice DoT", 130},
				{"kara_15688_03", "WARLOCK", "Destruction Locks speced with Nether Protection are immune to most firebolts (and Sacrifice damage when Nether Protection is active). They should be spamming Seed of Corruption on Illhoof to also deal with non-elite imps", 120},
				{"kara_15688_04", "TANK", "Maintank should be on Illhoof and Kil'rek. Illhoof should be tanked next to green circle on the floor", 110},
				{"kara_15688_05", "Advanced", "DEALING WITH SACRIFICE", 100},
				{"kara_15688_06", "Important", "Occasionally boss will sacrifice a player putting Demon Chains around player (placing them in center of room) and begin leeching their HP. The Demon Chains need to be taken down ASAP!", 90},
				{"kara_15688_07", "Important", "Have a dedicated player watch Illhoof's castbar and target to call out to healers who the sacrifice victim will be.", 80},
				{"kara_15688_08", "TANK", "If Main-Tank is being Sacrificed, the OT should pick up Illhoof", 70},
				{"kara_15688_09", "Important", "While Demon Chains are not up, focus on Kil'rek. Raid leader should call out for AoE to destroy the non-elite imps once in awhile", 60},
				{"kara_15688_10", "MAGE", "Using Ice Block can remove Demon Chains from Mage", 50},
				{"kara_15688_11", "PALADIN", "Using Bubble can remove Demon Chains from Paladin", 40},
				{"kara_15688_12", "Advanced", "DEALING WITH KIL'REK", 30},
				{"kara_15688_13", "WARLOCK", "Placing Curse of Tongues on Kil'rek can reduce the incoming damage", 20},
				{"kara_15688_14", "Important", "Killing Kil'rek will place a debuff on Illhoof that increases damage the boss takes for 25 seconds. Kil'rek will respawn after ~45 seconds", 10}},
				-- Terestian Illhoof
	[16524] = {{"kara_16524_01", "Important", "No tanks are needed for this fight. Threat-reducing buffs should be replaced with DPS-increasing buffs. Having healers that can heal while moving, such as Druids or Priests are most helpful for this fight", 160},
				{"kara_16524_02", "Advanced", "POSITIONING", 150},
				{"kara_16524_03", "Important", "Tanks and Melee should stand in center of room fighting Aran. Casters and Healers should stand at least 10 yards from Aran to avoid boss' AoE Counterspell. Healers using instant heals will not be interrupted by the counterspell", 140},
				{"kara_16524_04", "Advanced", "SPECIAL ABILITIES", 130},
				{"kara_16524_05", "Important", "Circular Blizzard (Ranged players should move clockwise around room to avoid Blizzard. If snared, ranged player should move to center of room)", 120},
				{"kara_16524_06", "Important", "Flame Wreath (Whole raid needs to stop moving to see where Flame Wreath will be placed. Moving into or out of a ring (or using Reincarn/SS or accepting a resurrection) will trigger a very large explosion! This ring dissipates after 20 seconds)", 110},
				{"kara_16524_07", "Important", "Turning your character either inside or outside of Flame Wreath will NOT trigger the explosion", 100},
				{"kara_16524_08", "DRUID", "NO Shapeshifting inside a ring, otherwise it will trigger the Flame Wreath explosion", 90},
				{"kara_16524_09", "MAGE", "NO Blinking into or out of a ring otherwise you'll trigger the Flame Wreath explosion", 80},
				{"kara_16524_10", "SHAMAN", "Shaman elementals crossing into or out of a ring will trigger the Flame Wreath explosion", 70},
				{"kara_16524_11", "Important", "Arcane Explosion (Players should IMMEDIATELY run to the outside of the room", 60},
				{"kara_16524_12", "Advanced", "POLYMORPH PHASE (20% mana):", 50},
				{"kara_16524_13", "Important", "Aran polymorphs raid members, if you're not polymorphed because of being broken out by Aran's Water Elementals or a Druid's Tree of Life, Aran's drinking should NOT be interrupted", 40},
				{"kara_16524_14", "Important", "Because Polymorph regenerates player health/mana quickly, this phase shouldn't run at the same time as the water elemental phase", 30},
				{"kara_16524_15", "Advanced", "WATER ELEMENTAL PHASE (40% health)", 20},
				{"kara_16524_16", "Important", "Water Elementals last for 90 seconds should be killed quickly or controlled with a Warlock's fear/banish. They are immune to Frost damage", 10}}, 
				-- Shade of Aran
	[15689] = {{"kara_15689_01", "Advanced", "PORTAL PHASE (lasts 60 sec):", 190},
				{"kara_15689_02", "Important", "Assign and alternate players for specific portals. After player leaves portal's beam for 8-20 seconds, the player will receive debuff preventing interaction with that color portal for 90 seconds", 180},
				{"kara_15689_03", "TANK", "The tank (red beam) can sidestep 3-5 yards out of red beam for a few seconds to slow negative effect stack of reducing max HP of 1k per tick", 170},
				{"kara_15689_04", "Important", "TANK: Red Beam (Netherspite will aggro to this player. Tanks should alternate ONLY with each portal phase because of the debuff timer. If necessary, a well-armored DPS can ride the red beam for 20 seconds before trading out.", 160},
				{"kara_15689_05", "HEALER", "It is unnecessary for healers to heal the player in the red beam because of it's health regen abilities", 150},
				{"kara_15689_06", "Important", "HEALER: Green Beam (Healers are especially helpful to primary this beam as it quickly regenerates mana and increases healing done. Classes that need to have their mana quickly regenerated can stand briefly in this beam before the assigned healer, but this beam must ALWAYS be blocked, otherwise it will quickly regen Netherspite's HP", 140},
				{"kara_15689_07", "Important", "DPS: Blue Beam (Ideally a DPS with Shadow Resistance, or a Warlock/Shadow Priest to replenish their health lost)", 130},
				{"kara_15689_08", "HEALER", "The player in the Blue (DPS) Beam will need big heals!", 120},
				{"kara_15689_09", "Important", "Even Number Portal Phase Rotation Suggestion:", 110},
				{"kara_15689_10", "Legion", "RED: main-tank, BLUE: dps-a then dps-b, GREEN: off-tank and/or healer", 100},
				{"kara_15689_11", "Important", "Odd Number Portal Phase Rotation Suggestion:", 90},
				{"kara_15689_12", "Legion", "RED: off-tank, BLUE: dps-c then dps-d, GREEN: main-tank and/or healer", 80},
				{"kara_15689_13", "Advanced", "BANISH PHASE (lasts 30 sec)", 70},
				{"kara_15689_14", "Important", "After short time of inactivity, Boss will cast Netherbreath (Frontal cone dealing Arcane Damage +Knockback)", 60},
				{"kara_15689_15", "DAMAGE", "DPS should run by the telescope to regen mana and bandage up as necessary", 50},
				{"kara_15689_16", "SHAMAN", "Dropping a Searing Totem during this phase will not be killable by Netherbreath and after the phase ends, Netherspite will go after the Searing Totem, allowing tank time to pick up boss with red beam", 40},
				{"kara_15689_17", "TANK", "The tank that will be doing the next phase's red beam should have their back against the door to the room to deal with knockback and prevent other players from receiving Netherbreath", 30},
				{"kara_15689_18", "HEALER", "Healer should stand on side of Netherspite to keep up the tank that is dealing with boss during this phase", 20},
				{"kara_15689_19", "Important", "After Banish Phase ends, boss will go back to Poral Phase until it is defeated", 10}}, 
				-- Netherspite
	[15690] = {{"kara_15690_01", "Important", "Positioning: TANK and MELEE should have back against wall to avoid Shadow Nova knockback, ranged and healers should stand ~30 yds from boss to avoid Shadow Nova, Players (esp melee) need to be aware of Falling Infernals and Enfeeble", 250},
				{"kara_15690_02", "Advanced", "PHASE ONE", 240},
				{"kara_15690_03", "Important", "Prince will put Shadow Word: Pain on the MT and another target during P1 and P3 - this should be esp dispelled from the tank", 230},
				{"kara_15690_04", "Important", "Prince summons Netherspite Infernals (Every 45 seconds in P1 and P2, cast Hellfire AoE ~3 seconds after landing; Despawn in ~180 seconds). The Infernals are stationary and MUST be avoided by raid members!", 220},
				{"kara_15690_05", "Important", "Assign and mark a ranged raider to watch for the falling infernals coming from the sky. The spotter will need to move to a safe spot, but still in range of healers", 210},
				{"kara_15690_06", "TANK", "Watch/Listen to your infernal spotter so that you and your melee teammates don't take Hellfire damage", 200},
				{"kara_15690_07", "Important", "Using an Elixir of Detect Demon (esp the tank who will be adjusting Prince's location), during this fight can point out locations of Infernals on the minimap", 190},
				{"kara_15690_08", "HUNTER", "Turning on your Track Demons will help show you where Infernals are located, without needing the Elixir of Detect Demon", 180},
				{"kara_15690_09", "WARLOCK", "Turning on your Track Demons will help show you where Infernals are located, without needing the Elixir of Detect Demon", 170},
				{"kara_15690_10", "HEALER", "Work things out with healers so that the tank will continue to receive heals when the group must move to avoid an Infernal's Hellfire AoE", 160},
				{"kara_15690_11", "Advanced", "DEALING WITH ENFEEBLE", 150},
				{"kara_15690_12", "Important", "Enfeeble is cast on five random players excluding the current target (tank). This debuff reduces player health to 1 for 7 seconds and can't be removed", 140},
				{"kara_15690_13", "HEALER", "Players with Enfeeble debuff can't be healed above 1 health, so don't waste your mana. Their HP will return after the effect ends", 130},
				{"kara_15690_14", "Important", "Shadow Nova (~24 yd range around Prince; 3 sec cast also has knockback) is usually cast ~4 sec after Enfeeble during P1 and P2", 120},
				{"kara_15690_15", "PALADIN", "During P1 and P2, Paladin MUST not use Seal of Blood as this will cause an instant death if paladin is hit with Enfeeble", 110},
				{"kara_15690_16", "Important", "Melee DPS should have an escape route planned to avoid infernals when also enfeebled", 100},
				{"kara_15690_17", "Advanced", "PHASE TWO (Starts at 60% health)", 90},
				{"kara_15690_18", "TANK", "Tank will need to use Defensive CDs esp during this phase as it is most dangerous for them during P2 (esp with Sunder Armor)", 80},
				{"kara_15690_19", "HEALER", "Because of Thrash and Sunder Armor, healers should keep tank as close to max health as much as possible", 70},
				{"kara_15690_20", "TANK", "During P2, Paladin tanks can focus on using magic damaging abilities, instead of melee attacks to maximize the number of hits to get past boss' increased parry", 60},
				{"kara_15690_21", "WARLOCK", "Use Thunderclap, Demoralizing Shout, or Curse of Weakness on Prince to keep his AP and speed reduced at all times (esp in P2 onward)", 50},
				{"kara_15690_22", "WARRIOR", "Use Thunderclap, Demoralizing Shout, or Curse of Weakness on Prince to keep his AP and speed reduced at all times (esp in P2 onward)", 40},
				{"kara_15690_23", "Advanced", "PHASE THREE (Starts at 30% health) - POP HERO/LUST!", 30},
				{"kara_15690_24", "Important", "There will be more Enfeebles, but Infernals will land every 15 seconds (instead of every 45 seconds)", 20},
				{"kara_15690_25", "TANK", "Melee damage on tanks will reduce to P1 levels during this phase", 10}}, -- Prince Malchezaar
	[17225] = {{"kara_17225_01", "Important", "During Air to Ground transition, make sure that the Nightbane tank has enought time to build up their aggro before others engage in fight!", 250},
				{"kara_17225_02", "HUNTER", "Hunters casting Misdirect onto the Nightbane tank can help build up the tank's aggro!", 240},
				{"kara_17225_03", "Advanced", "POSITIONING", 230},
				{"kara_17225_04", "Important", "Tank assigned to Nightbane should have back to outside wall to direct cleave and breath away from raid members", 220},
				{"kara_17225_05", "Important", "Ranged should split into two groups: GROUP A standing against inside wall, and GROUP B standing to the outside wall. Healers should stand with GROUP B to ensure they are in range of Nightbane tank. Groups A and B should be at max range to avoid his 35 yd Bellowing Roar AoE Fear (used every 45-60 seconds)", 210},
				{"kara_17225_06", "Important", "Melee DPS should stand on side of hind leg closest to Groups A and B to stay in range of heals", 200},
				{"kara_17225_07", "Important", "Nightbane's frontal cone and tail sweep are reasons why ONLY the tank should be standing in front of Nightbane and NO ONE should be standing behind the boss", 190},
				{"kara_17225_08", "Advanced", "GROUND PHASE", 180},
				{"kara_17225_09", "Important", "Nightbane will apply Distracting Ash that will reduce hit chance by 30% for 40 seconds. This should be dispelled, esp if applied to the tank", 170},
				{"kara_17225_10", "Important", "Smoldering Ash is a frontal cone attack dealing 5-6k damage plus a 1.6-1.9k DoT every 3 seconds for 15 seconds!", 160},
				{"kara_17225_11", "Important", "Cleave hits for ~6k on plate and 11k on cloth.", 150},
				{"kara_17225_12", "TANK", "Use Defensive CDs wisely when dealing with Cleave when also having Smoldering Ash debuff on you", 140},
				{"kara_17225_13", "HEALER", "Be prepared to use extra heals on tank during Cleave +Smolding Ash periods", 130},
				{"kara_17225_14", "Dodge", "DODGE: Nightbane will char the ground below a random player (~5 yd radius) that deals ~3k fire damage each second", 120},
				{"kara_17225_15", "Important", "DEALING WITH FEAR", 110},
				{"kara_17225_16", "Important", "PVP Trinkets or Undead Racial can drop some of the fears", 100},
				{"kara_17225_17", "PRIEST", "Using Fear Ward on a non-warrior Nightbane tank or leading melee DPS could be helpful to minimize damage from raid being feared", 90},
				{"kara_17225_18", "SHAMAN", "Shamans using Tremor Totem can stop the fear of some of the Bellowing Roars on melee raid members", 80},
				{"kara_17225_19", "WARRIOR", "Use Berserker Rage (stance dance to Berserker Stance first, if necessary) to drop Fear", 70},
				{"kara_17225_20", "Important", "When fear is concluded, adjust your positioning to ~ how it was when fight began", 60},
				{"kara_17225_21", "Advanced", "FLIGHT PHASE starts when Nightbane health at 75%, 50% and 25%", 50},
				{"kara_17225_22", "TANK", "DPS and TANKS should swap to killing the summoned skeletons during this phase", 40},
				{"kara_17225_23", "DAMAGE", "DPS and TANKS should swap to killing the summoned skeletons during this phase", 30},
				{"kara_17225_24", "Important", "If DPS is having harder time dealing with Skeletons, they can farm some Stratholme Holy Water (Undead side of Stratholme) to help burn these down more quickly", 20},
				{"kara_17225_25", "HEALER", "Usually a healer will be targeted by Smoking Blast and that healer will need increased healing", 15},
				{"kara_17225_26", "Important", "After Flight phase, Nighbane will land again until you've defeated it", 10}}, -- Nightbane

	---Servant Quarters
	[16179] = {{"kara_16179_01", "Important", "Tanks should be #1 and #2 on threat meters", 30},
				{"kara_16179_02", "Important", "Boss will apply webbing (magic debuff) to MT and swap to OT", 20},
				{"kara_16179_03", "Important", "Boss will apply Acidic Wound (Reduces armor and Nature DoT", 10}}, -- Hyakiss the Lurker
	[16180] = {{"kara_16180_01", "Important", "Tank and spank fight", 10}}, -- Shadikith the Glider
	[16181] = {{"kara_16181_01", "Important", "Pull boss into the room leading into his room", 50},
				{"kara_16181_02", "Important", "Due to AoE knockback, MT should stand with back against wall and Ranged DPS, Healers should stand with back against adjacent wall", 40}, 
				{"kara_16181_03", "Important", "Boss will charge furthest member of raid, this player should be OT due to this being a hard-hitting ability", 30},
				{"kara_16181_04", "Important", "MT should have their back should be against wall to avoid being knocked back, while OT should stand with back against adjacent wall furthest from boss (due to his hard-hitting charge on furthest player)", 20},
				{"kara_16181_05", "Important", "Boss does cast Sonic Burst (5 sec AoE Silence with 20 yd range)", 10}}, -- Rokad the Ravager

	---Moroes' Dinner Guests
	[17007] = {{"kara_17007_01", "Legion", "HOLY PALADIN-Type Mob", 40},
				{"kara_17007_02", "PriorityTargets", "Kill/CC Priority: 2nd", 30},
				{"kara_17007_03", "Important", "Keep target CC'd unless group is fighting this mob", 20},
				{"kara_17007_04", "Important", "Mob will heal and buff other dinner guests w/Holy Light heal & Blessing of Might", 10}}, -- Lady Keira Berrybuck
	[19872] = {{"kara_19872_01", "Legion", "HOLY PRIEST-Type Mob", 40},
				{"kara_19872_02", "PriorityTargets", "Kill/CC Priority: 2nd", 30},
				{"kara_19872_03", "Important", "Keep target CC'd unless group is fighting this mob", 20},
				{"kara_19872_04", "Important", "Mob will heal and buff other dinner guests w/Greater Heal & PW: Shield", 10}}, -- Lady Catriona Von'Indi
	[19873] = {{"kara_19873_01", "Legion", "PROTECTION WARRIOR-Type Mob", 30},
				{"kara_19873_02", "PriorityTargets", "Kill/CC Priority: 6th (Least priority mob of Moroes fight)", 20},
				{"kara_19873_03", "Important", "Will occasionally cast Disarm on player", 10}}, -- Lord Crispin Ference
	[19874] = {{"kara_19874_01", "Legion", "PROT/RET PALADIN-Type Mob", 30},
				{"kara_19874_02", "PriorityTargets", "Kill/CC Priority: 3rd", 20},
				{"kara_19874_03", "Important", "Should be OT or CC'd as mob will stun player with Hammer of Justice", 10}}, -- Baron Rafe Dreuger
	[19875] = {{"kara_19875_01", "Legion", "SHADOW PRIEST-Type Mob", 30},
				{"kara_19875_02", "PriorityTargets", "Kill/CC Priority: 1st", 20},
				{"kara_19875_03", "Important", "Due to Mana Burn, this target should remain CC'd", 10}}, -- Baroness Dorothea Millstipe
	[19876] = {{"kara_19876_01", "Legion", "MORTAL STRIKE WARRIOR-Type Mob", 40},
				{"kara_19876_02", "PriorityTargets", "Kill/CC Priority: 4th", 30},
				{"kara_19876_03", "Important", "Due to mob's Whirlwind ability, players should not stand close to him", 20},
				{"kara_19876_04", "TANK", "If Robin is OT, should place this target away from MT, Moroes and other players due to WW Damage", 10}}, -- Lord Robin Daris

	---Opera Event
	[17603] = {{"kara_17603_01", "Important", "Only 1 tank is needed; best that this is a warrior due to their Berserker Rage during Boss' Fear ability", 100},
				{"kara_17603_02", "TANK", "Tank wolf along one wall medium distance away from rest of raid", 90},
				{"kara_17603_03", "Important", "Ranged DPS and HEALERS should stand a third to a half-stage length from boss on adjacent wall to allow reaction time for RED RIDING HOOD stage", 80},
				{"kara_17603_04", "Important", "Prior to Wolf casting RED RIDING HOOD on a player, boss will briefly target the player that will receive debuff before swapping back to tank and applying RED RIDING HOOD debuff.  This should give player (esp melee) advanced warning of the application of debuff", 70},
				{"kara_17603_05", "Important", "RED RIDING HOOD (20 sec debuff; Player is turned into Little Red Riding Hood and their armor & resistance drops to 0.  Little Red Riding Hood should circle the outside of the room, running away from the Big Bad Wolf", 60},
				{"kara_17603_06", "HEALER", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!", 50},
				{"kara_17603_07", "TANK", "Make sure to keep your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!", 40},
				{"kara_17603_08", "DAMAGE", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!", 30},
				{"kara_17603_09", "Important", "Casts Terrifying Howl (10 yd range; 3 sec AoE Fear)", 20},
				{"kara_17603_10", "WARRIOR", "If feared, can use Berserker Rage to drop fear (will need to be in Berserker Stance first)", 10}}, 
				-- Grandmother (Wolf in Disguise)
	[17521] = {{"kara_17521_01", "Important", "Only 1 tank is needed; best that this is a warrior due to their Berserker Rage during Boss' Fear ability", 100},
				{"kara_17521_02", "TANK", "Tank wolf along one wall medium distance away from rest of raid", 90},
				{"kara_17521_03", "Important", "Ranged DPS and HEALERS should stand a third to a half-stage length from boss on adjacent wall to allow reaction time for RED RIDING HOOD stage", 80},
				{"kara_17521_04", "Important", "Prior to Wolf casting RED RIDING HOOD on a player, boss will briefly target the player that will receive debuff before swapping back to tank and applying RED RIDING HOOD debuff.  This should give player (esp melee) advanced warning of the application of debuff", 70},
				{"kara_17521_05", "Important", "RED RIDING HOOD (20 sec debuff; Player is turned into Little Red Riding Hood and their armor & resistance drops to 0.  Little Red Riding Hood should circle the outside of the room, running away from the Big Bad Wolf", 60},
				{"kara_17521_06", "HEALER", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!", 50},
				{"kara_17521_07", "TANK", "Make sure to keep your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!", 40},
				{"kara_17521_08", "DAMAGE", "Make sure to watch your aggro up on Wolf during RED RIDING HOOD as wolf will go to highest threat player when that phase ends!", 30},
				{"kara_17521_09", "Important", "Casts Terrifying Howl (10 yd range; 3 sec AoE Fear)", 20},
				{"kara_17521_10", "WARRIOR", "If feared, can use Berserker Rage to drop fear (will need to be in Berserker Stance first)", 10}}, 
				-- The Big Bad Wolf
	[17533] = {{"kara_17533_01", "PriorityTargets", "In Phase 3 (fighting both Romulo and Julianne, they MUST die within 10 seconds of each other otherwise they will rez the other to full health. DPS should be aware of this so that targets can be adjusted during this fight!", 140},
				{"kara_17533_02", "Advanced", "PHASE ONE - Fight Julianne", 130},
				{"kara_17533_03", "Important", "It is best to use a Warrior-Tank for Romulo for the Disarms", 120},
				{"kara_17533_04", "Important", "Dispel MAGIC (from MOB): Devotion (50% increase to Physical damage dealt; 50% increase to caster's attack speed)", 110},
				{"kara_17533_05", "MAGE", "Devotion: Dispel magic from MOB with SPELLSTEAL", 100},
				{"kara_17533_06", "PRIEST", "Devotion: Dispel Magic from MOB", 90},
				{"kara_17533_07", "SHAMAN", "Devotion: Dispel Magic from MOB with PURGE", 80},
				{"kara_17533_08", "WARLOCK", "Devotion: Dispel Magic from MOB with DEVOUR MAGIC (Felhunter Pet Only)", 70},
				{"kara_17533_09", "WARRIOR", "Devotion: Dispel magic from MOB with SHIELD SLAM", 60},
				{"kara_17533_10", "TANK", "It is best to have Julianne die in corner away from Romulo to make it easier for tank to pick her up in phase 3", 50},
				{"kara_17533_11", "Advanced", "PHASE TWO - Fight Romulo", 40},
				{"kara_17533_12", "Important", "Romulo should be tanked with his back against wall away from where Julianne died and no players should stand behind Romulo", 30},
				{"kara_17533_13", "Important", "Coordinate with others for Disarming Romulo during DARING", 20},
				{"kara_17533_14", "Advanced", "PHASE THREE - Fight Romulo and Julianne", 15},
				{"kara_17533_15", "Important", "Romulo group is generally ranged/casters due to boss' melee abilities and Julianne group should be mostly melee/interrupters/dispellers", 10}}, 
				-- Romulo
	[17534] = {{"kara_17534_01", "PriorityTargets", "In Phase 3 (fighting both Romulo and Julianne, they MUST die within 10 seconds of each other otherwise they will rez the other to full health. DPS should be aware of this so that targets can be adjusted during this fight!", 140},
				{"kara_17534_02", "Advanced", "PHASE ONE - Fight Julianne", 130},
				{"kara_17534_03", "Important", "It is best to use a Warrior-Tank for Romulo for the Disarms", 120},
				{"kara_17534_04", "Important", "Dispel MAGIC (from MOB): Devotion (50% increase to Physical damage dealt; 50% increase to caster's attack speed)", 110},
				{"kara_17534_05", "MAGE", "Devotion: Dispel magic from MOB with SPELLSTEAL", 100},
				{"kara_17534_06", "PRIEST", "Devotion: Dispel Magic from MOB", 90},
				{"kara_17534_07", "SHAMAN", "Devotion: Dispel Magic from MOB with PURGE", 80},
				{"kara_17534_08", "WARLOCK", "Devotion: Dispel Magic from MOB with DEVOUR MAGIC (Felhunter Pet Only)", 70},
				{"kara_17534_09", "WARRIOR", "Devotion: Dispel magic from MOB with SHIELD SLAM", 60},
				{"kara_17534_10", "TANK", "It is best to have Julianne die in corner away from Romulo to make it easier for tank to pick her up in phase 3", 50},
				{"kara_17534_11", "Advanced", "PHASE TWO - Fight Romulo", 40},
				{"kara_17534_12", "Important", "Romulo should be tanked with his back against wall away from where Julianne died and no players should stand behind Romulo", 30},
				{"kara_17534_13", "Important", "Coordinate with others for Disarming Romulo during DARING", 20},
				{"kara_17534_14", "Advanced", "PHASE THREE - Fight Romulo and Julianne", 15},
				{"kara_17534_15", "Important", "Romulo group is generally ranged/casters due to boss' melee abilities and Julianne group should be mostly melee/interrupters/dispellers", 10}}, 
				-- Julianne
	[17535] = {{"kara_17535_01", "PriorityTargets", "Dorothee can't be tanked/interrupted and should be killed first", 30},
				{"kara_17535_02", "Important", "Attacking Dorothee will start the encounter", 20},
				{"kara_17535_03", "Important", "Casts Frightened Scream (Fears 3 random players for 2 seconds)", 10}}, -- Dorothee
	[17543] = {{"kara_17543_01", "Important", "Use Highest Rank, Non-AoE/DoT Fire spells (or Fire damage Wand) on Strawman to trigger Burning Straw debuff, which will disorient boss for 6 seconds", 40},
				{"kara_17543_02", "TANK", "Roar's Tank should taunt Strawman", 30},
				{"kara_17543_03", "MAGE", "Molten Armor will not trigger Burning Straw debuff", 20},
				{"kara_17543_04", "WARLOCK", "Immolate is considered a DoT and will not trigger Burning Straw debuff", 10}}, -- Strawman
	[17546] = {{"kara_17546_01", "Important", "Susceptible to Fear, Death Coil and Scare Beast (but NOT Hibernate). A warlock and tank should be able to control him", 20},
				{"kara_17546_02", "Important", "Casts an AoE Fear", 10}}, -- Roar
	[17547] = {{"kara_17547_01", "Important", "Due to high amount of damage, main-tank should be on this target", 20},
				{"kara_17547_02", "Important", "As encounter continues, mob develops rust slowing him down and allowing him to be kited", 10}}, -- Tinhead
	[17548] = {{"kara_17548_01", "PriorityTargets", "Should be killed AFTER Dorothee as killing Tito first will cause Dorothee to ENRAGE", 30},
				{"kara_17548_02", "Important", "Tank should be assigned to Tito", 20},
				{"kara_17548_03", "Important", "Interrupts/Silences casters", 10}}, -- Tito
	[18168] = {{"kara_18168_01", "Legion", "Appears when Dorothee, Roar, Strawman and Tinhead are defeated", 50},
				{"kara_18168_02", "Important", "Main-Tank should pick up boss immediately!", 40},
				{"kara_18168_03", "Important", "Assign a raid member to call out cyclones", 30},
				{"kara_18168_04", "Important", "Summons Cyclones that move around and across the center of the stage; Cyclones will knock raid members into the air. Players will then fall to the ground, so a slow fall can be helpful here", 20},
				{"kara_18168_05", "HEALER", "Priority Heals to cycloned players due to their incoming fall damage", 10}}, -- The Crone

	---Chess Event
	[16816] = {{"kara_16816_01", "Legion", "Healing Cheat (Heals Medivh's king and possibly other pieces to full HP)", 60},
				{"kara_16816_02", "Legion", "Damage Cheat (Places fire AoE on random player controlled piece)", 50},
				{"kara_16816_03", "Legion", "Berserking Cheat (One of Medivh's pieces gains increased size, speed and damage)", 40},
				{"kara_16816_04", "Important", "Players should choose which piece they want to control and first control the pawn that is blocking that piece from moving before switching to real piece", 30},
				{"kara_16816_05", "Advanced", "Strategy: King should keep HERO/LUST up if allies in one of eight of the adjacent squares. Pawns should only be used to move the good pieces out of the way. Bishops are the only pieces that heal", 20},
				{"kara_16816_06", "PriorityTargets", "Kill Priority: 1) King, 2) Bishop, 3) Queen, 4) Rook, 5) Knight, 6) Pawn", 10}}, 
				-- Echo of Medivh
	[17211] = {{"kara_17211_01", "Legion", "Pawn-Type; Moves 1 space any direction", 60},
				{"kara_17211_02", "PriorityTargets", "Lowest Priority", 50},
				{"kara_17211_03", "Legion", "Low Health/Low Damage", 40},
				{"kara_17211_04", "Advanced", "Strategy: As this is a weak unit, it should only be used to move piece out of way of other piece. These pieces will autoengage enemies in range if a player is not controlling them", 30},
				{"kara_17211_05", "Important", "Heroic Blow (Deals 1k damage to target 1 square in front)", 20},
				{"kara_17211_06", "Important", "Shield Block (Absorbs 500 damage; Lasts 5 seconds) - Should not be used", 10}}, 
				-- Human Footman
	[17469] = {{"kara_17469_01", "Legion", "Pawn-Type; Moves 1 space any direction", 60},
				{"kara_17469_02", "PriorityTargets", "Lowest Priority", 50},
				{"kara_17469_03", "Legion", "Low Health/Low Damage", 40},
				{"kara_17469_04", "Advanced", "Strategy: As this is a weak unit, it should only be used to move piece out of way of other piece. These pieces will autoengage enemies in range if a player is not controlling them", 30},
				{"kara_17469_05", "Important", "Vicious Strike (Deals 1k damage to target 1 square in front)", 20},
				{"kara_17469_06", "Important", "Weapon Deflection (Absorbs 500 damage; Lasts 5 seconds) - Should not be used", 10}}, 
				-- Orc Grunt
	[21160] = {{"kara_21160_01", "Legion", "Rook-Type; Moves 1 space any direction", 50},
				{"kara_21160_02", "PriorityTargets", "4th - due to medium ranged damage", 40},
				{"kara_21160_03", "Legion", "Low Health/Medium Damage", 30},
				{"kara_21160_04", "Important", "Geyser (Deals 3k damage to all adjacent hostile pieces)", 20},
				{"kara_21160_05", "Important", "Water Shield (Reduce damage taken by 50% for 5 seconds)", 10}}, -- Conjured Water Elemental
	[21664] = {{"kara_21664_01", "Legion", "Knight-Type; Moves in L-shaped direction", 50},
				{"kara_21664_02", "PriorityTargets", "5th - due to low melee/ranged damage", 40},
				{"kara_21664_03", "Legion", "Medium Health/Low Damage", 30},
				{"kara_21664_04", "Important", "Smash (Deals 3k damage to target 1 square in front)", 20},
				{"kara_21664_05", "Important", "Stomp (Deals 2k damage to enemy units standing in a straight line of 3 squares in front)", 10}}, 
				-- Human Charger
	[21682] = {{"kara_21682_01", "Legion", "Bishop-Type (Only healing piece available)", 40},
				{"kara_21682_02", "PriorityTargets", "2nd - only piece that can heal their king/other pieces", 30},
				{"kara_21682_03", "Legion", "Low Health/Low Damage", 20},
				{"kara_21682_04", "Important", "This piece should move very little (staying out of fire) and focusing on keeping King/Queen alive", 10}}, 
				-- Human Cleric
	[21683] = {{"kara_21683_01", "Legion", "Queen-Type; Moves 3 straight/2 diagonal", 60},
				{"kara_21683_02", "PriorityTargets", "3rd - deals high single target/AoE Damage", 50},
				{"kara_21683_03", "Legion", "Medium Health/High Damage", 40},
				{"kara_21683_04", "Advanced", "Strategy: Use Rain of Fire on CD focusing on center of packs you want to destroy; Use Elemental Blast on your main target (see priority) as a filler", 30},
				{"kara_21683_05", "Important", "Elemental Blast (Deals 4k damage to single chess piece; Range: 4 straight/3 diagnonal)", 20},
				{"kara_21683_06", "Important", "Rain of Fire (Deals 6k damage to any any hostile piece and all adjacent hostile pieces; 15 sec CD; Range: 4 straight/3 diagonal)", 10}}, 
				-- Human Conjurer
	[21684] = {{"kara_21684_01", "Legion", "Start the fight by speaking to the king - the king you speak with will open up that side's pieces for your team to use", 60},
				{"kara_21684_02", "PriorityTargets", "1st - first enemy king to die loses", 50},
				{"kara_21684_03", "Legion", "High Health/High Damage", 40},
				{"kara_21684_04", "Advanced", "Strategy: Use Sweep when 1-3 units in front of king exist. Keep Heroism up IF allied players in at least one of the eight adjacent squares", 30},
				{"kara_21684_05", "Important", "Sweep (Deals 4k damage to 3 frontal adjacent units)", 20},
				{"kara_21684_06", "Important", "Heroism (50% inc damage on other allies on all 8 adjacent spaces", 10}}, 
				-- King Llane
	[21726] = {{"kara_21726_01", "Legion", "Rook-Type; Moves 1 space any direction", 50},
				{"kara_21726_02", "PriorityTargets", "4th - due to medium ranged damage", 40},
				{"kara_21726_03", "Legion", "Low Health/Medium Damage", 30},
				{"kara_21726_04", "Important", "Hellfire (Deals 3k damage to all adjacent hostile pieces)", 20},
				{"kara_21726_05", "Important", "Fire Shield (Reduce damage taken by 50% for 5 seconds)", 10}}, -- Summoned Daemon
	[21747] = {{"kara_21747_01", "Legion", "Bishop-Type (Only healing piece available)", 40},
				{"kara_21747_02", "PriorityTargets", "2nd - only piece that can heal their king/other pieces", 30},
				{"kara_21747_03", "Legion", "Low Health/Low Damage", 20},
				{"kara_21747_04", "Important", "This piece should move very little (staying out of fire) and focusing on keeping King/Queen alive", 10}}, 
				-- Orc Necrolyte
	[21748] = {{"kara_21748_01", "Legion", "Knight-Type; Moves in L-shaped direction", 50},
				{"kara_21748_02", "PriorityTargets", "5th - due to low melee/ranged damage", 40},
				{"kara_21748_03", "Legion", "Medium Health/Low Damage", 30},
				{"kara_21748_04", "Important", "Bite (Deals 3k damage to target 1 square in front)", 20},
				{"kara_21748_05", "Important", "Howl (Deals 2k damage to enemy units standing in a straight line of 3 squares in front)", 10}}, 
				-- Orc Wolf
	[21750] = {{"kara_21750_01", "Legion", "Queen-Type; Moves 3 straight/2 diagonal", 50},
				{"kara_21750_02", "PriorityTargets", "3rd - deals high single target/AoE Damage", 40},
				{"kara_21750_03", "Advanced", "Strategy: Use Poison Cloud on CD focusing on center of packs you want to destroy; Use Fireball on your main target (see priority) as a filler", 30},
				{"kara_21750_04", "Important", "Fireball (Deals 4k damage to single chess piece; Range: 4 straight/3 diagnonal)", 20},
				{"kara_21750_05", "Important", "Poison Cloud (Deals 6k damage to any any hostile piece and all adjacent hostile pieces; 15 sec CD; Range: 4 straight/3 diagonal)", 10}}, 
				-- Orc Warlock
	[21752] = {{"kara_21752_01", "Legion", "Start the fight by speaking to the king - the king you speak with will open up that side's pieces for your team to use", 60},
				{"kara_21752_02", "PriorityTargets", "1st - first enemy king to die loses", 50},
				{"kara_21752_03", "Legion", "High Health/High Damage", 40},
				{"kara_21752_04", "Advanced", "Strategy: Use Cleave when 1-3 units in front of king exist. Keep Bloodlust up IF allied players in at least one of the eight adjacent squares", 30},
				{"kara_21752_05", "Important", "Cleave (Deals 4k damage to 3 frontal adjacent units)", 20},
				{"kara_21752_06", "Important", "Bloodlust (50% inc damage on other allies on all 8 adjacent spaces", 10}}, 
				-- Warchief Blackhand

	---Trash Mobs
	[15547] = {{"kara_15547_01", "Important", "Charges furthest player & casts Fear (4 sec AoE Fear; Should be pulled away from packs that raid is not yet in combat with)", 10}}, -- Spectral Charger
	[15548] = {{"kara_15548_01", "Legion", "", 10}}, -- Spectral Stallion
	[15551] = {{"kara_15551_01", "PriorityTargets", "", 20},
				{"kara_15551_02", "Interrupts", "Interrupt: Mend Pet (Heals Spectral Chargers & Stallions)", 10}}, -- Spectral Stable Hand
	[16170] = {{"kara_16170_01", "Legion", "Stealthed Mob", 10}}, -- Coldmist Stalker
	[16171] = {{"kara_16171_01", "Legion", "Except for patrols, this mob will be accompanied by 2 stealthed Coldmist Stalkers", 10}}, -- Coldmist Widow
	[16173] = {{"kara_16173_01", "Important", "Casts AoE Spell Interrupt/Spell Lock", 20},
				{"kara_16173_02", "TANK", "Due to AoE Spell Interrupt, keep mob away from casters", 10}}, -- Shadowbat
	[16174] = {{"kara_16174_01", "Legion", "", 10}}, -- Greater Shadowbat
	[16175] = {{"kara_16175_01", "Legion", "", 10}}, -- Vampiric Shadowbat
	[16176] = {{"kara_16176_01", "Important", "Casts Howl of the Broken Hills (10 yd range; 5 min curse draining mana, energy rage)", 10}}, -- Shadowbeast
	[16177] = {{"kara_16177_01", "Important", "Mob casts Cleave - only tank should be standing in front of mob!", 10}}, -- Dreadbeast
	[16178] = {{"kara_16178_01", "Important", "Phasing (Similar ability as Warp Stalker, can keep mob visible with Hunter's Mark)", 10}}, -- Phase Hound
	[16389] = {{"kara_16389_01", "Legion", "Weak melee mob", 10}}, -- Spectral Apprentice
	[16406] = {{"kara_16406_01", "Important", "Due to their healing ability and coming with packs of Spectral Retainers, CC is a must for these mobs", 10}}, -- Phantom Attendant
	[16407] = {{"kara_16407_01", "Legion", "Weak melee attack", 20},
				{"kara_16407_02", "Important", "Casts Curse of Past Burdens (Reduces movement speed and strength by 70%)", 10}}, -- Spectral Servant
	[16408] = {{"kara_16408_01", "Legion", "Mobs are immune to taunt and deal high melee DPS", 20},
				{"kara_16408_02", "Important", "Casts Demoralizing Shout (Reduces nearby player attack power)", 10}}, -- Phantom Valet
	[16409] = {{"kara_16409_01", "TANK", "Pull this mob with nearby group and use an AoE Taunt such Consecration or Thunder Clap", 20},
				{"kara_16409_02", "Important", "AoE this mob and it's group down AFTER tank has picked up aggro on all engaged enemies to avoid many raid members taking damage", 10}}, -- Phantom Guest
	[16410] = {{"kara_16410_01", "Important", "Casts a non dispellable Mind Control (Player that gets MC'd should be sheeped)", 20},
				{"kara_16410_02", "Important", "IMMUNE to Shackle!", 10}}, -- Spectral Retainer
	[16411] = {{"kara_16411_01", "Legion", "", 10}}, -- Spectral Chef
	[16412] = {{"kara_16412_01", "Important", "Inflicts fire damage +2 sec knockdown", 10}}, -- Ghostly Baker
	[16414] = {{"kara_16414_01", "Important", "Applies Drunken Skull Crack (40 yd range; 4 sec stun)", 30},
				{"kara_16414_02", "Important", "Usually in packs of two that should be pulled separate from other mobs by main-tank and off-tank", 20},
				{"kara_16414_03", "HEALER", "Target hit by Drunken Skull Crack will take high damage while debuff is active", 10}}, -- Ghostly Steward
	[16415] = {{"kara_16415_01", "Legion", "Tanks should mark these targets so as to pull them individually", 20},
				{"kara_16415_02", "Important", "Casts Brittle Bones on player (2 min debuff periodically removing all armor of one with debuff). Brittle Bones can only be removed by Paladin's Divine Shield, or ability absorbed with Shaman's Grounding Totem", 10}}, -- Skeletal Waiter
	[16424] = {{"kara_16424_01", "Legion", "Ranged Mob vulnerable to Shackle", 10}}, -- Spectral Sentry
	[16425] = {{"kara_16425_01", "Legion", "Can be shackled/stunned", 20},
				{"kara_16425_02", "Important", "Shield Slam (Stuns player for 3 sec)", 10}}, -- Phantom Guardsman
	[16459] = {{"kara_16459_01", "Important", "Alluring Aura (pre-tranform; reduces physical damage taken by 50%)", 40},
				{"kara_16459_02", "Important", "Wipes debuffs at 50% when transforms into true form", 30},
				{"kara_16459_03", "Important", "Bewitching Aura (post-transform; reduces magic damage taken by 50%)", 20},
				{"kara_16459_04", "Important", "Banshee Wail (Short range AoE silence that is used when transformed)", 10}}, -- Wanton Hostess
	[16460] = {{"kara_16460_01", "PriorityTargets", "", 40},
				{"kara_16460_02", "WARLOCK", "Immune to Curse of Tongues", 30},
				{"kara_16460_03", "Important", "Casts Impending Betrayal (Deals 3k damage after 10 sec)", 20},
				{"kara_16460_04", "Important", "Wipes debuffs at 50% when transforms into true form", 10}}, -- Night Mistress
	[16461] = {{"kara_16461_01", "Important", "AoE Seduce (Lasts 6 sec; OT should stand away from this mob and pickup when MT is seduced)", 20},
				{"kara_16461_02", "Important", "Wipes debuffs at 50% when transforms into true form", 10}}, -- Concubine
	[16468] = {{"kara_16468_01", "Legion", "", 10}}, -- Spectral Patron
	[16470] = {{"kara_16470_01", "Important", "Immune to taunt/CC; Careful with use of AoE as this can result to pulling additional groups!", 10}}, -- Ghostly Philanthropist
	[16471] = {{"kara_16471_01", "Legion", "Immune to taunt, turn undead, freeze trap, stuns and cyclone; Vulnerable to shackle", 30},
				{"kara_16471_02", "Important", "When these mobs are in pairs, one should be shackled", 20},
				{"kara_16471_03", "TANK", "Warrior should be MT and should cast Spell Reflect after receiving Frost Shock in order to spell reflect the stun part of the spell back to mob", 10}}, -- Skeletal Usher
	[16472] = {{"kara_16472_01", "Important", "Immune to snare, shackle and stuns", 20},
				{"kara_16472_02", "Important", "Should be disarmed by warrior/rogue", 10}}, -- Phantom Stagehand
	[16473] = {{"kara_16473_01", "TANK", "Pull mob out of Spotlight as this will increase damage done by the one standing in spotlight", 30},
				{"kara_16473_02", "Important", "Immune to freezing trap and shackle", 20},
				{"kara_16473_03", "DAMAGE", "Stand in Spotlight to receive a damage boost", 10}}, -- Spectral Performer
	[16481] = {{"kara_16481_01", "Legion", "", 10}}, -- Ghastly Haunt
	[16482] = {{"kara_16482_01", "Legion", "Immune to Shackle & Stun", 10}}, -- Trapped Soul
	[16485] = {{"kara_16485_01", "Important", "When these mobs come in packs, don't split DPS - fight them one at a time", 20},
				{"kara_16485_02", "Important", "Player that receives Overload (Arcane debuff dealing increased AoE damage per tick) should run away from raid members", 10}}, -- Arcane Watchman
	[16488] = {{"kara_16488_01", "PriorityTargets", "Upon death Loose Mana will restore player mana", 20},
				{"kara_16488_02", "Important", "DPS mob through it's mana shield and mob will die when it runs out of mana", 10}}, -- Arcane Anomaly
	[16489] = {{"kara_16489_01", "Advanced", "Strategy: Range pull nearby Mana-Feeders and have tank pull Chaotic Sentience away from raid members", 30},
				{"kara_16489_02", "Important", "Applies Unstable Magic debuff to players (Increased spell damage done by 300 and spell damage taken by 600; Lasts 2 minutes)", 20},
				{"kara_16489_03", "Important", "Immune to banish and stuns", 10}}, -- Chaotic Sentience
	[16491] = {{"kara_16491_01", "Important", "Mobs are immune to most magic effects, including wands; use Physical damage attacks (even casters)", 10}}, -- Mana Feeder
	[16492] = {{"kara_16492_01", "Important", "Casts Drain Mana (Channeled ability) - Best to defeat nearby Arcane Anomaly as Loose Mana will restore player mana upon its death helping with defeating this mob", 10}}, -- Syphoner
	[16504] = {{"kara_16504_01", "TANK", "Kite mob during Fist of Stone (Hard/Slow hitting ability: +35% melee damage, -75% movement speed on Arcane Protector, -35% attack speed)", 50},
				{"kara_16504_02", "Important", "During Return Fire deals an arcane ability depending upon what it announces:", 40},
				{"kara_16504_03", "Legion", "EL-2S (Retaliates against spells)", 30},
				{"kara_16504_04", "Legion", "EL-5R (Retaliates against ranged projectiles)", 20},
				{"kara_16504_05", "Legion", "EL-7M (Retaliates against melee)", 10}}, -- Arcane Protector
	[16525] = {{"kara_16525_01", "Legion", "Mob phases in and out. Use Detect Invisibility or Elixir of Detect Lesser Invisibility to continue to see this mob", 20},
				{"kara_16525_02", "Important", "Vulnerable to Curse of Tongues, Shackle Undead, and Turn Undead", 10}}, -- Spell Shade
	[16526] = {{"kara_16526_01", "Important", "Burn these mobs first; the volleys have a 20 yd range", 20},
				{"kara_16526_02", "Important", "Immune to Shackle Undead & Curse of Tongues", 10}}, -- Sorcerous Shade
	[16529] = {{"kara_16529_01", "PriorityTargets", "Focus on this mob before Mana Warps due to its Arcane Volley AoE ability", 20},
				{"kara_16529_02", "Important", "Immune to Banish", 10}}, -- Magical Horror
	[16530] = {{"kara_16530_01", "Important", "Mobs cast Warp Breach growing and dealing Arcane AoE damage when near death. These mobs should be Feared/Stunned at approx 8-15% health to avoid Arcane AoE", 10}}, -- Mana Warp
	[16539] = {{"kara_16539_01", "Legion", "Vulnerable to Enslave Demon and Banish", 10}}, -- Homunculus
	[16540] = {{"kara_16540_01", "Legion", "Immune to all forms of Crown Control", 10}}, -- Shadow Pillager
	[16544] = {{"kara_16544_01", "Important", "Make sure that MT and OT are #1 and #2 on the threat meter as they are immune to taunt and can deal large damage to non-tank players", 20},
				{"kara_16544_02", "Important", "Mob will disarm highest aggro target and lowering that player's aggro on mob", 10}}, -- Ethereal Thief
	[16545] = {{"kara_16545_01", "PriorityTargets", "Stacking debuff on raid of 3% less intel/spirit per stack (Stacks up to 15)", 30},
				{"kara_16545_02", "Important", "Casts Transference (Magic debuff that transfers heals from one player onto mob)", 20},
				{"kara_16545_03", "Important", "Arcane Volley (Multi-target Arcane spell hitting at 2k per hit)", 10}}, -- Ethereal Spellfilcher
	[16595] = {{"kara_16595_01", "Important", "Immune to all forms of CC", 20},
				{"kara_16595_02", "Important", "Frontal Cleave (Avoid standing in front of mob unless you're its tank). If multiple mobs, each one should have its own tank and should be separated slightly to avoid double cleaves", 10}}, -- Fleshbeast
	[16596] = {{"kara_16596_01", "Important", "Gaping Maw (AoE Bleed effect to players in melee range)", 20},
				{"kara_16596_02", "Important", "Infectious Poison (10 yd range; AoE Nature DoT)", 10}}, -- Greater Fleshbeast
	[17067] = {{"kara_17067_01", "Legion", "Summoned by Phantom Guardsman", 20},
				{"kara_17067_02", "Important", "Applies Rend (Bleed) - these mobs can be OT or burned down with DoTs", 10}}, -- Phantom Hound
	[17096] = {{"kara_17096_01", "PriorityTargets", "Spawns every 10 seconds", 10}}, -- Astral Flare
	[17167] = {{"kara_17167_01", "PriorityTargets", "Last for 90 sec being despawning. Frost Resist gear helpful.", 30},
				{"kara_17167_02", "Important", "Immune to frost damage", 20},
				{"kara_17167_03", "WARLOCK", "Vulnerable to Fear/Banish", 10}}, -- Conjured Elemental
	[17229] = {{"kara_17229_01", "PriorityTargets", "Respawns every ~45 seconds", 30},
				{"kara_17229_02", "Important", "After mob dies it places debuff on Terestian Illhoof which increases damage boss takes from players", 20},
				{"kara_17229_03", "PALADIN", "Immune to Turn Evil", 10}}, -- Kil'rek
	[17248] = {{"kara_17248_01", "PriorityTargets", "Appears on raid member during Terestian Illhoof fight; Destroy these ASAP!", 10}}, -- Demon Chains
	[17261] = {{"kara_17261_01", "Legion", "", 10}}, -- Restless Skeleton
	[17267] = {{"kara_17267_01", "Legion", "", 10}}, -- Fiendish Imp
	[17283] = {{"kara_17283_01", "Legion", "", 10}}, -- Astral Spark


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
	[18831] = {{"gruul_18831_01", "PriorityTargets", "Blindeye should be killed early to reduce incoming healing on the council.", 40},
				{"gruul_18831_02", "Important", "At 50% health, Maulgar will charge random players. Stay spread and be ready for extra raid damage.", 30},
				{"gruul_18831_03", "TANK", "Keep Maulgar faced away from players because of Whirlwind and Arcing Smash.", 20},
				{"gruul_18831_04", "Defensives", "After 50%, Maulgar's phase becomes much more dangerous with charge and fear pressure. Tanks and healers need CDs ready.", 10}}, -- High King Maulgar <Lord of the Ogres>
	[18832] = {{"gruul_18832_01", "PriorityTargets", "Assign a dedicated tank and interrupter plan for Krosh.", 30},
				{"gruul_18832_02", "Important", "Spellsteal or otherwise manage Krosh's Spell Shield so his fire damage stays controllable.", 20},
				{"gruul_18832_03", "Dodge", "Stay out of Blast Wave range and avoid unnecessary fire damage around Krosh.", 10}}, -- Krosh Firehand
	[18834] = {{"gruul_18834_01", "PriorityTargets", "Olm summons felhounds during the fight. Be ready to pick them up or burn them quickly.", 30},
				{"gruul_18834_02", "WARLOCK", "Warlocks can help control Olm's felhounds with Banish or Enslave Demon.", 20},
				{"gruul_18834_03", "Important", "Watch for Dark Decay and avoid standing in avoidable shadow damage.", 10}}, -- Olm the Summoner
	[18847] = {{"gruul_18847_01", "PriorityTargets", "This pet should be controlled or killed quickly so it does not pressure healers and casters.", 20},
				{"gruul_18847_02", "Important", "Keep the Fel Stalker away from fragile players whenever possible.", 10}}, -- Wild Fel Stalker
	[18835] = {{"gruul_18835_01", "Important", "Kiggler repeatedly polymorphs and knocks back his target, so ranged tanking is often safer here.", 30},
				{"gruul_18835_02", "Dodge", "Respect Arcane Explosion range and spread to reduce splash pressure.", 20},
				{"gruul_18835_03", "PriorityTargets", "Keep Kiggler controlled and stable so the rest of the council kill order stays clean.", 10}}, -- Kiggler the Crazed
	[18836] = {{"gruul_18836_01", "PriorityTargets", "Blindeye is the healer of the council and should usually die first or very early.", 30},
				{"gruul_18836_02", "Interrupts", "Interrupt: Heal.", 20},
				{"gruul_18836_03", "Important", "Be ready for his shielded healing window and coordinate kicks or burst damage.", 10}}, -- Blindeye the Seer

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
	[18829] = {{"magtheridon_18829_01", "Interrupts", "Assign interrupters on each of the Warders per pull to interrupt Shadow Bolt Volley (Shadow Damage hitting nearby players)", 40},
				{"magtheridon_18829_02", "TANK", "When mob casts Shadow Burst, it will knockback nearby players and reset threat. Be ready with your taunt for when this goes off", 30},
				{"magtheridon_18829_03", "Important", "Do NOT Dispel Unstable Affliction as it will direct some damage to the dispeler and silence them for 5 seconds!", 20},
				{"magtheridon_18829_04", "Dodge", "DODGE: Rain of Fire (AoE Fire Damage)", 10}}, -- Hellfire Warder


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
					{"bloodfurnace_17491_03", "Important", "Dispel Poison from player (Nature DoT over 15 sec)", 20},
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
	[18371] = {{"auchenai_18371_01", "TANK", "Tank the boss away from ranged DPS/Healers", 50},
				{"auchenai_18371_02", "Important", "Casters should stand at max range due to Inhibit Magic (passive aura that slows casting speed the closer you get to boss", 40},
				{"auchenai_18371_03", "Dodge", "Watch for emote of 'Shirrak the Dead Watchers focuses on...' Players (including the player name the boss emotes) need to run away as boss will begin to shoot fire damage at the flare location", 30},
				{"auchenai_18371_04", "Important", "Group should burn boss down quickly before Carnivorous Bite bleed stacks get too high on tank", 20},
				{"auchenai_18371_05", "Important", "Run away from boss during Attract Magic (Boss will pull party members to it)", 10}}, 
				-- Shirrak the Dead Watcher
	[18373] = {{"auchenai_18373_01", "Important", "Save CDs for when boss is at 25% health due to increased damage dealt", 40},
				{"auchenai_18373_02", "Important", "Boss deals an AoE Fear called Soul Scream", 30},
				{"auchenai_18373_03", "SHAMAN", "Drop Tremor Totem to negate boss' AoE fear", 20},
				{"auchenai_18373_04", "Important", "Focus down any shadow images that appear and tank should pickup Avatar of the Martyred when he spawns", 10}}, 
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

-- Explicit German placeholder copies for untranslated shipped entries.
tipsMap_deDE[126389] = {{"example_126389_01", "Blank", "A+ Tip right here. \n It's a shame it's so damn long eh? It just goes on and on and on and ooon", 20},
				{"example_126389_02", "Interrupts", "INTERRUPT: Stone Bolt", 10}}
tipsMap_deDE[99999] = {{"example_99999_01", "Important", "PlaceholderImportant", 30}, {"example_99999_02", "Important", "PlaceholderImportant", 20},
				{"example_99999_03", "Advanced", "PlaceholderAdvanced", 10}}
tipsMap_deDE[17711] = {{"worldboss_17711_01", "Legion", "", 10}}
tipsMap_deDE[18728] = {{"worldboss_18728_01", "Legion", "", 10}}
tipsMap_deDE[23863] = {{"zulaman_23863_01", "Important", "", 10}}
tipsMap_deDE[24239] = {{"zulaman_24239_01", "Important", "", 10}}
tipsMap_deDE[23574] = {{"zulaman_23574_01", "Important", "", 10}}
tipsMap_deDE[23576] = {{"zulaman_23576_01", "Important", "", 10}}
tipsMap_deDE[23577] = {{"zulaman_23577_01", "Important", "", 10}}
tipsMap_deDE[23578] = {{"zulaman_23578_01", "Important", "", 10}}
tipsMap_deDE[23542] = {{"zulaman_23542_01", "Important", "", 10}}
tipsMap_deDE[23580] = {{"zulaman_23580_01", "Important", "", 10}}
tipsMap_deDE[23581] = {{"zulaman_23581_01", "Important", "", 10}}
tipsMap_deDE[23582] = {{"zulaman_23582_01", "Important", "", 10}}
tipsMap_deDE[23584] = {{"zulaman_23584_01", "Important", "", 10}}
tipsMap_deDE[23586] = {{"zulaman_23586_01", "Important", "", 10}}
tipsMap_deDE[23596] = {{"zulaman_23596_01", "Important", "", 10}}
tipsMap_deDE[23597] = {{"zulaman_23597_01", "Important", "", 10}}
tipsMap_deDE[23774] = {{"zulaman_23774_01", "Important", "", 10}}
tipsMap_deDE[23834] = {{"zulaman_23834_01", "Important", "", 10}}
tipsMap_deDE[23889] = {{"zulaman_23889_01", "Important", "", 10}}
tipsMap_deDE[24043] = {{"zulaman_24043_01", "Important", "", 10}}
tipsMap_deDE[24047] = {{"zulaman_24047_01", "Important", "", 10}}
tipsMap_deDE[24059] = {{"zulaman_24059_01", "Important", "", 10}}
tipsMap_deDE[24064] = {{"zulaman_24064_01", "Important", "", 10}}
tipsMap_deDE[24065] = {{"zulaman_24065_01", "Important", "", 10}}
tipsMap_deDE[24138] = {{"zulaman_24138_01", "Important", "", 10}}
tipsMap_deDE[24175] = {{"zulaman_24175_01", "Legion", "", 10}}
tipsMap_deDE[24179] = {{"zulaman_24179_01", "Important", "", 10}}
tipsMap_deDE[24180] = {{"zulaman_24180_01", "Important", "", 10}}
tipsMap_deDE[24217] = {{"zulaman_24217_01", "Important", "", 10}}
tipsMap_deDE[24374] = {{"zulaman_24374_01", "Important", "", 10}}
tipsMap_deDE[24530] = {{"zulaman_24530_01", "Important", "", 10}}
tipsMap_deDE[24549] = {{"zulaman_24549_01", "Important", "", 10}}
tipsMap_deDE[21216] = {{"ssc_21216_01", "Important", "", 10}}
tipsMap_deDE[21217] = {{"ssc_21217_01", "Important", "", 10}}
tipsMap_deDE[21215] = {{"ssc_21215_01", "Important", "", 10}}
tipsMap_deDE[21214] = {{"ssc_21214_01", "Important", "", 10}}
tipsMap_deDE[21213] = {{"ssc_21213_01", "Important", "", 10}}
tipsMap_deDE[21212] = {{"ssc_21212_01", "Important", "", 10}}
tipsMap_deDE[21964] = {{"ssc_21964_01", "Important", "", 10}}
tipsMap_deDE[21965] = {{"ssc_21965_01", "Important", "", 10}}
tipsMap_deDE[21966] = {{"ssc_21966_01", "Important", "", 10}}
tipsMap_deDE[21218] = {{"ssc_21218_01", "Important", "", 10}}
tipsMap_deDE[21220] = {{"ssc_21220_01", "Important", "", 10}}
tipsMap_deDE[21221] = {{"ssc_21221_01", "Important", "", 10}}
tipsMap_deDE[21224] = {{"ssc_21224_01", "Important", "", 10}}
tipsMap_deDE[21225] = {{"ssc_21225_01", "Important", "", 10}}
tipsMap_deDE[21226] = {{"ssc_21226_01", "Important", "", 10}}
tipsMap_deDE[21227] = {{"ssc_21227_01", "Important", "", 10}}
tipsMap_deDE[21228] = {{"ssc_21228_01", "Important", "", 10}}
tipsMap_deDE[21229] = {{"ssc_21229_01", "Important", "", 10}}
tipsMap_deDE[21230] = {{"ssc_21230_01", "Important", "", 10}}
tipsMap_deDE[21231] = {{"ssc_21231_01", "Important", "", 10}}
tipsMap_deDE[21232] = {{"ssc_21232_01", "Important", "", 10}}
tipsMap_deDE[21246] = {{"ssc_21246_01", "Important", "", 10}}
tipsMap_deDE[21251] = {{"ssc_21251_01", "Important", "", 10}}
tipsMap_deDE[21253] = {{"ssc_21253_01", "Important", "", 10}}
tipsMap_deDE[21263] = {{"ssc_21263_01", "Important", "", 10}}
tipsMap_deDE[21298] = {{"ssc_21298_01", "Important", "", 10}}
tipsMap_deDE[21299] = {{"ssc_21299_01", "Important", "", 10}}
tipsMap_deDE[21301] = {{"ssc_21301_01", "Important", "", 10}}
tipsMap_deDE[21339] = {{"ssc_21339_01", "Important", "", 10}}
tipsMap_deDE[21508] = {{"ssc_21508_01", "Important", "", 10}}
tipsMap_deDE[21806] = {{"ssc_21806_01", "Important", "", 10}}
tipsMap_deDE[21857] = {{"ssc_21857_01", "Legion", "", 10}}
tipsMap_deDE[21863] = {{"ssc_21863_01", "Important", "", 10}}
tipsMap_deDE[21865] = {{"ssc_21865_01", "Important", "", 10}}
tipsMap_deDE[21873] = {{"ssc_21873_01", "Important", "", 10}}
tipsMap_deDE[21875] = {{"ssc_21875_01", "Important", "", 10}}
tipsMap_deDE[21920] = {{"ssc_21920_01", "Important", "", 10}}
tipsMap_deDE[21958] = {{"ssc_21958_01", "Important", "", 10}}
tipsMap_deDE[22009] = {{"ssc_22009_01", "Important", "", 10}}
tipsMap_deDE[22035] = {{"ssc_22035_01", "Important", "", 10}}
tipsMap_deDE[22036] = {{"ssc_22036_01", "Important", "", 10}}
tipsMap_deDE[22055] = {{"ssc_22055_01", "Important", "", 10}}
tipsMap_deDE[22056] = {{"ssc_22056_01", "Important", "", 10}}
tipsMap_deDE[22119] = {{"ssc_22119_01", "Important", "", 10}}
tipsMap_deDE[22120] = {{"ssc_22120_01", "Important", "", 10}}
tipsMap_deDE[22238] = {{"ssc_22238_01", "Important", "", 10}}
tipsMap_deDE[22250] = {{"ssc_22250_01", "Important", "", 10}}
tipsMap_deDE[22347] = {{"ssc_22347_01", "Important", "", 10}}
tipsMap_deDE[22352] = {{"ssc_22352_01", "Important", "", 10}}
tipsMap_deDE[22820] = {{"ssc_22820_01", "Legion", "", 10}}
tipsMap_deDE[19516] = {{"the_eye_19516_01", "Important", "", 10}}
tipsMap_deDE[19514] = {{"the_eye_19514_01", "Important", "", 10}}
tipsMap_deDE[18805] = {{"the_eye_18805_01", "Important", "", 10}}
tipsMap_deDE[19622] = {{"the_eye_19622_01", "Important", "", 10}}
tipsMap_deDE[20060] = {{"the_eye_20060_01", "Important", "", 10}}
tipsMap_deDE[20062] = {{"the_eye_20062_01", "Important", "", 10}}
tipsMap_deDE[20063] = {{"the_eye_20063_01", "Important", "", 10}}
tipsMap_deDE[20064] = {{"the_eye_20064_01", "Important", "", 10}}
tipsMap_deDE[21268] = {{"the_eye_21268_01", "Important", "", 10}}
tipsMap_deDE[21269] = {{"the_eye_21269_01", "Important", "", 10}}
tipsMap_deDE[21270] = {{"the_eye_21270_01", "Important", "", 10}}
tipsMap_deDE[21271] = {{"the_eye_21271_01", "Important", "", 10}}
tipsMap_deDE[21272] = {{"the_eye_21272_01", "Important", "", 10}}
tipsMap_deDE[21273] = {{"the_eye_21273_01", "Important", "", 10}}
tipsMap_deDE[21274] = {{"the_eye_21274_01", "Important", "", 10}}
tipsMap_deDE[18806] = {{"the_eye_18806_01", "Important", "", 10}}
tipsMap_deDE[18925] = {{"the_eye_18925_01", "Important", "", 10}}
tipsMap_deDE[19551] = {{"the_eye_19551_01", "Important", "", 10}}
tipsMap_deDE[20031] = {{"the_eye_20031_01", "Important", "", 10}}
tipsMap_deDE[20032] = {{"the_eye_20032_01", "Important", "", 10}}
tipsMap_deDE[20033] = {{"the_eye_20033_01", "Important", "", 10}}
tipsMap_deDE[20034] = {{"the_eye_20034_01", "Important", "", 10}}
tipsMap_deDE[20035] = {{"the_eye_20035_01", "Important", "", 10}}
tipsMap_deDE[20036] = {{"the_eye_20036_01", "Important", "", 10}}
tipsMap_deDE[20037] = {{"the_eye_20037_01", "Important", "", 10}}
tipsMap_deDE[20038] = {{"the_eye_20038_01", "Important", "", 10}}
tipsMap_deDE[20039] = {{"the_eye_20039_01", "Important", "", 10}}
tipsMap_deDE[20040] = {{"the_eye_20040_01", "Important", "", 10}}
tipsMap_deDE[20041] = {{"the_eye_20041_01", "Important", "", 10}}
tipsMap_deDE[20042] = {{"the_eye_20042_01", "Important", "", 10}}
tipsMap_deDE[20043] = {{"the_eye_20043_01", "Important", "", 10}}
tipsMap_deDE[20044] = {{"the_eye_20044_01", "Important", "", 10}}
tipsMap_deDE[20045] = {{"the_eye_20045_01", "Important", "", 10}}
tipsMap_deDE[20046] = {{"the_eye_20046_01", "Important", "", 10}}
tipsMap_deDE[20047] = {{"the_eye_20047_01", "Important", "", 10}}
tipsMap_deDE[20048] = {{"the_eye_20048_01", "Important", "", 10}}
tipsMap_deDE[20049] = {{"the_eye_20049_01", "Important", "", 10}}
tipsMap_deDE[20050] = {{"the_eye_20050_01", "Important", "", 10}}
tipsMap_deDE[20052] = {{"the_eye_20052_01", "Important", "", 10}}
tipsMap_deDE[21362] = {{"the_eye_21362_01", "Important", "", 10}}
tipsMap_deDE[21364] = {{"the_eye_21364_01", "Important", "", 10}}
tipsMap_deDE[17767] = {{"hyjal_17767_01", "Important", "", 10}}
tipsMap_deDE[17808] = {{"hyjal_17808_01", "Important", "", 10}}
tipsMap_deDE[17888] = {{"hyjal_17888_01", "Important", "", 10}}
tipsMap_deDE[17842] = {{"hyjal_17842_01", "Important", "", 10}}
tipsMap_deDE[17968] = {{"hyjal_17968_01", "Important", "", 10}}
tipsMap_deDE[17818] = {{"hyjal_17818_01", "Important", "", 10}}
tipsMap_deDE[17864] = {{"hyjal_17864_01", "Important", "", 10}}
tipsMap_deDE[17895] = {{"hyjal_17895_01", "Important", "", 10}}
tipsMap_deDE[17897] = {{"hyjal_17897_01", "Important", "", 10}}
tipsMap_deDE[17898] = {{"hyjal_17898_01", "Important", "", 10}}
tipsMap_deDE[17899] = {{"hyjal_17899_01", "Important", "", 10}}
tipsMap_deDE[17902] = {{"hyjal_17902_01", "Important", "", 10}}
tipsMap_deDE[17903] = {{"hyjal_17903_01", "Important", "", 10}}
tipsMap_deDE[17905] = {{"hyjal_17905_01", "Important", "", 10}}
tipsMap_deDE[17906] = {{"hyjal_17906_01", "Important", "", 10}}
tipsMap_deDE[17907] = {{"hyjal_17907_01", "Important", "", 10}}
tipsMap_deDE[17908] = {{"hyjal_17908_01", "Important", "", 10}}
tipsMap_deDE[17916] = {{"hyjal_17916_01", "Important", "", 10}}
tipsMap_deDE[22887] = {{"black_temple_22887_01", "Important", "", 10}}
tipsMap_deDE[22898] = {{"black_temple_22898_01", "Important", "", 10}}
tipsMap_deDE[22841] = {{"black_temple_22841_01", "Important", "", 10}}
tipsMap_deDE[22871] = {{"black_temple_22871_01", "Important", "", 10}}
tipsMap_deDE[22948] = {{"black_temple_22948_01", "Important", "", 10}}
tipsMap_deDE[23418] = {{"black_temple_23418_01", "Important", "", 10}}
tipsMap_deDE[23419] = {{"black_temple_23419_01", "Important", "", 10}}
tipsMap_deDE[23420] = {{"black_temple_23420_01", "Important", "", 10}}
tipsMap_deDE[22947] = {{"black_temple_22947_01", "Important", "", 10}}
tipsMap_deDE[22949] = {{"black_temple_22949_01", "Important", "", 10}}
tipsMap_deDE[22950] = {{"black_temple_22950_01", "Important", "", 10}}
tipsMap_deDE[22951] = {{"black_temple_22951_01", "Important", "", 10}}
tipsMap_deDE[22952] = {{"black_temple_22952_01", "Important", "", 10}}
tipsMap_deDE[22917] = {{"black_temple_22917_01", "Important", "", 10}}
tipsMap_deDE[22844] = {{"black_temple_22844_01", "Important", "", 10}}
tipsMap_deDE[22845] = {{"black_temple_22845_01", "Important", "", 10}}
tipsMap_deDE[22846] = {{"black_temple_22846_01", "Important", "", 10}}
tipsMap_deDE[22847] = {{"black_temple_22847_01", "Important", "", 10}}
tipsMap_deDE[22848] = {{"black_temple_22848_01", "Important", "", 10}}
tipsMap_deDE[22849] = {{"black_temple_22849_01", "Important", "", 10}}
tipsMap_deDE[22853] = {{"black_temple_22853_01", "Important", "", 10}}
tipsMap_deDE[22855] = {{"black_temple_22855_01", "Important", "", 10}}
tipsMap_deDE[22869] = {{"black_temple_22869_01", "Important", "", 10}}
tipsMap_deDE[22873] = {{"black_temple_22873_01", "Important", "", 10}}
tipsMap_deDE[22874] = {{"black_temple_22874_01", "Important", "", 10}}
tipsMap_deDE[22875] = {{"black_temple_22875_01", "Important", "", 10}}
tipsMap_deDE[22876] = {{"black_temple_22876_01", "Important", "", 10}}
tipsMap_deDE[22877] = {{"black_temple_22877_01", "Important", "", 10}}
tipsMap_deDE[22878] = {{"black_temple_22878_01", "Important", "", 10}}
tipsMap_deDE[22879] = {{"black_temple_22879_01", "Important", "", 10}}
tipsMap_deDE[22880] = {{"black_temple_22880_01", "Important", "", 10}}
tipsMap_deDE[22881] = {{"black_temple_22881_01", "Important", "", 10}}
tipsMap_deDE[22882] = {{"black_temple_22882_01", "Important", "", 10}}
tipsMap_deDE[22883] = {{"black_temple_22883_01", "Important", "", 10}}
tipsMap_deDE[22884] = {{"black_temple_22884_01", "Important", "", 10}}
tipsMap_deDE[22885] = {{"black_temple_22885_01", "Important", "", 10}}
tipsMap_deDE[22929] = {{"black_temple_22929_01", "Important", "", 10}}
tipsMap_deDE[22939] = {{"black_temple_22939_01", "Important", "", 10}}
tipsMap_deDE[22945] = {{"black_temple_22945_01", "Important", "", 10}}
tipsMap_deDE[22946] = {{"black_temple_22946_01", "Important", "", 10}}
tipsMap_deDE[22953] = {{"black_temple_22953_01", "Important", "", 10}}
tipsMap_deDE[22954] = {{"black_temple_22954_01", "Important", "", 10}}
tipsMap_deDE[22955] = {{"black_temple_22955_01", "Important", "", 10}}
tipsMap_deDE[22956] = {{"black_temple_22956_01", "Important", "", 10}}
tipsMap_deDE[22957] = {{"black_temple_22957_01", "Important", "", 10}}
tipsMap_deDE[22959] = {{"black_temple_22959_01", "Important", "", 10}}
tipsMap_deDE[22960] = {{"black_temple_22960_01", "Important", "", 10}}
tipsMap_deDE[22962] = {{"black_temple_22962_01", "Important", "", 10}}
tipsMap_deDE[22963] = {{"black_temple_22963_01", "Important", "", 10}}
tipsMap_deDE[22964] = {{"black_temple_22964_01", "Important", "", 10}}
tipsMap_deDE[22965] = {{"black_temple_22965_01", "Important", "", 10}}
tipsMap_deDE[22996] = {{"black_temple_22996_01", "Important", "", 10}}
tipsMap_deDE[22997] = {{"black_temple_22997_01", "Important", "", 10}}
tipsMap_deDE[23018] = {{"black_temple_23018_01", "Important", "", 10}}
tipsMap_deDE[23028] = {{"black_temple_23028_01", "Important", "", 10}}
tipsMap_deDE[23030] = {{"black_temple_23030_01", "Important", "", 10}}
tipsMap_deDE[23047] = {{"black_temple_23047_01", "Important", "", 10}}
tipsMap_deDE[23049] = {{"black_temple_23049_01", "Important", "", 10}}
tipsMap_deDE[23083] = {{"black_temple_23083_01", "Important", "", 10}}
tipsMap_deDE[23109] = {{"black_temple_23109_01", "Important", "", 10}}
tipsMap_deDE[23111] = {{"black_temple_23111_01", "Important", "", 10}}
tipsMap_deDE[23147] = {{"black_temple_23147_01", "Important", "", 10}}
tipsMap_deDE[23172] = {{"black_temple_23172_01", "Important", "", 10}}
tipsMap_deDE[23196] = {{"black_temple_23196_01", "Important", "", 10}}
tipsMap_deDE[23215] = {{"black_temple_23215_01", "Important", "", 10}}
tipsMap_deDE[23216] = {{"black_temple_23216_01", "Important", "", 10}}
tipsMap_deDE[23222] = {{"black_temple_23222_01", "Important", "", 10}}
tipsMap_deDE[23223] = {{"black_temple_23223_01", "Important", "", 10}}
tipsMap_deDE[23232] = {{"black_temple_23232_01", "Important", "", 10}}
tipsMap_deDE[23235] = {{"black_temple_23235_01", "Important", "", 10}}
tipsMap_deDE[23236] = {{"black_temple_23236_01", "Important", "", 10}}
tipsMap_deDE[23237] = {{"black_temple_23237_01", "Important", "", 10}}
tipsMap_deDE[23239] = {{"black_temple_23239_01", "Important", "", 10}}
tipsMap_deDE[23318] = {{"black_temple_23318_01", "Important", "", 10}}
tipsMap_deDE[23319] = {{"black_temple_23319_01", "Important", "", 10}}
tipsMap_deDE[23330] = {{"black_temple_23330_01", "Important", "", 10}}
tipsMap_deDE[23337] = {{"black_temple_23337_01", "Important", "", 10}}
tipsMap_deDE[23339] = {{"black_temple_23339_01", "Important", "", 10}}
tipsMap_deDE[23371] = {{"black_temple_23371_01", "Important", "", 10}}
tipsMap_deDE[23374] = {{"black_temple_23374_01", "Important", "", 10}}
tipsMap_deDE[23375] = {{"black_temple_23375_01", "Important", "", 10}}
tipsMap_deDE[23389] = {{"black_temple_23389_01", "Important", "", 10}}
tipsMap_deDE[23394] = {{"black_temple_23394_01", "Important", "", 10}}
tipsMap_deDE[23397] = {{"black_temple_23397_01", "Important", "", 10}}
tipsMap_deDE[23398] = {{"black_temple_23398_01", "Important", "", 10}}
tipsMap_deDE[23399] = {{"black_temple_23399_01", "Important", "", 10}}
tipsMap_deDE[23400] = {{"black_temple_23400_01", "Important", "", 10}}
tipsMap_deDE[23401] = {{"black_temple_23401_01", "Important", "", 10}}
tipsMap_deDE[23402] = {{"black_temple_23402_01", "Important", "", 10}}
tipsMap_deDE[23403] = {{"black_temple_23403_01", "Important", "", 10}}
tipsMap_deDE[23421] = {{"black_temple_23421_01", "Important", "", 10}}
tipsMap_deDE[23436] = {{"black_temple_23436_01", "Important", "", 10}}
tipsMap_deDE[23469] = {{"black_temple_23469_01", "Important", "", 10}}
tipsMap_deDE[23498] = {{"black_temple_23498_01", "Important", "", 10}}
tipsMap_deDE[23523] = {{"black_temple_23523_01", "Important", "", 10}}
tipsMap_deDE[23524] = {{"black_temple_23524_01", "Important", "", 10}}
tipsMap_deDE[24850] = {{"sunwell_24850_01", "Important", "", 10}}
tipsMap_deDE[24892] = {{"sunwell_24892_01", "Important", "", 10}}
tipsMap_deDE[24882] = {{"sunwell_24882_01", "Important", "", 10}}
tipsMap_deDE[25038] = {{"sunwell_25038_01", "Important", "", 10}}
tipsMap_deDE[25166] = {{"sunwell_25166_01", "Important", "", 10}}
tipsMap_deDE[25165] = {{"sunwell_25165_01", "Important", "", 10}}
tipsMap_deDE[25741] = {{"sunwell_25741_01", "Important", "", 10}}
tipsMap_deDE[25840] = {{"sunwell_25840_01", "Important", "", 10}}
tipsMap_deDE[25315] = {{"sunwell_25315_01", "Important", "", 10}}
tipsMap_deDE[25268] = {{"sunwell_25268_01", "Legion", "", 10}}
tipsMap_deDE[25363] = {{"sunwell_25363_01", "Important", "", 10}}
tipsMap_deDE[25367] = {{"sunwell_25367_01", "Important", "", 10}}
tipsMap_deDE[25368] = {{"sunwell_25368_01", "Important", "", 10}}
tipsMap_deDE[25369] = {{"sunwell_25369_01", "Important", "", 10}}
tipsMap_deDE[25370] = {{"sunwell_25370_01", "Important", "", 10}}
tipsMap_deDE[25371] = {{"sunwell_25371_01", "Important", "", 10}}
tipsMap_deDE[25372] = {{"sunwell_25372_01", "Important", "", 10}}
tipsMap_deDE[25373] = {{"sunwell_25373_01", "Important", "", 10}}
tipsMap_deDE[25483] = {{"sunwell_25483_01", "Important", "", 10}}
tipsMap_deDE[25484] = {{"sunwell_25484_01", "Important", "", 10}}
tipsMap_deDE[25485] = {{"sunwell_25485_01", "Important", "", 10}}
tipsMap_deDE[25486] = {{"sunwell_25486_01", "Important", "", 10}}
tipsMap_deDE[25502] = {{"sunwell_25502_01", "Important", "", 10}}
tipsMap_deDE[25506] = {{"sunwell_25506_01", "Important", "", 10}}
tipsMap_deDE[25507] = {{"sunwell_25507_01", "Important", "", 10}}
tipsMap_deDE[25508] = {{"sunwell_25508_01", "Important", "", 10}}
tipsMap_deDE[25509] = {{"sunwell_25509_01", "Important", "", 10}}
tipsMap_deDE[25588] = {{"sunwell_25588_01", "Important", "", 10}}
tipsMap_deDE[25591] = {{"sunwell_25591_01", "Important", "", 10}}
tipsMap_deDE[25592] = {{"sunwell_25592_01", "Important", "", 10}}
tipsMap_deDE[25593] = {{"sunwell_25593_01", "Important", "", 10}}
tipsMap_deDE[25595] = {{"sunwell_25595_01", "Important", "", 10}}
tipsMap_deDE[25597] = {{"sunwell_25597_01", "Important", "", 10}}
tipsMap_deDE[25598] = {{"sunwell_25598_01", "Important", "", 10}}
tipsMap_deDE[25599] = {{"sunwell_25599_01", "Important", "", 10}}
tipsMap_deDE[25708] = {{"sunwell_25708_01", "Important", "", 10}}
tipsMap_deDE[25744] = {{"sunwell_25744_01", "Important", "", 10}}
tipsMap_deDE[25772] = {{"sunwell_25772_01", "Important", "", 10}}
tipsMap_deDE[25798] = {{"sunwell_25798_01", "Important", "", 10}}
tipsMap_deDE[25799] = {{"sunwell_25799_01", "Important", "", 10}}
tipsMap_deDE[25824] = {{"sunwell_25824_01", "Important", "", 10}}
tipsMap_deDE[25837] = {{"sunwell_25837_01", "Important", "", 10}}
tipsMap_deDE[25851] = {{"sunwell_25851_01", "Important", "", 10}}
tipsMap_deDE[25867] = {{"sunwell_25867_01", "Important", "", 10}}
tipsMap_deDE[25948] = {{"sunwell_25948_01", "Important", "", 10}}
tipsMap_deDE[26101] = {{"sunwell_26101_01", "Important", "", 10}}
tipsMap_deDE[17398] = {{"bloodfurnace_17398_01", "Important", "Deals AoE Damage to melee in form of Stomp and also uses Concussion Blow (5 sec stun)", 10}}
tipsMap_deDE[17399] = {{"bloodfurnace_17399_01", "Important", "Charms players for 6 sec (magic can be dispelled)", 20},
				{"bloodfurnace_17399_02", "Important", "If no one can dispel charm, the charmed player should be CC'd or stunned", 10}}
tipsMap_deDE[17401] = {{"bloodfurnace_17401_01", "Important", "Will Spell Lock casters & burn mana users", 20},
				{"bloodfurnace_17401_02", "PALADIN", "If tanking, can use Seal of Wisdom after sufficient threat has been built up", 10}}
tipsMap_deDE[17770] = {{"underbog_17770_01", "Important", "Immune to CC.", 60},
					{"underbog_17770_02", "Important", "Before fight begins, you will need to deal with 2 Bog Giants (both pull when one is pulled). One of them can be kited by a DPS who then jumps off ledge, allowing grp to fight one Bog Lord at a time", 50},
					{"underbog_17770_03", "Legion", "If your group is too weak to deal with both Bog Giants at once, focus down one as that one will not respawn if you wipe to the second", 40},
					{"underbog_17770_04", "Advanced", "POSITIONING: It is helpful for DPS and Healer to stand close together so that they move (around the boss) as a group to avoid mushrooms", 30},
					{"underbog_17770_05", "PriorityTargets", "When boss summons an Underbog Mushroom, ALL players (tank included) need to run away from it as it causes MASSIVE AoE damage! (showing nameplates can be helpful to see these mushrooms spawn and adjust accordingly)", 20},
					{"underbog_17770_06", "Dodge", "RUN AWAY: All players (tank included) needs to run away from boss at 20% as boss leeches health with AoE Foul Spores ability (Lasts 11 seconds)", 10}}
tipsMap_deDE[18105] = {{"underbog_18105_01", "Advanced", "POSITIONING: Tank should have boss turned away from group. DPS/Heals need to stand at sides to avoid frontal attack & tail sweep", 10}}
tipsMap_deDE[17826] = {{"underbog_17826_01", "Important", "Prior to starting fight, defeat the nearby Underbog Lord so that this guy isn't pulled with boss", 60},
					{"underbog_17826_02", "Advanced", "POSITIONING: Stand with backs against a wall to avoid knockback from Musel'ek, and all players should stack on boss to avoid majority of his ranged abilities (including Aimed Shot).", 50},
					{"underbog_17826_03", "Important", "Due to heal interrupts, keeping HoTs up will be especially helpful to preserve group", 40},
					{"underbog_17826_04", "TANK", "TANK should build threat on Claw first before switching back to Musel'ek.", 30},
					{"underbog_17826_05", "HEALER", "Priority heals to player (esp tank) if afflicted by ECHOING ROAR AoE debuff (reduces armor by 50-82% depending on difficulty; 10 yd range)", 20},
					{"underbog_17826_06", "TANK", "After Freezing Trap Effect (5 sec trap to players within 50 yds), tank needs to get back in melee of boss ASAP", 10}}
tipsMap_deDE[17827] = {{"underbog_17827_01", "Important", "Make sure TANK can build up sufficient threat on this guy before engaging boss and this add. Claw turns friendly when at 20%", 30},
					{"underbog_17827_02", "Important", "ECHOING ROAR: AoE ability reducing players' within 10 yds armor by 50% on normal-mode (82% on heroic). If this is the tank, they will need to pop additional defensives and receive big heals for 20 sec debuff.", 20},
					{"underbog_17827_03", "Important", "Stack Claw on top of Musel'ek to negate Claw's FERAL CHARGE +knockback", 10}}
tipsMap_deDE[17882] = {{"underbog_17882_01", "Advanced", "POSITIONING: Players should spread as much as possible to mitigate number of players hit by boss' Chain Lightning. Spreading will also mitigate number of players struck with Static Charge (AoE Nature DoT)", 120},
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
					{"underbog_17882_12", "HEALER", "Players that are levitated will need be topped off to ensure they can survive fall damage. They will also need additional heals when they actually receive the fall damage (unless that damage can be slowed)", 10}}
tipsMap_deDE[18107] = {{"underbog_18107_01", "Important", "Defeat Tidewrath before Ghaz'an reaches and eats him and \n you will be awarded bonus loot (even if you wipe on boss, but \n manage to take down Tidewrath).", 10}}
tipsMap_deDE[22299] = {{"underbog_22299_01", "PriorityTargets", "DPS need to focus down adds before going back to boss; summoned ~every 10 sec.", 20},
					{"underbog_22299_02", "Interrupts", "Interrupt: Lightning Bolt (Deals Nature Damage)", 10}}
tipsMap_deDE[17723] = {{"underbog_17723_01", "Important", "Immune to all forms of CC and Snares (Traps)! On HEROIC mode (esp when in pairs) can hit pretty hard. They move slowly and can be kited (helpful when in pairs)", 10}}
tipsMap_deDE[17724] = {{"underbog_17724_01", "TANK", "Do NOT turn your back to this mob when it is attacking as it deals increased damage from behind. If you need to pull this mob away from another pat: backup or strafe", 10}}
tipsMap_deDE[17725] = {{"underbog_17725_01", "Defensives", "Defensives may be needed for this mob as Wild Growth increases physical damage it deals by 50%", 10}}
tipsMap_deDE[17726] = {{"underbog_17726_01", "Legion", "", 10}}
tipsMap_deDE[17727] = {{"underbog_17727_01", "Important", "Enemy uses Shield Bash (Interrupting a player's cast)", 10}}
tipsMap_deDE[17728] = {{"underbog_17728_01", "Legion", "", 10}}
tipsMap_deDE[17729] = {{"underbog_17729_01", "Legion", "Ranged Hunter-Type Mob", 20},
					{"underbog_17729_02", "Important", "CC this mob/dispel Viper Sting from players (Drains player mana over 8 sec). If no one in the group can CC this mob, it should be a priority target!", 10}}
tipsMap_deDE[17730] = {{"underbog_17730_01", "Legion", "Healer-Type Mob", 30},
					{"underbog_17730_02", "Interrupts", "INTERRUPT: Holy Light (Big heal to an ally; 2.5 sec cast; 40 yd range)", 20},
					{"underbog_17730_03", "Interrupts", "INTERRUPT: Prayer of Healing (Moderate AoE heal to allies; 3 sec cast time)", 10}}
tipsMap_deDE[17731] = {{"underbog_17731_01", "Interrupts", "INTERRUPT: Psychic Horror (1.5 sec cast; 10 yd range; Causing player to be feared for 3 sec", 20},
					{"underbog_17731_02", "TANK", "Due to Psychic Horror, make sure that you aren't too close to nearby groups when you pull this mob, otherwise a fear may cause you to pull mobs you weren't ready to engage", 10}}
tipsMap_deDE[17732] = {{"underbog_17732_01", "Important", "Dispel POISON SPIT (Nature DoT lasting 10 sec) disease from player", 10}}
tipsMap_deDE[17734] = {{"underbog_17734_01", "Important", "Deals a knockback ability to a player", 20},
					{"underbog_17734_02", "Important", "Mob has an enrage where they grow larger over time and should be burned down quickly to mitigate strong attacks", 10}}
tipsMap_deDE[17735] = {{"underbog_17735_01", "Legion", "This mob has an enrage effect and should be focused down to mitigate damage as a result of this ability", 20},
					{"underbog_17735_02", "Important", "Enemy uses Shield Bash (Interrupting a player's cast)", 10}}
tipsMap_deDE[17771] = {{"underbog_17771_01", "Legion", "Mob uses a combination of Shadow, Frost, and Fire abilities", 20},
					{"underbog_17771_02", "Important", "Dispel Magic AMPLIFY DAMAGE from player (increases physical & magical damage player takes by 30% for 6 sec)", 10}}
tipsMap_deDE[17871] = {{"underbog_17871_01", "Interrupts", "INTERRUPT: Fungal Regrowth (40 yd range; 2 sec cast; Heals ally for initial amount also applying HoT to that ally", 30},
					{"underbog_17871_02", "Interrupts", "INTERRUPT: Itchy Spores (15 yd range; Deals Nature DoT to player lasting 10 sec)", 20},
					{"underbog_17871_03", "Important", "Dispel Disease: Itchy Spores from players if unable to interrupt this ability", 10}}
tipsMap_deDE[17990] = {{"underbog_17990_01", "Dodge", "RUN AWAY! Spore Cloud, from this object, deals AoE Nature Damage", 10}}
tipsMap_deDE[19632] = {{"underbog_19632_01", "Defensives", "DEFENSIVE: May be needed for tank/targeted player to pop CDs during Stinger Rage", 20},
					{"underbog_19632_02", "Important", "Vulnerable to CC even on Heroic-mode", 10}}
tipsMap_deDE[20465] = {{"underbog_20465_01", "Important", "Why are you swimming with the fishes?", 10}}
tipsMap_deDE[17797] = {{"steamvaults_17797_01", "Legion", "Boss deals Nature damage; Adds deal Frost damage (Nature resist should be prioritized if only have one option and have no Frost Aura for group from Paladin)", 50},
					{"steamvaults_17797_02", "Important", "Tank should focus on boss and use AoE threat (such as Thunderclap) on adds. DPS need to focus down the adds (or banish one of them) before going after boss. Adds will despawn once boss dies.", 40},
					{"steamvaults_17797_03", "Important", "Dispel: Enveloping Wind esp if applied to tank/healer (magic effect applied to player stunning them for 6 sec)", 30},
					{"steamvaults_17797_04", "Dodge", "DODGE/RUN: Watch for Lightning Cloud and run out of it (deals AoE Nature damage)", 20},
					{"steamvaults_17797_05", "Important", "HEROIC-mode: Boss will cast two Lightning Clouds at a time", 10}}
tipsMap_deDE[17796] = {{"steamvaults_17796_01", "Advanced", "POSITIONING: Only the tank should be standing in front of boss due to Super Shrink Ray (frontal cone that reduces player damage dealt by 35% for 15 sec)", 50},
					{"steamvaults_17796_02", "Important", "At 75%, 50% and 25%, boss announces 'Tune em' up boys' and 3 repair gnomes will spawn. These should be AoE'd down ASAP", 40},
					{"steamvaults_17796_03", "Important", "Thunder Clap from Warriors or Consecration from Paladins are helpful during add phases", 30},
					{"steamvaults_17796_04", "Important", "HEROIC-mode: Boss summons an additional gnome every 7 sec", 20},
					{"steamvaults_17796_05", "Important", "HEROIC-mode: Boss has a 5 minute enrage timer and quickly one shots players!", 10}}
tipsMap_deDE[17798] = {{"steamvaults_17798_01", "TANK", "Tank the boss in the middle of the room", 90},
					{"steamvaults_17798_02", "Important", "Spell-casting players need to stop DPS on boss during Spell Reflection (white bubble around boss that reflects damage back to player).", 80},
					{"steamvaults_17798_03", "Important", "Players will be occasionally struck with Impale (Physical damage DoT)", 70},
					{"steamvaults_17798_04", "HEALER", "Most of your heals will be on the tank, but watch for impales on other players and players that are still attacking boss during boss' Spell Reflection.", 60},
					{"steamvaults_17798_05", "PriorityTargets", "DPS down Naga Distiller w/in 12 sec of boss drawing power from it to prevent boss from gaining WARLORD'S RAGE (increased boss attack speed and damage done)", 50},
					{"steamvaults_17798_06", "DAMAGE", "Save big damage CDs for Naga Distillers. While failing to destroy one distiller in the time alloted won't necessarily result in a wipe, failure to burn down multiple containers will.", 40},
					{"steamvaults_17798_07", "TANK", "When Naga Distiller activates, you should focus down the container with your DPS!", 30},
					{"steamvaults_17798_08", "Legion", "Macro to help with containers would be: /targetexact Naga Distiller", 20},
					{"steamvaults_17798_09", "Defensives", "Boss will crack a player on the head reducing their stamina for 15 sec.", 10}}
tipsMap_deDE[17917] = {{"steamvaults_17917_01", "PriorityTargets", "Burn these down before boss. Warlocks can BANISH one of them", 10}}
tipsMap_deDE[17951] = {{"steamvaults_17951_01", "PriorityTargets", "Focus down adds anytime they are up as they will heal/repair boss", 30},
					{"steamvaults_17951_02", "WARRIOR", "When adds appear, a warrior casting Thunder Clap can delay repairs conducted by adds", 20},
					{"steamvaults_17951_03", "PALADIN", "Pallys using Consecration can quickly burn Mechanics down", 10}}
tipsMap_deDE[17954] = {{"steamvaults_17954_01", "PriorityTargets", "When boss draws power from distiller, it must be destroyed w/in 12 sec to prevent a boss enrage!", 10}}
tipsMap_deDE[17721] = {{"steamvaults_17721_01", "Important", "Players should spread when fighting mob due to Net root casts & AoE Fire Bombs", 10}}
tipsMap_deDE[17722] = {{"steamvaults_17722_01", "Important", "Interrupt/Run out of AoE from Blizzard (Channeled Frost AoE)", 10}}
tipsMap_deDE[17800] = {{"steamvaults_17800_01", "Important", "Mob should be tanked away from players due to Cleave. Melee players hit with Cleave will require increased healing", 10}}
tipsMap_deDE[17801] = {{"steamvaults_17801_01", "Important", "Interrupt: Fear or CC mob", 10}}
tipsMap_deDE[17802] = {{"steamvaults_17802_01", "Defensives", "Applies Mortal Blow (reduced armor and attack speed for 12 sec) to Tank, during this time, tank may need to pop defensive CDs & receive extra heals", 10}}
tipsMap_deDE[17803] = {{"steamvaults_17803_01", "PriorityTargets", "Interrupt: Heal or CC mob", 20},
					{"steamvaults_17803_02", "Important", "Mob should be tanked away from casters as Sonic Burst will spelllock players w/in 10 yds for 3 sec", 10}}
tipsMap_deDE[17805] = {{"steamvaults_17805_01", "Important", "Will use Disarm (likely on tank) causing issue with threat building/maintaining when this happens. This mob should be slowed if it begins to move toward DPS/Healer, while tank is Disarmed", 10}}
tipsMap_deDE[17799] = {{"steamvaults_17799_01", "Important", "Tank can use AoE threat-building abilities such as Thunder Clap/Consecration, but DPS should ignore them", 10}}
tipsMap_deDE[21338] = {{"steamvaults_21338_01", "Important", "Non-elite mob that should be AoE'd down", 10}}
tipsMap_deDE[21694] = {{"steamvaults_21694_01", "Legion", "Deals Nature & Physical Damage; consider resistance armor/pots if undergeared", 50},
					{"steamvaults_21694_02", "Important", "Mob should be tanked away from group due to Trample (mob deals Physical AoE). Melee players struck by this may need additional healing", 40},
					{"steamvaults_21694_03", "Important", "Dispel Fungal Decay from player (Disease; Nature DoT w/momvement speed slow lasting 18 sec)", 30},
					{"steamvaults_21694_04", "Important", "Dispel Poison Bolt from player (Poison; Nature DoT lasting 10 sec)", 20},
					{"steamvaults_21694_05", "Dodge", "Run out of Disease Cloud (Nature DoT)", 10}}
tipsMap_deDE[21695] = {{"steamvaults_21695_01", "Important", "These mobs should be tanked with your back against the wall due to Water Sprout knockback (40 yd range; Frost Damage)", 20},
					{"steamvaults_21695_02", "Important", "Surger pops Frost Nova rooting nearby players for 8 sec", 10}}
tipsMap_deDE[21696] = {{"steamvaults_21696_01", "Legion", "This mob deals Frost Damage; having proper aura/resistances can be helpful in mitigating some of mob's damage", 20},
					{"steamvaults_21696_02", "Legion", "Mob has 45 yd range attack in form of Water Bolt (Instant Frost damaging ability)", 10}}
tipsMap_deDE[22891] = {{"steamvaults_22891_01", "Legion", "", 10}}
tipsMap_deDE[18341] = {{"mana_tombs_18341_01", "Important", "Pulling this boss will also pull the trash in the room!", 90},
				{"mana_tombs_18341_02", "Important", "VOID BLAST (Volley of Void Bolts dealing Shadow damage +Knock back to players) - Fight mob with back against wall.", 80},
				{"mana_tombs_18341_03", "SHAMAN", "Keep Grounding Totem active as it will absorb Shadow Bolts", 70},
				{"mana_tombs_18341_04", "WARRIOR", "If you don't have a Shaman that can apply Grounding Totem, use SPELL REFLECTION to reflect the Void Blast back to boss", 60},
				{"mana_tombs_18341_05", "Important", "DARK SHELL - ALL STOP ATTACKING! (Reflects melee and spell attacks back to player, but not Hunter's ranged abilities)", 50},
				{"mana_tombs_18341_06", "Legion", "Watch for emote: 'Pandemonius shifts into the void...' to know when you should stop DPS due to Dark Shell", 40},
				{"mana_tombs_18341_07", "DRUID", "Thorns should NOT be applied to the tank due to Dark Shell", 30},
				{"mana_tombs_18341_08", "PALADIN", "Retribution Aura should NOT be used due to Dark Shell", 20},
				{"mana_tombs_18341_09", "Legion", "Shadow Resistance Buffs/Aura will be helpful with this boss", 10}}
tipsMap_deDE[18343] = {{"mana_tombs_18343_01", "Advanced", "POSITIONING: Melee should be behind boss, with ranged standing at max range. Tank boss away from party members to avoid Arcing Smash frontal attack", 50},
				{"mana_tombs_18343_02", "Important", "Earthquake (Deals AoE Nature damage +3 sec stun)", 40},
				{"mana_tombs_18343_03", "HEALER", "Make sure party members are topped off when Earthquake is being cast", 30},
				{"mana_tombs_18343_04", "Important", "Crystal Prison (Stuns random player in crystal; Dealing 50% of your health in damage over 5 sec as nature damage)", 20},
				{"mana_tombs_18343_05", "HEALER", "Heal up the player that is in the Crystal Prison!", 10}}
tipsMap_deDE[18344] = {{"mana_tombs_18344_01", "Legion", "Boss & Apprentice adds deal combo of Fire & Frost damage; Beacons deal Arcane Damage.", 80},
				{"mana_tombs_18344_02", "PALADIN", "Use Fire Resistance Aura (second pally can use Frost Resist Aura)", 70},
				{"mana_tombs_18344_03", "PRIEST", "Use Shadow Protection on party members", 60},
				{"mana_tombs_18344_04", "PriorityTargets", "Make sure that the Ethereal Beacons are being focused down anytime they're active!", 50},
				{"mana_tombs_18344_05", "Legion", "Watch for when boss says: 'I have such fascinating things to show you.' This is the group's warning to switch to the Beacons about to spawn", 40},
				{"mana_tombs_18344_06", "Important", "Boss often casts Frost Nova and Blinks out of melee range - bringing a group with strong ranged attacks is helpful.", 30},
				{"mana_tombs_18344_07", "Important", "Dispel Frost Nova (magic-effect) from group, or at least the tank", 20},
				{"mana_tombs_18344_08", "TANK", "When Frost Nova wears off move quickly to boss to get aggro back!", 10}}
tipsMap_deDE[22930] = {{"mana_tombs_22930_01", "Legion", "Summonable only on HEROIC mode by a party member that has Shaffar's Stasis Chamber Key or The Eye of Haramad (the eye is not consumed on use)", 50},
				{"mana_tombs_22930_02", "Legion", "TANK: Fire Resistance gear/pots will be helpful to mitigate some boss damage during frontal-cone DOUBLE BREATH", 40},
				{"mana_tombs_22930_03", "TANK", "Tank should turn boss away from group as Yor's DOUBLE BREATH deals frontal cone of Fire Damage", 30},
				{"mana_tombs_22930_04", "Important", "Yor will use Stomp (Knockback w/10 yd range)", 20},
				{"mana_tombs_22930_05", "Important", "DPS and Healer should stand as far from boss as possible on his backside to avoid frontal fire damage +knockback", 10}}
tipsMap_deDE[18431] = {{"mana_tombs_18431_01", "PriorityTargets", "DPS should burn down these mobs down ASAP (Spawns every ~10 sec)", 10}}
tipsMap_deDE[18430] = {{"mana_tombs_18430_01", "PriorityTargets", "If Ethereal Beacons are not destroyed quickly enough, these mobs will take their place", 30},
				{"mana_tombs_18430_02", "Important", "Deal HEAVY Fire & Frost damage", 20},
				{"mana_tombs_18430_03", "Legion", "Vulnerable to CC such as Polymorph", 10}}
tipsMap_deDE[18309] = {{"mana_tombs_18309_01", "Important", "Mobs will use Shield Bash (spell locks player from casting that magic school for 8 sec), mob will sometimes leave tank to interrupt your ability", 20},
				{"mana_tombs_18309_02", "HEALER", "Healer should stand some distance when dealing with these mobs to allow for advance notice of this mob approaching you", 10}}
tipsMap_deDE[18311] = {{"mana_tombs_18311_01", "Important", "Tank should LoS pull mob to walk into melee range, otherwise it could charge and stun a player for 2 sec.", 20},
				{"mana_tombs_18311_02", "Defensives", "Mob will apply Soul Strike (likely to tank; lasting 5 sec) which cuts the effectivess of heals received by 50%. Tanks may need to pop additional CDs and will require extra heals to stay alive", 10}}
tipsMap_deDE[18312] = {{"mana_tombs_18312_01", "PriorityTargets", "Main threat from this mob actually comes from the Ethereal Wraith that they summon. Burn adds and this mob down quickly!", 20},
				{"mana_tombs_18312_02", "Important", "Casters should stand at max range to avoid Counterspell (3 sec spell locking)", 10}}
tipsMap_deDE[18313] = {{"mana_tombs_18313_01", "PriorityTargets", "Tank should LoS pull these ranged mobs. Group should DPS mob down quickly due to heavy damage from Arcane Missiles. Sorcerer summons an Arcane Fiend.", 10}}
tipsMap_deDE[18314] = {{"mana_tombs_18314_01", "Important", "Mob will apply Gouge (likely on tank; lasting 4 sec). Mobs will then go after #2 on the threat meter. Use of slows/kiting will be helpful until tank can pick up aggro again", 10}}
tipsMap_deDE[18315] = {{"mana_tombs_18315_01", "Legion", "Deals mostly Fire & Physical damage", 30},
				{"mana_tombs_18315_02", "Interrupts", "INTERRUPT: Polymorph (sheeps random player)", 20},
				{"mana_tombs_18315_03", "Important", "Slow/Kite mob if it successfully Polymorphs tank", 10}}
tipsMap_deDE[18317] = {{"mana_tombs_18317_01", "PriorityTargets", "Due to Holy Nova doing good sized heal to allies and damage to players, it is best to focus these adds down or DPS them quickly.", 20},
				{"mana_tombs_18317_02", "Interrupts", "INTERRUPT: Heal", 10}}
tipsMap_deDE[18331] = {{"mana_tombs_18331_01", "Important", "LoS pull these ranged mobs", 20},
				{"mana_tombs_18331_02", "Interrupts", "INTERRUPT: Mana Burn", 10}}
tipsMap_deDE[18394] = {{"mana_tombs_18394_01", "PriorityTargets", "Summoned from Ethereal Spellbinders; DPS should focus this mob down quickly as high damage Shadow Bolt Volley hits nearby players", 10}}
tipsMap_deDE[18429] = {{"mana_tombs_18429_01", "PriorityTargets", "Deals Arcane Explosion & Counterspell on casters", 10}}
tipsMap_deDE[19306] = {{"mana_tombs_19306_01", "Important", "LoS pull this mob; Ranged DPS/Healer should stand at least 10 yds away to avoid Arcane Explosion AoE", 40},
				{"mana_tombs_19306_02", "PriorityTargets", "INTERRUPT: Mana Burn", 30},
				{"mana_tombs_19306_03", "Important", "Dispel Faerie Fire from especially from melee player (magic effect; reduces armor for 20 sec)", 20},
				{"mana_tombs_19306_04", "Important", "When mob dies, it will deal an Arcane Explosion AoE", 10}}
tipsMap_deDE[19307] = {{"mana_tombs_19307_01", "PriorityTargets", "Deals Shadow Damage - Having Shadow resistance buffs/auras can help mitigate some of the damage this mob deals to group", 50},
				{"mana_tombs_19307_02", "Important", "Dispel Curse of Impotence (magical damage dealt reduced for 60 sec) from mana-using player", 40},
				{"mana_tombs_19307_03", "Defensives", "Defensive/Extra Heals when mob applies Shadows Embrace to player (40 yd range; Shadow DoT over 6 sec; Physical damage dealt decreased by 50%).", 30},
				{"mana_tombs_19307_04", "Important", "LoS pull these mobs to safe area as this mob will cast Psychic Scream (AoE Fear) as well as Death Coil fear", 20},
				{"mana_tombs_19307_05", "SHAMAN", "Use Tremor Totem to negate Psychic Scream & Death Coil fears", 10}}
tipsMap_deDE[18636] = {{"shadow_lab_18636_01", "Important", "Nicht-Tanks gehen gegen diesen Mob sehr schnell um. Darum sollte immer der Tank vorne stehen.", 20},
					{"shadow_lab_18636_02", "WARLOCK", "Nach dem ersten Boss sollten Hexer ihre Sukkubus nutzen, um den Assassinen per CC zu sichern, wenn sie von diesen getarnten Mobs gestunnt werden.", 10}}
tipsMap_deDE[18637] = {{"shadow_lab_18637_01", "Important", "Schattenwort: Schmerz vom Spieler dispellen. Das ist ein Magie-Effekt mit Schatten-DoT.", 20},
					{"shadow_lab_18637_02", "Interrupts", "KICK: Gedankenschinden.", 10}}
tipsMap_deDE[18638] = {{"shadow_lab_18638_01", "Important", "Gestalt des Tieres vom Mob dispellen. Dieser Magie-Buff verkürzt die Zeit zwischen Angriffen, erhöht die Angriffskraft und verhindert Zaubern. Weil der Buff selbst das Zaubern unterbindet, eignet sich Magie verschlingen vom Hexer-Felhunter besonders gut. Kann niemand den Buff zuverlässig entfernen, braucht der Tank eventuell Extra-Heilung oder Def-CDs.", 10}}
tipsMap_deDE[18639] = {{"shadow_lab_18639_01", "Important", "Spieler, die durch Gehirnwäsche übernommen werden, sofort per CC sichern.", 20},
					{"shadow_lab_18639_02", "Defensives", "Def-CDs können nötig sein, wenn Tank oder Heiler übernommen werden.", 10}}
tipsMap_deDE[18640] = {{"shadow_lab_18640_01", "Important", "Saat der Verderbnis von Spielern dispellen. Das ist ein Magie-Effekt, der AoE-Schattenschaden verursacht.", 20},
					{"shadow_lab_18640_02", "Important", "Gibt es keinen Dispel, muss der betroffene Spieler aus der Gruppe laufen. Trifft es den Tank, müssen alle anderen 10 Meter Abstand vom Tank halten, um den AoE zu vermeiden.", 10}}
tipsMap_deDE[19166] = {{"mechanar_19166_01", "Legion", "Der Mob verursacht hauptsächlich Arkanschaden.", 30},
				{"mechanar_19166_02", "TANK", "Diesen Mob von anderen Gruppen wegpullen, damit kein weiterer Trash mitkommt.", 20},
				{"mechanar_19166_03", "Important", "Range-DDs und Heiler sollten mindestens 5 Meter Abstand halten, weil der Patrouillierer einen 2-Sek.-AoE-Stun hat.", 10}}
tipsMap_deDE[19167] = {{"mechanar_19167_01", "Defensives", "Bei diesen Mobs muss der Heiler besonders auf den Tank achten. Solar Strike reduziert die Heilwirkung und Rüstung schmelzen senkt die Rüstung naher Spieler. Der Tank braucht eventuell auch Def-CDs.", 10}}
tipsMap_deDE[19168] = {{"mechanar_19168_01", "Legion", "Feuermagier-artiger Mob.", 20},
				{"mechanar_19168_02", "Important", "Am besten per Range-DDs downen, weil Feuerschild AoE-Feuerschaden an nahen Spielern macht.", 10}}
tipsMap_deDE[19231] = {{"mechanar_19231_01", "Legion", "Der Mob entwaffnet sein Ziel mit Klaue.", 20},
				{"mechanar_19231_02", "Important", "Maschinenflüssigkeit als Gift von Spielern dispellen. Das ist ein 10-Sek.-Natur-DoT mit zusätzlichem Slow.", 10}}
tipsMap_deDE[19510] = {{"mechanar_19510_01", "Important", "Warrior-artige Mobs, die die Rüstung naher Spieler senken und ihr Angriffs- und Bewegungstempo erhöhen.", 20},
				{"mechanar_19510_02", "Defensives", "Sind Zenturios in der aktiven Gruppe, braucht der Tank wegen Rüstung schmelzen eventuell Extra-Def-CDs und zusätzliche Heilung.", 10}}
tipsMap_deDE[19712] = {{"mechanar_19712_01", "Important", "DDs und Heiler müssen auf ihre Aggro achten, denn der Driller legt einen stapelbaren Debuff auf sein Ziel, der Bewegungstempo und Rüstung senkt.", 30},
				{"mechanar_19712_02", "WARLOCK", "Dieser Mob ist anfällig für Verbannen und Fear.", 20},
				{"mechanar_19712_03", "Important", "Der Debuff reduziert pro Stapel die Rüstung um 20%, bis zu 5 Stapel. Dieser Mob sollte schnell sterben, bevor er Tank und Heiler überrollt.", 10}}
tipsMap_deDE[19713] = {{"mechanar_19713_01", "Legion", "Der Mob desorientiert sein Ziel mit Stampfen 5 Sek. lang.", 20},
				{"mechanar_19713_02", "Important", "Maschinenflüssigkeit als Gift von Spielern dispellen. Das ist ein 10-Sek.-Natur-DoT mit zusätzlichem Slow.", 10}}
tipsMap_deDE[19716] = {{"mechanar_19716_01", "Important", "Spieler sollten sich verteilen, wenn dieser Mob im Pull ist, denn Netherbombe macht Arkan-AoE auf eine gewählte Fläche.", 20},
				{"mechanar_19716_02", "Important", "Range-DDs sind hier besser, weil Netherexplosion starken AoE in seinem Nahkampfbereich verursacht.", 10}}
tipsMap_deDE[19735] = {{"mechanar_19735_01", "Legion", "Der Mob verursacht hauptsächlich Arkanschaden.", 30},
				{"mechanar_19735_02", "TANK", "Diesen Mob von anderen Gruppen wegpullen, damit kein weiterer Trash mitkommt.", 20},
				{"mechanar_19735_03", "Important", "Range-DDs und Heiler sollten mindestens 5 Meter Abstand zum Zerstörer halten, weil er einen 2-Sek.-AoE-Stun und zusätzlich Nahkampf-AoE hat.", 10}}
tipsMap_deDE[20059] = {{"mechanar_20059_01", "PriorityTargets", "Diesen Mob per CC sichern oder schnell töten, wegen Arkannova. Die macht Arkan-AoE und heilt zusätzlich seine Verbündeten.", 20},
				{"mechanar_20059_02", "Important", "Beschwört der Netherbinder seinen Arkanen Diener, sollte der wegen seines niedrigen Lebens und AoE-Schadens sofort downgehen.", 10}}
tipsMap_deDE[20478] = {{"mechanar_20478_01", "PriorityTargets", "Wird vom Sonnensucher-Netherbinder beschworen und verursacht AoE-Schaden.", 10}}
tipsMap_deDE[20988] = {{"mechanar_20988_01", "PriorityTargets", "Diese Mobs werden gefährlich, weil sie ihre Verbündeten buffen. Per CC sichern oder schnell fokussen.", 10}}
tipsMap_deDE[20990] = {{"mechanar_20990_01", "PriorityTargets", "Diesen Mob per CC sichern oder zuerst töten.", 40},
				{"mechanar_20990_02", "Interrupts", "KICK: Verband, ein 8-Sek.-Channel, der einen Verbündeten heilt.", 30},
				{"mechanar_20990_03", "Important", "Spieler dispellen, die von diesem Mob schlafen gelegt werden, besonders den Heiler. Der Schlaf hält 6 Sek. Gibt es keinen Dispel, muss eventuell ein Off-Heiler übernehmen.", 20},
				{"mechanar_20990_04", "SHAMAN", "Tremor Totem nutzen, um Schlaf zu entfernen.", 10}}
tipsMap_deDE[17976] = {{"botanica_17976_01", "Important", "Make sure to pull adds before engaging the boss (boss will pat back and forth over a bridge", 50},
				{"botanica_17976_02", "Legion", "Arcane resistance pots and gear could be helpful for this fight, but debuffs still need to be watched/dispelled.", 40},
				{"botanica_17976_03", "Important", "Dispel Arcane Resonance (increases target's Arcane damage taken) as often as possible.", 30},
				{"botanica_17976_04", "TANK", "Maintain strong defensives, esp if you don't have a group that can dispel Arcane Resonance as Arcane Devastation hit hard!", 20},
				{"botanica_17976_05", "PriorityTargets", "When adds appear, focus them down first. The Mender (healer) is elite and can be CC'd or Feared. When not feared, her heals must be interrupted", 10}}
tipsMap_deDE[17975] = {{"botanica_17975_01", "PriorityTargets", "Focus DPS on adds when they spawn before shifting back to boss", 40},
				{"botanica_17975_02", "Important", "When boss shapeshifts into Tree Form, boss becomes immune (this happens with greater frequency as fight goes on). At this point, 3 Frayer Protectors are summoned and begin channeling Tranquility (heal) to boss. When tank pulls them away from boss, DPS should focus down these adds", 30},
				{"botanica_17975_03", "TANK", "When boss changes into Tree Form, drag the Frayer Protectors away from boss", 20},
				{"botanica_17975_04", "Important", "During add phases (esp), DPS should focus on the tank's target (boss/adds) to burn mobs down quickly else the fight will be very long and healer will run out of mana", 10}}
tipsMap_deDE[17978] = {{"botanica_17978_01", "Legion", "Optional Boss", 90},
				{"botanica_17978_02", "Legion", "Boss deals a combination of Fire AoE Damage and Shadow damage DoT during Sacrifice phase. Use of auras/buffs/pots can help mitigate this damage (use fire if you have only one choice).", 80},
				{"botanica_17978_03", "Important", "Boss casts Hellfire which deals AoE fire damage. Healers should take note of this as melee will take increased damage", 70},
				{"botanica_17978_04", "Important", "Clear room by killing the adds near boss and two stealthed mobs in the direction of Laj's chambers", 60},
				{"botanica_17978_05", "Advanced", "POSITIONING: Tank should fight boss in the middle of the room (to avoid LoS issues with healer). It's reccomended to assign an off-healer in case healer is being sacrificed", 50},
				{"botanica_17978_06", "Important", "If healer is being Sacrificed (8 sec stun +Shadow DoT +boss leeches sacrificed player's health), use your 'off-healer' to assist with heals, and melee DPS should run out of range of boss' Hellfire AoE to mitigate group damage (if off-healer isn't well geared or off-healer not present)", 40},
				{"botanica_17978_07", "TANK", "DEFENSIVES: If healer is being Sacrificed be prepared to pop defensives to assist off-healer, or esp if an off-healer isn't available", 30},
				{"botanica_17978_08", "Defensives", "DEFENSIVES: Use defensive CD if boss is enraging against you (likely tank).", 20},
				{"botanica_17978_09", "HEALER", "Healer will need to keep 'enraged' player at max health (or as close to as possible).", 10}}
tipsMap_deDE[17980] = {{"botanica_17980_01", "Important", "Watch for and dispel Allergic Reaction (Disease) from tank.", 40},
				{"botanica_17980_02", "Important", "Watch for the color that Laj turns to see which school of magic it becomes immune to & don't cast from that school.", 30},
				{"botanica_17980_03", "Legion", "[BLUE] Frost; [RED] Fire; [GREEN] Nature; [BLACK] Shadow; [WHITE] Arcane", 20},
				{"botanica_17980_04", "PriorityTargets", "When boss teleports to original platform, adds will appear that must be focused down", 10}}
tipsMap_deDE[17977] = {{"botanica_17977_01", "Important", "DPS and Healer should be at maximum range (if possible) when dealing with boss to avoid Stomp (25 yd range; Deals AoE Physical damage +5 sec stun)", 40},
				{"botanica_17977_02", "WARRIOR", "Use Berserker Rage to grant brief immunity to Stomp's stun effect", 30},
				{"botanica_17977_03", "PriorityTargets", "Focus down Sapling adds when summoned as they will heal boss. Some abilities from hunter (Aimed Shot), warrior (Mortal Strike) and rogue (Wound Poison) can reduce healing effects.", 20},
				{"botanica_17977_04", "Important", "Sapling adds can also be CC'd using a mage's Frost Nova or a priest's Psychic Scream.", 10}}
tipsMap_deDE[20078] = {{"botanica_20078_01", "Legion", "Deals Arcane melee damage", 10}}
tipsMap_deDE[20083] = {{"botanica_20083_01", "PriorityTargets", "Fear/Burn Down mob asap as it will heal allies (including boss)", 10}}
tipsMap_deDE[19953] = {{"botanica_19953_01", "PriorityTargets", "", 10}}
tipsMap_deDE[19958] = {{"botanica_19958_01", "Important", "Dispel magic-effect from player that is encased in block of ice (Freezing Touch)", 10}}
tipsMap_deDE[19962] = {{"botanica_19962_01", "Important", "AoE ability that reduces movement speed of players for 4 sec", 10}}
tipsMap_deDE[19964] = {{"botanica_19964_01", "Important", "Deals Fire damage to random player", 10}}
tipsMap_deDE[19969] = {{"botanica_19969_01", "Important", "Deals AoE Nature damage", 10}}
tipsMap_deDE[19919] = {{"botanica_19919_01", "PriorityTargets", "Shots Thorn Missiles at player applying a Physical damage bleed", 10}}
tipsMap_deDE[19920] = {{"botanica_19920_01", "PriorityTargets", "Casts Mind Flay at player applying Shadow damage +movement speed reduction to that player", 10}}
tipsMap_deDE[19949] = {{"botanica_19949_01", "PriorityTargets", "Burn these adds down to prevent boss from being healed", 10}}
tipsMap_deDE[17993] = {{"botanica_17993_01", "PriorityTargets", "CC/DPS these mobs down quickly before they can put up Spell Reflection", 20},
				{"botanica_17993_02", "Important", "Immune to Mind Control", 10}}
tipsMap_deDE[17994] = {{"botanica_17994_01", "Defensives", "Player with Call of the Falcon mark will take extra damage from Bloodfalcons", 10}}
tipsMap_deDE[18155] = {{"botanica_18155_01", "Legion", "", 10}}
tipsMap_deDE[18404] = {{"botanica_18404_01", "Dodge", "DODGE: Arcane Flurry (AoE/WW Ability) when mob begins channeling, or stun this mob", 10}}
tipsMap_deDE[18405] = {{"botanica_18405_01", "Legion", "Deal AoE damage and drain player mana from nearby players", 10}}
tipsMap_deDE[18419] = {{"botanica_18419_01", "Legion", "Mobs deal primarily Nature Damage", 30},
				{"botanica_18419_02", "Important", "Dispel Impending Coma (Poison) from tank (increases time between attacks +reduces movement speed +puts target to sleep)", 20},
				{"botanica_18419_03", "Interrupts", "Interrupt: Greenkeeper's Fury (Lightning Bolt dealing Nature damage)", 10}}
tipsMap_deDE[18420] = {{"botanica_18420_01", "Important", "Casts Arcane Explosion AoE (melee players may need extra heals)", 20},
				{"botanica_18420_02", "Important", "Immune to Crowd Control", 10}}
-- First German dungeon tip pass for major TBC dungeon bosses and encounters.
tipsMap_deDE[17306] = {
	{"ramparts_17306_01", "Important", "Killt ZUERST die Adds, da sie den Boss heilen.", 20},
	{"ramparts_17306_02", "Important", "Spreadet etwas, um den Rueckstoss von Ansturm besser abzufangen.", 10},
}
tipsMap_deDE[17309] = {
	{"ramparts_17309_01", "PriorityTargets", "Kick: Heilung. Der Zauber heilt den Boss, und der Mob nutzt zusaetzlich Erneuerung.", 10},
}
tipsMap_deDE[17308] = {
	{"ramparts_17308_01", "Dodge", "Wenn du von Fluch der Hinterlist betroffen bist, lauf von der Gruppe weg. Bekommt Heiler oder Tank den Fluch, muessen die DDs Abstand zu ihnen halten. Dauer: 15 Sek.", 30},
	{"ramparts_17308_02", "Important", "Bei etwa 40% Leben wirkt der Boss Daemonenschild auf sich und erleidet 10 Sek. lang 75% weniger physischen und magischen Schaden.", 20},
	{"ramparts_17308_03", "Important", "Kontrolliert die Hunde oder lasst den Tank sie spotten.", 10},
}
tipsMap_deDE[17540] = {
	{"ramparts_17540_01", "TANK", "Spotte die Begleiter direkt, damit sie keine anderen Spieler anspringen.", 30},
	{"ramparts_17540_02", "Important", "Kontrolliert die Adds oder burnt sie schnell runter.", 20},
	{"ramparts_17540_03", "Interrupts", "Kick: Lebensentzug.", 10},
}
tipsMap_deDE[17537] = {
	{"ramparts_17537_01", "Important", "Die Gruppe sollte sich verteilen, damit nicht mehrere Spieler gleichzeitig von Nazans Feuerball-AoE getroffen werden.", 110},
	{"ramparts_17537_02", "Dodge", "AUSWEICHEN: Wenn du von Nazans Feuerball getroffen wirst, lauf aus dem Effekt heraus, damit du keine weiteren Ticks abbekommst.", 100},
	{"ramparts_17537_03", "TANK", "Nimm den Boss nach der Landung sofort auf, da er direkt auf das Ziel mit der hoechsten Bedrohung geht.", 90},
	{"ramparts_17537_04", "Advanced", "VAZRUDEN-Strategie (Phase 1)", 80},
	{"ramparts_17537_05", "Important", "Der Spieler mit Vazrudens Mal wird 6 Sek. lang sein Ziel. Def-CDs ziehen.", 70},
	{"ramparts_17537_06", "HEALER", "Gib dem Spieler mit Vazrudens Mal zusaetzliche Heilung.", 60},
	{"ramparts_17537_07", "Advanced", "NAZAN-Strategie (Phase 2)", 50},
	{"ramparts_17537_08", "Important", "Nazan landet, wenn er selbst 20% Leben hat oder wenn Vazruden etwa 40-50% erreicht.", 40},
	{"ramparts_17537_09", "TANK", "Wenn Nazan landet, drehe ihn von der Gruppe weg, damit seine Feuer-Angriffe die Gruppe nicht treffen.", 30},
	{"ramparts_17537_10", "Important", "Nazan wirkt Betaeubendes Gebrüll (AoE-Furcht).", 20},
	{"ramparts_17537_11", "DAMAGE", "Steht nicht vor Nazan!", 10},
}
tipsMap_deDE[17536] = {
	{"ramparts_17536_01", "Important", "Die Gruppe sollte sich verteilen, damit nicht mehrere Spieler gleichzeitig von Nazans Feuerball-AoE getroffen werden.", 110},
	{"ramparts_17536_02", "Dodge", "AUSWEICHEN: Wenn du von Nazans Feuerball getroffen wirst, lauf aus dem Effekt heraus, damit du keine weiteren Ticks abbekommst.", 100},
	{"ramparts_17536_03", "TANK", "Nimm den Boss nach der Landung sofort auf, da er direkt auf das Ziel mit der hoechsten Bedrohung geht.", 90},
	{"ramparts_17536_04", "Advanced", "VAZRUDEN-Strategie (Phase 1)", 80},
	{"ramparts_17536_05", "Important", "Der Spieler mit Vazrudens Mal wird 6 Sek. lang sein Ziel. Def-CDs ziehen.", 70},
	{"ramparts_17536_06", "HEALER", "Gib dem Spieler mit Vazrudens Mal zusaetzliche Heilung.", 60},
	{"ramparts_17536_07", "Advanced", "NAZAN-Strategie (Phase 2)", 50},
	{"ramparts_17536_08", "Important", "Nazan landet, wenn er selbst 20% Leben hat oder wenn Vazruden etwa 40-50% erreicht.", 40},
	{"ramparts_17536_09", "TANK", "Wenn Nazan landet, drehe ihn von der Gruppe weg, damit seine Feuer-Angriffe die Gruppe nicht treffen.", 30},
	{"ramparts_17536_10", "Important", "Nazan wirkt Betaeubendes Gebrüll (AoE-Furcht).", 20},
	{"ramparts_17536_11", "DAMAGE", "Steht nicht vor Nazan!", 10},
}
tipsMap_deDE[17259] = {
	{"ramparts_17259_01", "Important", "Hat Entwaffnen und einen Angriffskraft-Debuff. Fuer Meelees unangenehm, aber nicht kritisch.", 10},
}
tipsMap_deDE[17264] = {
	{"ramparts_17264_01", "Important", "Achtung: Hat einen gefaehrlichen Single-Target-Stun mit Nierenschlag.", 10},
}
tipsMap_deDE[17269] = {
	{"ramparts_17269_01", "Legion", "Der Mob nutzt Feuer-Schaden-Faehigkeiten.", 20},
	{"ramparts_17269_02", "Dodge", "Raus aus Regen des Feuers.", 10},
}
tipsMap_deDE[17270] = {
	{"ramparts_17270_01", "Important", "Tank sollte diese Mobs von der Gruppe wegdrehen, damit niemand von Gezielter Schuss oder Mehrfachschuss getroffen wird.", 10},
}
tipsMap_deDE[17271] = {
	{"ramparts_17271_01", "Important", "Tank sollte auf seine Rueckenposition achten. Der Mob nutzt Knockback, und ihr wollt keine zusaetzlichen Gruppen pullen.", 20},
	{"ramparts_17271_02", "Defensives", "Todesstoss reduziert die erhaltene Heilung auf dem Ziel.", 10},
}
tipsMap_deDE[17280] = {
	{"ramparts_17280_01", "Legion", "Nicht-elite. Macht hohen Schaden an Stofftraegern.", 20},
	{"ramparts_17280_02", "Important", "Anfaellig fuer CC wie Schaf, Falle oder Winterschlaf.", 10},
}
tipsMap_deDE[17281] = {
	{"ramparts_17281_01", "Defensives", "Wird im Enrage groesser und deutlich gefaehrlicher. Tank sollte notfalls Def-CDs ziehen, Heiler vorbereitet sein.", 10},
}
tipsMap_deDE[17455] = {
	{"ramparts_17455_01", "Important", "Beschwoert Kriegshunde und nutzt Aufwaertsiebender Hieb mit Knockback auf einen Spieler.", 10},
}
tipsMap_deDE[17478] = {
	{"ramparts_17478_01", "Important", "Wahrsager buffen Knochenmalmerreißer. Killt die Wahrsager nach dem LoS-Pull schnell.", 40},
	{"ramparts_17478_02", "Interrupts", "Kick: Furcht (1 Sek. Cast, 20 Meter Reichweite).", 30},
	{"ramparts_17478_03", "SHAMAN", "Nutze Tremor Totem, um Gruppenmitglieder aus Furcht zu holen, besonders Tank und Heiler.", 20},
	{"ramparts_17478_04", "WARLOCK", "Fluch der Sprachen kann weitere Kicks auf Furcht ermoeglichen, vor allem wenn kein Schamane mit Tremor Totem dabei ist.", 10},
}
tipsMap_deDE[17517] = {
	{"ramparts_17517_01", "Legion", "Wenn der letzte Spaeher stirbt, startet der Bosskampf.", 10},
}

tipsMap_deDE[17381] = {
	{"bloodfurnace_17381_01", "Legion", "Verteilt euch mindestens 8 Meter, damit nicht mehrere Spieler gleichzeitig von Explodierender Kolbenfiole getroffen werden (Naturschaden + AoE-Rueckstoss).", 30},
	{"bloodfurnace_17381_02", "Important", "Der Boss uebernimmt zufaellig einen Spieler. Das kontrollierte Ziel sollte sofort kontrolliert oder gestoppt werden. Ist es der Tank, laeuft der Boss direkt auf den Heiler!", 20},
	{"bloodfurnace_17381_03", "Important", "Der Boss speit im Nahkampfbereich einen saeurehaltigen AoE.", 10},
}
tipsMap_deDE[17380] = {
	{"bloodfurnace_17380_01", "TANK", "Kite den Boss aus den Giftwolken heraus.", 30},
	{"bloodfurnace_17380_02", "Important", "Nur der Tank sollte vor dem Boss stehen, da Schleimspray ein Frontalangriff ist.", 20},
	{"bloodfurnace_17380_03", "HEALER", "Achte auf Spieler, die von Giftblitz getroffen werden, denn der Effekt hinterlaesst einen Naturschaden-DoT.", 10},
}
tipsMap_deDE[17429] = {
	{"bloodfurnace_17429_01", "Legion", "Es gibt 4 Wellen. Die erste wird durch den Hebel an der Zelltuere aktiviert.", 40},
	{"bloodfurnace_17429_02", "TANK", "Der Tank sollte nah an der naechsten Zelle stehen und sofort eine AoE-Bedrohungsfaehigkeit nutzen, wenn sie aufgeht.", 30},
	{"bloodfurnace_17429_03", "Important", "Die Orcs koennen gefuerchtet, verlangsamt oder kontrolliert werden, um den Gruppenschaden zu senken.", 20},
	{"bloodfurnace_17429_04", "Important", "Sobald ein Mob einer Welle stirbt, oeffnet sich die naechste Zelle automatisch. Die Bosstuere oeffnet sich nach dem letzten Orc der vierten Welle.", 10},
}
tipsMap_deDE[17377] = {
	{"bloodfurnace_17377_01", "Important", "Verteilt euch so gut wie moeglich, um den Gruppenschaden von Schattenblitzsalve zu verringern (30 Meter Schatten-AoE, besonders relevant fuer Fernkaempfer und Heiler).", 20},
	{"bloodfurnace_17377_02", "Important", "Lauft weg, sobald der Boss 'NAEHER... KOMMT NAEHER UND BRENNT' ruft, denn gleich folgt eine sehr starke Feuer-AoE.", 10},
}

tipsMap_deDE[18441] = {
	{"auchenai_18441_01", "PriorityTargets", "Fokus auf diesen Mob, wenn Maladaar ihn beschwoert.", 10},
}
tipsMap_deDE[18478] = {
	{"auchenai_18478_01", "Legion", "", 10},
}
tipsMap_deDE[18493] = {
	{"soulpriest_001", "Important", "Dispell Beruehrung der Vergessenen, besonders vom Tank, da der Effekt 3 Min. lang die erhaltene Heilung reduziert.", 10},
}
tipsMap_deDE[18495] = {
	{"vindicator_001", "Important", "TEST: Auchenai-Rechtsprecher nutzt das neue Tippformat mit Tipp-IDs und Gewichtung.", 20},
	{"vindicator_002", "TANK", "Halte den Mob von der Gruppe weg, wenn er im Pull hart trifft.", 10},
}
tipsMap_deDE[18497] = {
	{"monk_001", "TANK", "Den Moench von der Gruppe weg tanken.", 40},
	{"monk_002", "Important", "Hat einen AoE-Knockback. Ruecken an die Wand, damit ihr keine zusaetzlichen Gruppen pullt.", 30},
	{"monk_003", "Important", "Immun gegen Schaf und Sap.", 20},
	{"monk_004", "Important", "Caster und Heiler sollten nicht im Nahkampf stehen, da Gegenkick unterbricht und die Zauberschule lockt.", 10},
}
tipsMap_deDE[18498] = {
	{"auchenai_18498_01", "Important", "DD/Tank: Wenn moeglich keine Zauber mit Castzeit nutzen, da der Mob Schildhieb benutzt und Spieler spelllockt.", 20},
	{"auchenai_18498_02", "HEALER", "Der Mob nutzt Schildhieb und spelllockt Spieler. Wenn moeglich HoTs auf dem Tank halten.", 10},
}
tipsMap_deDE[18499] = {
	{"auchenai_18499_01", "Legion", "", 10},
}
tipsMap_deDE[18500] = {
	{"auchenai_18500_01", "PriorityTargets", "Dieser Mob ist ein Heiler.", 20},
	{"auchenai_18500_02", "Interrupts", "Kick: Groeßere Heilung (3 Sek. Cast, heilt einen Verbündeten).", 10},
}
tipsMap_deDE[18501] = {
	{"auchenai_18501_01", "Important", "Dispell Rachegeist vom Mob (Magie). Der Effekt erhoeht Angriffsgeschwindigkeit um 50% und Bewegungsgeschwindigkeit um 40%.", 10},
}
tipsMap_deDE[18503] = {
	{"auchenai_18503_01", "PriorityTargets", "Wegen der 60 Sek. langen Gedankenkontrolle auf Spieler so schnell wie moeglich bursten.", 10},
}
tipsMap_deDE[18506] = {
	{"auchenai_18506_01", "Important", "Wirkt WUT (4,5 Sek. Cast mit AoE-Knockback). Besonders auf der Bruecke zu Shirrak gefaehrlich, da es euch in den Tod stoßen kann.", 10},
}
tipsMap_deDE[18521] = {
	{"auchenai_18521_01", "Legion", "", 10},
}
tipsMap_deDE[18524] = {
	{"auchenai_18524_01", "Legion", "", 10},
}
tipsMap_deDE[18556] = {
	{"auchenai_18556_01", "Important", "DD/Tank: Wenn moeglich keine Zauber mit Castzeit nutzen, da der Mob Schildhieb benutzt und Spieler spelllockt.", 20},
	{"auchenai_18556_02", "HEALER", "Der Mob nutzt Schildhieb und spelllockt Spieler. Wenn moeglich HoTs auf dem Tank halten.", 10},
}
tipsMap_deDE[18557] = {
	{"auchenai_18557_01", "PriorityTargets", "Dieser Mob ist ein Heiler.", 20},
	{"auchenai_18557_02", "Interrupts", "Kick: Groeßere Heilung (3 Sek. Cast, heilt einen Verbündeten).", 10},
}
tipsMap_deDE[18558] = {
	{"auchenai_18558_01", "Legion", "", 10},
}
tipsMap_deDE[18559] = {
	{"auchenai_18559_01", "Important", "Dispell Rachegeist vom Mob (Magie). Der Effekt erhoeht Angriffsgeschwindigkeit um 50% und Bewegungsgeschwindigkeit um 40%.", 10},
}
tipsMap_deDE[18700] = {
	{"auchenai_18700_01", "Important", "Der Mob sundered die Ruestung des Ziels und verringert damit ihre Wirkung.", 10},
}
tipsMap_deDE[18702] = {
	{"auchenai_18702_01", "Important", "Dispell Verderbenssaat von Spielern. Wenn kein Dispel da ist, muss der betroffene Spieler aus der Gruppe laufen. Ist der Tank betroffen, muessen die anderen Abstand halten.", 10},
}

tipsMap_deDE[18371] = {
	{"auchenai_18371_01", "TANK", "Tanke den Boss weg von Fernkaempfern und Heilern.", 50},
	{"auchenai_18371_02", "Important", "Steht nicht zu weit auseinander, da die Aura des Bosses Zauber fuer entfernte Spieler deutlich verlangsamt.", 40},
	{"auchenai_18371_03", "Dodge", "Weiche den Bodenexplosionen aus und bleib in Bewegung, wenn du Ziel der Leerenzonen wirst.", 30},
	{"auchenai_18371_04", "Important", "Halte den Bossdruck hoch, bevor zu viele Blutungseffekte auf dem Tank stapeln.", 20},
	{"auchenai_18371_05", "Important", "Lauf vom Boss weg, wenn Anziehung der Magie beginnt und er die Gruppe an sich zieht.", 10},
}
tipsMap_deDE[18373] = {
	{"auchenai_18373_01", "Important", "Hebt Cooldowns fuer 25% Bossleben auf, weil der Schaden dann deutlich anzieht.", 40},
	{"auchenai_18373_02", "Important", "Der Boss nutzt einen AoE-Fear namens Seelenschrei.", 30},
	{"auchenai_18373_03", "SHAMAN", "Stelle Tremor Totem, um den AoE-Fear des Bosses abzufangen.", 20},
	{"auchenai_18373_04", "Important", "Fokussiert erscheinende Schattenbilder schnell und der Tank sollte den Avatar des Gemarterten sofort aufnehmen.", 10},
}

tipsMap_deDE[18472] = {
	{"sethekk_18472_01", "Legion", "Der Boss hat zwei Abschnitte: reine Bossphase und Addphase. Je nach Gruppe sollte vorher eine Killreihenfolge fuer die Elementare festgelegt werden.", 70},
	{"sethekk_18472_02", "Advanced", "PHASE 1", 60},
	{"sethekk_18472_03", "Important", "Die Gruppe sollte sich moeglichst verteilen, um den Gruppenschaden durch Kettenblitz besser abzufangen.", 50},
	{"sethekk_18472_04", "Advanced", "PHASE 2 - Addphase (bei 90%, 55% und 10% Bossleben)", 40},
	{"sethekk_18472_05", "Important", "Jedes Elementar ist gegen den eigenen Schadentyp immun. Feuer-Mages sollten kein Feuer-Elementar angreifen und Hexer sollten keine Schattenzauber auf Schatten-Elementare casten. Das Schatten-Elementar ist ausserdem immun gegen Furcht und Verbannen. Am besten die Adds nacheinander zusammen mit dem Tank fokussieren statt sie per Cleave oder AoE runterzuspielen.", 30},
	{"sethekk_18472_06", "TANK", "Wenn die Addphase beginnt, sofort mit AoE-Tools wie Weihe oder Donnerknall die Elementare einsammeln.", 20},
	{"sethekk_18472_07", "DAMAGE", "Beschworene Elementare zuerst fokussieren und erst danach wieder auf den Boss wechseln. Alternativ koennen Priester oder Hexer Feuer-, Frost- und Arkanelementare beim Spawn per AoE-Fear kontrollieren.", 10},
}
tipsMap_deDE[18473] = {
	{"sethekk_18473_01", "PriorityTargets", "Bei 80%, 50% und 25% blinkt der Boss zu einem zufaelligen Spieler und wirkt Arkane Explosion. Die Sichtlinie MUSS hinter einem Pfeiler gebrochen werden, sonst ist der Treffer toedlich.", 40},
	{"sethekk_18473_02", "Important", "Der Boss belegt einen zufaelligen Spieler fuer 5 Sek. mit Polymorph. Das kann auch Tank oder Heiler treffen. Die Gruppe sollte keine Arkane-Explosions-Phase ausloesen, waehrend jemand geschafed ist, sonst ist dieser Spieler sehr leicht ein One-Shot-Ziel.", 30},
	{"sethekk_18473_03", "SHAMAN", "Ein Schamane kann auf Heroisch mit Erdungstotem verhindern, dass Tank oder andere Spieler von Polymorph getroffen werden.", 20},
	{"sethekk_18473_04", "Important", "Heiler und Tank koennen notfalls ein PvP-Trinket nutzen, um Polymorph zu brechen, falls kein Schamane mit Erdungstotem dabei ist. Wenn der Heiler nicht aus dem Schaf geholt werden kann, sollte die Gruppe einen Plan fuer Off-Heals haben.", 10},
}
tipsMap_deDE[23035] = {
	{"sethekk_23035_01", "Legion", "Der Boss verursacht eine Mischung aus physischem Schaden und Schattenschaden. Widerstandsaura oder Tränke koennen helfen.", 70},
	{"sethekk_23035_02", "Advanced", "Waehend der Vogelphase sollte die Gruppe auf dem Boss stacken, um AoE zu machen.", 60},
	{"sethekk_23035_03", "Important", "Caster, besonders Heiler, mit Zauberbombe muessen SOFORT aufhoeren zu casten, da der Effekt Mana zieht und Schaden verursacht. Ist der Heiler betroffen, muss ein Off-Heal fuer 8 Sek. uebernehmen.", 50},
	{"sethekk_23035_04", "Important", "Bei 66% und 33% banisht sich der Boss selbst und beschwoert Vögel. Er kommt zurueck, wenn alle Vögel tot sind oder nach 1 Min.", 40},
	{"sethekk_23035_05", "DAMAGE", "Solange die Vögel aktiv sind, erst AoE auf die Adds, dann zurueck auf den Boss.", 30},
	{"sethekk_23035_06", "TANK", "Sei bereit, Anzu direkt wieder aufzunehmen, wenn der Banish endet.", 20},
	{"sethekk_23035_07", "Important", "Ist ein Druide in der Gruppe, kann ein HoT auf die Statuen helfen. Adler-, Falken- und Habichtsgeister koennen nuetzliche Boni im Bosskampf geben.", 10},
}
tipsMap_deDE[19203] = {
	{"sethekk_19203_01", "PriorityTargets", "Elementar-Adds haben Prio, solange sie aktiv sind. Erst dann wieder auf den Boss.", 30},
	{"sethekk_19203_02", "Legion", "Immun gegen Feuerschaden.", 20},
	{"sethekk_19203_03", "Important", "Verursacht Feuerschaden und legt einen stapelbaren Debuff auf Spieler, der erlittenen Feuerschaden erhoeht.", 10},
}
tipsMap_deDE[19204] = {
	{"sethekk_19204_01", "PriorityTargets", "Elementar-Adds haben Prio, solange sie aktiv sind. Erst dann wieder auf den Boss.", 30},
	{"sethekk_19204_02", "Legion", "Immun gegen Frostschaden.", 20},
	{"sethekk_19204_03", "Important", "Verursacht Frostschaden und legt einen stapelbaren Debuff auf Spieler, der erlittenen Frostschaden erhoeht.", 10},
}
tipsMap_deDE[19205] = {
	{"sethekk_19205_01", "PriorityTargets", "Elementar-Adds haben Prio, solange sie aktiv sind. Erst dann wieder auf den Boss.", 30},
	{"sethekk_19205_02", "Legion", "Immun gegen Arkanschaden.", 20},
	{"sethekk_19205_03", "Important", "Verursacht Arkanschaden und legt einen stapelbaren Debuff auf Spieler, der erlittenen Arkanschaden erhoeht.", 10},
}
tipsMap_deDE[19206] = {
	{"sethekk_19206_01", "PriorityTargets", "Elementar-Adds haben Prio, solange sie aktiv sind. Erst dann wieder auf den Boss.", 30},
	{"sethekk_19206_02", "Legion", "Immun gegen Schattenschaden und als einziges Elementar auch gegen Furcht und Verbannen.", 20},
	{"sethekk_19206_03", "Important", "Verursacht Schattenschaden und legt einen stapelbaren Debuff auf Spieler, der erlittenen Schattenschaden erhoeht.", 10},
}
tipsMap_deDE[18318] = {
	{"sethekk_18318_01", "Important", "Wenn Zauberreflexion aktiv ist, keine Zauber mehr auf den Mob casten und stattdessen im Nahkampf weitermachen.", 10},
}
tipsMap_deDE[18319] = {
	{"sethekk_18319_01", "Interrupts", "Kick: Blitzheilung.", 40},
	{"sethekk_18319_02", "PriorityTargets", "Wenn kein Priester oder Hunter zum CC da ist, sollte dieser Mob Kill-Priorität haben, da Verjuengung instant heilt.", 30},
	{"sethekk_18319_03", "PRIEST", "Kann geschackelt werden.", 20},
	{"sethekk_18319_04", "HUNTER", "Kann in die Falle geschickt werden.", 10},
}
tipsMap_deDE[18320] = {
	{"sethekk_18320_01", "Important", "Dispell Fluch der dunklen Klaue vom Spieler. Der Debuff erhoeht erlittenen physischen Schaden und senkt Ausdauer.", 50},
	{"sethekk_18320_02", "Important", "Spieler mit Fluch der dunklen Klaue sollten keinen Schaden machen, bis der Debuff ablaeuft oder gedispellt wird, da ihre Angriffe Zerfleischen auf ihnen selbst ausloesen koennen.", 40},
	{"sethekk_18320_03", "MAGE", "Zauberraub auf den Buff Arkane Zerstörung.", 30},
	{"sethekk_18320_04", "PRIEST", "Kann geschackelt werden.", 20},
	{"sethekk_18320_05", "HUNTER", "Kann in die Falle geschickt werden.", 10},
}
tipsMap_deDE[18321] = {
	{"sethekk_18321_01", "Important", "Wirkt Avenger's Shield und benebelt damit mehrere Spieler.", 20},
	{"sethekk_18321_02", "Important", "Dispell Klaue der Gerechtigkeit vom Spieler, besonders wenn Tank oder Heiler betroffen sind.", 10},
}
tipsMap_deDE[18322] = {
	{"sethekk_18322_01", "Important", "Heulender Schrei reduziert verursachten Schaden und Bewegungstempo. Kann gedispellt werden, wenn nicht gerade ein gefaehrlicherer Debuff auf Tank oder Heiler liegt.", 20},
	{"sethekk_18322_02", "Important", "Hat einen Enrage. Debuffs wie Fluch der Schwäche helfen, den Schaden auf dem Tank zu senken.", 10},
}
tipsMap_deDE[18323] = {
	{"sethekk_18323_01", "Important", "Verursacht Donnerknall-AoE auf 10 Metern. In Heroic ist der Mob zusaetzlich immun gegen CC.", 20},
	{"sethekk_18323_02", "TANK", "Diese Mobs von Ranged-DDs und Heiler weg tanken.", 10},
}
tipsMap_deDE[18325] = {
	{"sethekk_18325_01", "PriorityTargets", "Sofort bursten oder per CC sichern. Furchtet bis zu 4 Spieler in 8 Metern.", 10},
}
tipsMap_deDE[18326] = {
	{"sethekk_18326_01", "Legion", "", 10},
}
tipsMap_deDE[18327] = {
	{"sethekk_18327_01", "PriorityTargets", "Der Mob droppt ein Verzauberungstotem, das einen Spieler 30 Sek. lang gedankenkontrolliert.", 30},
	{"sethekk_18327_02", "Important", "Anfaellig fuer Untote fesseln.", 20},
	{"sethekk_18327_03", "MAGE", "Zauberraub auf den Buff Arkane Zerstörung.", 10},
}
tipsMap_deDE[18328] = {
	{"sethekk_18328_01", "Interrupts", "Kick: Arkanschlag (1,5 Sek. Cast; Kettenblitz-artige Faehigkeit mit 4 Sek. Zauberschulen-Silence). Wenn kein Kick da ist, sollten Caster mit dem Casten stoppen, besonders der Heiler.", 10},
}
tipsMap_deDE[18701] = {
	{"sethekk_18701_01", "Legion", "Elementar-Add, das vom Sethekk-Schamanen beschworen wird.", 10},
}
tipsMap_deDE[19428] = {
	{"sethekk_19428_01", "Legion", "Verursacht Naturschaden ueber Blitzodem.", 30},
	{"sethekk_19428_02", "Important", "Fluegelschlag verursacht Knockback auf Spieler vor dem Mob.", 20},
	{"sethekk_19428_03", "Important", "Wenn dieser Mob in einem Pack ist, ihn von Ranged-DDs und Heiler weg tanken und den Ruecken an die Wand stellen, um den Knockback abzufangen.", 10},
}
tipsMap_deDE[19429] = {
	{"sethekk_19429_01", "Important", "Schallangriff stuermt auf einen Spieler zu, verursacht Schaden und Knockback. Kann gefaehrlich werden, wenn der Mob zu lange lebt.", 20},
	{"sethekk_19429_02", "Important", "Knockback laesst sich abfangen, wenn alle mit dem Ruecken zur Wand stehen.", 10},
}
tipsMap_deDE[20343] = {
	{"sethekk_20343_01", "PriorityTargets", "Wird vom Zeitverlorenen Beherrscher beschworen und gedankenkontrolliert Spieler 30 Sek. lang.", 10},
}
tipsMap_deDE[21891] = {
	{"sethekk_21891_01", "Legion", "", 10},
}
tipsMap_deDE[21904] = {
	{"sethekk_21904_01", "Important", "Sturzflug ist ein Frontalangriff mit Schaden und 2 Sek. Stun. Immer hinter dem Mob stehen, außer du bist der Tank.", 10},
}
tipsMap_deDE[23132] = {
	{"sethekk_23132_01", "PriorityTargets", "Kreischen senkt 8 Sek. lang die Angriffskraft aller Spieler in 20 Metern.", 10},
}

tipsMap_deDE[18731] = {
	{"shadow_lab_18731_01", "Advanced", "POSITIONIERUNG: Tanke den Boss im Tunnel vor seinem Raum, damit der Heiler keine Sichtlinienprobleme bekommt. Der Tank sollte den Boss von der Gruppe wegdrehen, damit nur er von Aetzender Saeure getroffen wird.", 40},
	{"shadow_lab_18731_02", "Important", "Der Boss nutzt einen AoE-Fear mit 1,5 Sek. Castzeit, 45 Metern Reichweite und 6 Sek. Dauer.", 30},
	{"shadow_lab_18731_03", "SHAMAN", "Stell Tremor Totem, sobald du den Fear-Cast siehst, damit die Gruppe schnell wieder frei ist.", 20},
	{"shadow_lab_18731_04", "WARRIOR", "Nutze Zauberreflexion, um nicht gefearnt zu werden und dem Boss beim Nachlaufen keine Aetzende Saeure in die Gruppe zu ziehen.", 10},
}
tipsMap_deDE[18667] = {
	{"shadow_lab_18667_01", "Important", "Der Raum muss KOMPLETT leer sein, bevor ihr den Boss pullt!", 70},
	{"shadow_lab_18667_02", "Advanced", "POSITIONIERUNG: Zieh den Boss mit dem Ruecken zur Wand in eine Ecke, damit der AoE-Knockback kontrollierbar bleibt.", 60},
	{"shadow_lab_18667_03", "Important", "DDs sollten ihre grossen Schadens-CDs direkt zu Kampfbeginn nutzen, weil Incite Chaos diese spaeter waehrend der Gedankenkontrolle ungewollt ausloesen kann.", 50},
	{"shadow_lab_18667_04", "Important", "Incite Chaos ist eine 15-Sek.-Gedankenkontrolle auf allen Spielern. Wenn der Boss 'Time for fun' sagt, kommt die Gedankenkontrolle gleich.", 40},
	{"shadow_lab_18667_05", "Important", "Um Incite Chaos abzufangen, koennen Spieler Waffen ausziehen, Pets auf passiv setzen, Hunter eine Eiskältefalle unter den Heiler legen oder einen Großen Trank des traumlosen Schlafs nutzen, um einen Teil der Phase zu neutralisieren.", 30},
	{"shadow_lab_18667_06", "Important", "Kriegstampfen: Der Boss wirft Spieler in 20 Metern um sich weg.", 20},
	{"shadow_lab_18667_07", "Important", "Ansturm: Der Boss stuermt auf einen zufaelligen Spieler zu und betaeubt ihn 2 Sek.", 10},
}
tipsMap_deDE[18732] = {
	{"shadow_lab_18732_01", "Legion", "Der Boss verursacht eine Kombination aus Feuer- und Schattenschaden. Entsprechende Buffs oder Auren helfen beim Abfedern des Schadens.", 50},
	{"shadow_lab_18732_02", "TANK", "Wenn sich ein Leerwandler dem Boss naehrt, kite den Boss weg, damit die DDs das Add downen koennen. Beruehrt das Add den Boss, macht es Schaden, Knockback und heilt ihn.", 40},
	{"shadow_lab_18732_03", "DAMAGE", "Wenn Leerwandler aus den Leerenrissen spawnen, muessen sie schnell getoetet werden, bevor sie den Boss erreichen.", 30},
	{"shadow_lab_18732_04", "Important", "Wenn der Boss Schatten herbeiziehen wirkt, werden alle Spieler auf seine Plattform teleportiert und er legt dort einen harten Regen-des-Feuers-AoE.", 20},
	{"shadow_lab_18732_05", "Important", "Nur Heroisch: Der Boss banisht einen zufaelligen Spieler fuer 6 Sek. Dieser Spieler ist unverwundbar, kann aber in der Zeit nichts tun.", 10},
}
tipsMap_deDE[18708] = {
	{"shadow_lab_18708_01", "Important", "Naturschutztränke koennen helfen, einen Teil des Schadens im Kampf abzufangen.", 70},
	{"shadow_lab_18708_02", "Advanced", "POSITIONIERUNG: Außer waehrend Sonic Boom sollten alle Spieler weniger als 25 Meter vom Boss entfernt stehen, damit niemand Donnernder Sturm abbekommt. Dieser Naturschaden trifft Ziele in 25 Metern oder mehr Entfernung.", 60},
	{"shadow_lab_18708_03", "Important", "Nach Kampfbeginn auf das Emote 'Murmur draws energy from the air...' achten. Das ist das Signal fuer alle Spieler, inklusive Tank, mindestens 34 Meter wegzulaufen, um Sonic Boom zu ueberleben.", 50},
	{"shadow_lab_18708_04", "ROGUE", "Schurken koennen mit Mantel der Schatten einem Sonic Boom entgehen, wenn das Timing stimmt.", 40},
	{"shadow_lab_18708_05", "Important", "Wegen Resonanz, die Naturschaden an allen Spielern verursacht, wenn kein Meelee in Reichweite steht, muss der Tank nach Sonic Boom SOFORT wieder an den Boss ran.", 30},
	{"shadow_lab_18708_06", "Dodge", "Achte auf Berührung von Murmur und lauf vom betroffenen Spieler weg. Beim Auslaufen werden der Spieler und alle Verbündeten in 20 Metern 6 Sek. lang gesilenced.", 20},
	{"shadow_lab_18708_07", "HEALER", "Wenn der Heiler von Berührung von Murmur betroffen ist, die Gruppe, vor allem den Tank, vorher hochheilen, weil der Silence danach 6 Sek. lang jede Heilung verhindert.", 10},
}
tipsMap_deDE[19226] = {
	{"shadow_lab_19226_01", "PriorityTargets", "Wenn der Leerwandler den Boss erreicht, explodiert er, verursacht Schattenschaden, Knockback und heilt den Boss.", 20},
	{"shadow_lab_19226_02", "TANK", "Wenn der DPS die Leerwandler nicht schnell genug killt, den Boss kiten und Kontakt vermeiden.", 10},
}
tipsMap_deDE[18631] = {
	{"shadow_lab_18631_01", "Important", "Tank sollte Instant-Faehigkeiten nutzen, da der Mob mit Kick Casts unterbrechen kann. Wenn er Aggro verliert, Slows nutzen, damit er keinen Caster lockt.", 10},
}
tipsMap_deDE[15608] = {
	{"black_morass_15608_01", "Legion", "", 10},
}
tipsMap_deDE[17023] = {
	{"black_morass_17023_01", "Legion", "", 10},
}
tipsMap_deDE[17918] = {
	{"black_morass_17918_01", "Legion", "Wird mit Chronobake erzeugt und kann waehrend Bossportalen die Welpen uebernehmen. Vorher bei Sa'at fuer jedes Gruppenmitglied einen abholen.", 10},
}
tipsMap_deDE[20201] = {
	{"black_morass_20201_01", "Important", "Mit ihm sprechen, um einen Chronobaken zu bekommen. Den braucht ihr gegen die kleinen Welpen aus Bossportalen, die Medivh angreifen.", 10},
}
tipsMap_deDE[17879] = {
	{"black_morass_17879_01", "Important", "CHRONOBAKE: Zwischen Bossportal und Medivh stehen und GENAU EINEN Chronobaken nutzen, um einen Zeitwaechter gegen die Welpen zu beschwoeren. Nicht zu nah am Boss spawnen, sonst despawnt der Drache.", 40},
	{"black_morass_17879_02", "Important", "Heldentum bzw. Kampfrausch ist fuer DIESEN Boss eine gute Idee. Arkane Entladung hat 50 Meter Reichweite und erhoeht den Schaden der naechsten Arkane Entladung.", 30},
	{"black_morass_17879_03", "Important", "Arkanexplosion verursacht Arkanschaden plus Knockback.", 20},
	{"black_morass_17879_04", "TANK", "Mit dem Ruecken an einen Baum oder ein anderes Objekt stellen, um den Knockback des Bosses abzufangen.", 10},
}
tipsMap_deDE[17880] = {
	{"black_morass_17880_01", "Important", "CHRONOBAKE: Zwischen Bossportal und Medivh stehen und GENAU EINEN Chronobaken nutzen, um einen Zeitwaechter gegen die Welpen zu beschwoeren. Nicht zu nah am Boss spawnen, sonst despawnt der Drache.", 110},
	{"black_morass_17880_02", "Important", "HAST beschleunigen vom Boss dispellen, um seinen Schaden zu senken.", 100},
	{"black_morass_17880_03", "Important", "Tödliche Wunde kann durch Ausweichen, Parieren, Blocken, Verfehlen und auch durch Machtwort: Schild abgefedert werden.", 90},
	{"black_morass_17880_04", "Advanced", "OFF-TANK-STRATEGIE:", 80},
	{"black_morass_17880_05", "Important", "Der Boss ist nicht verspottbar. Ein Offtank oder DD kann gezielt hohe Bedrohung erzeugen, damit Tödliche Wunde vom Tank faellt.", 70},
	{"black_morass_17880_06", "DRUID", "Zum Offtanken Baerengestalt nutzen, um Bedrohung aufzubauen.", 60},
	{"black_morass_17880_07", "SHAMAN", "Zum Offtanken Schild, Frostschock und Meeleeschlaege nutzen, um Bedrohung zu erzeugen.", 50},
	{"black_morass_17880_08", "HUNTER", "Zum Offtanken helfen Ablenkender Schuss, Aspekt des Affen und Abschreckung.", 40},
	{"black_morass_17880_09", "WARLOCK", "Zum Offtanken sengender Schmerz fuer Bedrohung nutzen, Seelenverbindung zum Abfedern und Seelensteinwurf zum Droppen der Bedrohung.", 30},
	{"black_morass_17880_10", "PALADIN", "Zum Offtanken Rechtschaffene Wut, Richturteil und Weihe fuer Bedrohung nutzen.", 20},
	{"black_morass_17880_11", "WARRIOR", "Zum Offtanken Defensivhaltung zum Aufbau von Bedrohung nutzen.", 10},
}
tipsMap_deDE[17881] = {
	{"black_morass_17881_01", "Important", "Chronobaken sind bei diesem Boss keine gute Idee, weil er beschworene Drachen mit einem AoE-Dispel zerstoert.", 100},
	{"black_morass_17881_02", "TANK", "Den Boss von der Gruppe wegdrehen, damit niemand außer dem Tank vom Sandatem getroffen wird.", 90},
	{"black_morass_17881_03", "WARRIOR", "Zauberreflexion kann Immunitaet gegen Zeitstopp geben, wenn sie rechtzeitig vor dem Cast aktiv ist.", 80},
	{"black_morass_17881_04", "HUNTER", "Das Tier in Euch kann Immunitaet gegen Zeitstopp geben, wenn es passend davor aktiviert wird.", 70},
	{"black_morass_17881_05", "ROGUE", "Mantel der Schatten kann Immunitaet gegen Zeitstopp geben, wenn das Timing stimmt.", 60},
	{"black_morass_17881_06", "Important", "DDs und Heiler sollten seitlich am Boss stehen, um Sandatem zu vermeiden.", 50},
	{"black_morass_17881_07", "Defensives", "In der Enrage-Phase Def-CDs nutzen. Der Tank braucht dann oft auch deutlich mehr Heilung.", 40},
	{"black_morass_17881_08", "HUNTER", "Raserei des Bosses mit Beruhigender Schuss entfernen.", 30},
	{"black_morass_17881_09", "Important", "Der Boss stoppt regelmaessig die Zeit fuer 6 Sek. Manche Faehigkeiten oder PvP-Trinkets koennen das entfernen.", 20},
	{"black_morass_17881_10", "HEALER", "Den Tank waehrend des gesamten Kampfes moeglichst nahe an vollem Leben halten.", 10},
}
tipsMap_deDE[17839] = {
	{"black_morass_17839_01", "TANK", "DEFENSIVE: Der Mob legt Tödlicher Stoß und reduziert damit Heilungseffekte.", 40},
	{"black_morass_17839_02", "Important", "Risslord sollte von Spielern weg getankt werden, wegen Donnerknall als Natur-AoE.", 30},
	{"black_morass_17839_03", "Important", "Der Mob wirft das Ziel zu Boden und stunnt es 2 Sek.", 20},
	{"black_morass_17839_04", "Defensives", "Wenn Raserei aktiv ist, bekommt der Tank deutlich mehr Schaden und braucht mehr Heilung.", 10},
}
tipsMap_deDE[21104] = {
	{"black_morass_21104_01", "Legion", "Mage-Typ macht Feuerschaden, Warlock-Typ Schattenschaden. Entsprechende Auren oder Buffs helfen.", 90},
	{"black_morass_21104_02", "Advanced", "HEXER-TYP (Schatten):", 80},
	{"black_morass_21104_03", "Important", "Fluch der Verwundbarkeit vom Spieler dispellen. Der Spieler erleidet 30 Sek. lang 50% mehr magischen Schaden.", 70},
	{"black_morass_21104_04", "Interrupts", "Kick: Fear (20 Meter, 1,5-Sek.-Cast, 4 Sek. Fear).", 60},
	{"black_morass_21104_05", "Interrupts", "Kick: Schattenblitzsalve. Besonders wichtig, wenn der Tank Fluch der Verwundbarkeit hat und er nicht entfernt werden kann.", 50},
	{"black_morass_21104_06", "Advanced", "MAGE-TYP (Feuer):", 40},
	{"black_morass_21104_07", "Important", "Polymorph vom Spieler dispellen, besonders von Tank oder Heiler.", 30},
	{"black_morass_21104_08", "Advanced", "BEIDE TYPEN:", 20},
	{"black_morass_21104_09", "Defensives", "Wenn Raserei aktiv ist, bekommt der Tank deutlich mehr Schaden und braucht mehr Heilung.", 10},
}
tipsMap_deDE[21697] = {
	{"black_morass_21697_01", "Legion", "Wenn die Gruppe bei Chronolord Deja wiped, erscheint dieser 'Boss' stattdessen und droppt keinen Loot.", 10},
}
tipsMap_deDE[21698] = {
	{"black_morass_21698_01", "Legion", "Wenn die Gruppe bei Temporus wiped, erscheint dieser 'Boss' stattdessen.", 10},
}
tipsMap_deDE[17835] = {
	{"black_morass_17835_01", "Legion", "Schurkenartiger Mob.", 30},
	{"black_morass_17835_02", "PriorityTargets", "Der Mob laeuft auf Medivh zu und kann einen Wipe ausloesen, wenn sein Schild bricht. Dann beginnt alles wieder bei Portal 1.", 20},
	{"black_morass_17835_03", "Important", "Nutzen Meucheln von hinten auf ihr Ziel.", 10},
}
tipsMap_deDE[17892] = {
	{"black_morass_17892_01", "Legion", "Verursacht Arkanschaden. Passende Pots helfen beim Mitigieren.", 40},
	{"black_morass_17892_02", "PriorityTargets", "Der Mob laeuft auf Medivh zu und kann einen Wipe ausloesen, wenn sein Schild bricht. Dann beginnt alles wieder bei Portal 1.", 30},
	{"black_morass_17892_03", "Important", "Pet-Klassen koennen diese Mobs gut aufnehmen, da sie Arkane Explosion auf nahe Spieler wirken.", 20},
	{"black_morass_17892_04", "HEALER", "Spieler in Reichweite des Chronomanten, vor allem Meelees, bekommen mehr Schaden durch seine AoE.", 10},
}
tipsMap_deDE[18994] = {
	{"black_morass_18994_01", "PriorityTargets", "Der Mob laeuft auf Medivh zu und kann einen Wipe ausloesen, wenn sein Schild bricht. Dann beginnt alles wieder bei Portal 1.", 10},
}
tipsMap_deDE[18995] = {
	{"black_morass_18995_01", "Legion", "Verursacht Feuer- und Schattenschaden. Passende Buffs oder Auren helfen.", 20},
	{"black_morass_18995_02", "PriorityTargets", "Der Mob laeuft auf Medivh zu und kann einen Wipe ausloesen, wenn sein Schild bricht. Dann beginnt alles wieder bei Portal 1.", 10},
}
tipsMap_deDE[21818] = {
	{"black_morass_21818_01", "PriorityTargets", "Der Mob laeuft auf Medivh zu und kann einen Wipe ausloesen, wenn sein Schild bricht. Dann beginnt alles wieder bei Portal 1.", 20},
	{"black_morass_21818_02", "Important", "Die Mobs kommen schnell hintereinander aus dem Portal. Tank sollte sie per AoE aufnehmen, aber alle DDs sollten sie einfach schnell downen.", 10},
}
tipsMap_deDE[18632] = {
	{"shadow_lab_18632_01", "Important", "Diese Mobs von der Gruppe weg tanken, da der Tank meist zwei gleichzeitig hat.", 40},
	{"shadow_lab_18632_02", "Important", "Immun gegen die meisten Arten von CC.", 30},
	{"shadow_lab_18632_03", "Dodge", "AUSWEICHEN: Wirbelwind ist gechannelt. Sofort rauslaufen, solange der Cast aktiv ist.", 20},
	{"shadow_lab_18632_04", "DAMAGE", "Wenn zwei Henker zusammen kommen, immer einen nach dem anderen fokussieren. Der Wirbelwind kann selbst fuer Tanks gefaehrlich werden.", 10},
}
tipsMap_deDE[18633] = {
	{"shadow_lab_18633_01", "PriorityTargets", "Heiler-Mob, der per CC gesichert oder direkt fokussiert werden sollte.", 20},
	{"shadow_lab_18633_02", "Interrupts", "Kick: Heilung.", 10},
}
tipsMap_deDE[18634] = {
	{"shadow_lab_18634_01", "PriorityTargets", "Der Mob beschwoert zwei Adds. Vorher schnell per CC sichern oder vor den anderen nicht beschworenen Mobs im Pack töten. Solange die beschworenen Mobs leben, haben diese Prio.", 10},
}
tipsMap_deDE[18635] = {
	{"shadow_lab_18635_01", "Important", "Am besten weg von der Gruppe tanken, da der Mob physischen AoE-Schaden verursacht. Meelees brauchen hier ggf. Extra-Heilung.", 10},
}
tipsMap_deDE[17653] = {
	{"bloodfurnace_17653_01", "Important", "Sobald die Adds down sind, kommt der Boss auf die Gruppe.", 10},
}
tipsMap_deDE[17370] = {
	{"bloodfurnace_17370_01", "Important", "Schildhieb betaeubt den Spieler 2 Sek.", 10},
}
tipsMap_deDE[17371] = {
	{"bloodfurnace_17371_01", "Important", "Hexerartiger Mob, der Schattenschaden macht.", 20},
	{"bloodfurnace_17371_02", "Important", "Fluch der Sprachen vom Spieler dispellen. Er verlaengert die Zauberzeit von Faehigkeiten.", 10},
}
tipsMap_deDE[17395] = {
	{"bloodfurnace_17395_01", "PriorityTargets", "Hexerartiger Mob, der Feuerschaden macht und Pets beschwoert.", 20},
	{"bloodfurnace_17395_02", "Important", "Kick: Teufelshund / Manapirscher / Verfuehrerin beschwoeren.", 10},
}
tipsMap_deDE[17397] = {
	{"bloodfurnace_17397_01", "Important", "Kriegerartiger Mob mit Wirbelwind. Meelees muessen schnell raus.", 10},
}
tipsMap_deDE[17400] = {
	{"bloodfurnace_17400_01", "Important", "Stealth-Mob. Nicht vor den Tank laufen.", 10},
}
tipsMap_deDE[17414] = {
	{"bloodfurnace_17414_01", "Important", "Spieler sollten sich bei diesem Mob verteilen, um AoE-Feuerschaden durch Dynamitwurf zu vermeiden.", 70},
	{"bloodfurnace_17414_02", "Important", "Diese Mobs legen außerdem Annäherungsminen auf den Boden. Diese Minen vermeiden. Schurken, Hunter und Hexer können sie beseitigen.", 60},
	{"bloodfurnace_17414_03", "ROGUE", "Mit Entschärfen Annäherungsminen deaktivieren.", 50},
	{"bloodfurnace_17414_04", "HUNTER", "Auge des Wildtiers kann es dem Pet erlauben, Minen auszulösen, besonders mit einem Pet mit hoher Ausdauer.", 40},
	{"bloodfurnace_17414_05", "WARLOCK", "Auge von Kilrogg nutzen, um nach einem Pull Minen vor der Gruppe zu räumen. Kann Mobs anziehen, also vorsichtig sein.", 30},
	{"bloodfurnace_17414_06", "MAGE", "Feuerzauberschutz kann genutzt werden, um Annäherungsminen auszulösen.", 20},
	{"bloodfurnace_17414_07", "Defensives", "Die Mobs casten ein Schweigen auf einen Spieler. Trifft das 5-Sek.-Schweigen den Heiler, braucht der Tank eventuell zusätzliche Def-CDs.", 10},
}
tipsMap_deDE[17477] = {
	{"bloodfurnace_17477_01", "Important", "Wichtel, der Feuerschaden verursacht.", 10},
}
tipsMap_deDE[17491] = {
	{"bloodfurnace_17491_01", "Legion", "Etwa 6 bis 7 Mobs dieses Typs gibt es in dieser Instanz.", 40},
	{"bloodfurnace_17491_02", "Important", "Diese Mobs sind getarnt und koennen mit Leuchtfeuer des Hunters aufgedeckt werden. DDs sollten nicht vor den Tank laufen.", 30},
	{"bloodfurnace_17491_03", "Important", "Gift vom Spieler dispellen. Es ist ein Natur-DoT über 15 Sek.", 20},
	{"bloodfurnace_17491_04", "Important", "Wenn der Tank von Nierenhieb getroffen wird, sollten DDs den Mob verlangsamen oder kiten, bis der Tank wieder Aggro hat.", 10},
}
tipsMap_deDE[17624] = {
	{"bloodfurnace_17624_01", "Legion", "Bufft Verbuendete mit Schlachtruf.", 10},
}
tipsMap_deDE[17626] = {
	{"bloodfurnace_17626_01", "Important", "Aufwaertshieb verursacht Waffenschaden plus Knockback. Tank sollte mit dem Ruecken zur Wand stehen oder genau wissen, wohin er geschleudert wird.", 10},
}
tipsMap_deDE[18894] = {
	{"bloodfurnace_18894_01", "Important", "Aufwaertshieb verursacht Waffenschaden plus Knockback. Tank sollte mit dem Ruecken zur Wand stehen oder genau wissen, wohin er geschleudert wird.", 10},
}
tipsMap_deDE[19016] = {
	{"bloodfurnace_19016_01", "Important", "Wichtel, der Feuerschaden verursacht.", 10},
}
tipsMap_deDE[16807] = {
	{"shattered_halls_16807_01", "Important", "Der Kampf beginnt, wenn der letzte bzw. vierte Teufelsorc-Konvertit stirbt. Er kann von Spielern oder notfalls vom Boss selbst getoetet werden, wenn die Gruppe zu lange braucht.", 90},
	{"shattered_halls_16807_02", "Legion", "Schattenwiderstands-Buffs oder -Auren helfen hier, wenn ihr Probleme habt.", 80},
	{"shattered_halls_16807_03", "Advanced", "PHASE 1:", 70},
	{"shattered_halls_16807_04", "Dodge", "AUSWEICHEN: Spieler in den Leerzonen muessen sofort rauslaufen.", 60},
	{"shattered_halls_16807_05", "Important", "Der Boss castet Todesmantel auf zufaellige Spieler und verursacht Schattenschaden plus 4 Sek. Fear.", 50},
	{"shattered_halls_16807_06", "SHAMAN", "Tremor Totem kann helfen, den Heiler vor dem 4-Sek.-Fear durch Todesmantel zu schuetzen.", 40},
	{"shattered_halls_16807_07", "Advanced", "PHASE 2 (beginnt bei 20% Boss-Leben):", 30},
	{"shattered_halls_16807_08", "Important", "Der Boss beginnt mit Dunkler Wirbelwind und verursacht Nahkampfschaden plus Schattenblitze auf zufaellige Spieler. In Phase 2 schnell burnen.", 20},
	{"shattered_halls_16807_09", "ROGUE", "Mantel der Schatten und Ausweichen fuer die gefaehrlichen Momente in Phase 2 aufsparen.", 10},
}
tipsMap_deDE[20923] = {
	{"shattered_halls_20923_01", "TANK", "Den Boss an einer Wand tanken.", 30},
	{"shattered_halls_20923_02", "Important", "Hat einen kurzen Fear.", 20},
	{"shattered_halls_20923_03", "Important", "Durch den harten Meeleecleave bekommen Spieler nahe am Boss mehr Schaden und brauchen mehr Heilung.", 10},
}
tipsMap_deDE[16809] = {
	{"shattered_halls_16809_01", "Legion", "HEROISCH: Am besten tankt hier ein Tank in DPS-Gear, da der Boss nicht verspottbar ist. Tank und zwei DDs mit etwa 8500 gebufften HP helfen. Der dritte DD sollte mit Off-Heals unterstuetzen.", 110},
	{"shattered_halls_16809_02", "TANK", "Den Boss in der Mitte des Raums tanken und auf getarnte Assassinen vorbereitet sein, wenn der Boss Fear ausloest.", 100},
	{"shattered_halls_16809_03", "Important", "Nicht verspottbar. Hohe Bedrohungsfaehigkeiten sorgen nur dafuer, dass der Boss diesen Spieler fokussiert.", 90},
	{"shattered_halls_16809_04", "Important", "BEATDOWN: Wenn der Boss emotet, wiped er die Aggro und greift einen zufaelligen Spieler an.", 80},
	{"shattered_halls_16809_05", "PALADIN", "Als Tank Siegel der Vergeltung nutzen. Der fuenfte Stapel hilft, nach einem Aggrowipe schneller wieder Aggro zu ziehen.", 70},
	{"shattered_halls_16809_06", "WARRIOR", "Als Tank immer Ruestungszerreissen gestackt halten, damit du nach dem Aggrowipe schneller wieder Aggro aufbauen kannst.", 60},
	{"shattered_halls_16809_07", "DRUID", "Als Tank Zerfleischen auf dem Boss halten, damit du nach dem Aggrowipe schneller wieder Aggro ziehen kannst.", 50},
	{"shattered_halls_16809_08", "Defensives", "Wenn die Waffe des Bosses rot leuchtet, verursacht er erhoehten Feuerschaden und castet eine AoE-Druckwelle mit Slow.", 40},
	{"shattered_halls_16809_09", "Important", "FEAR: Der Boss verteilt einen 3-Sek.-AoE-Fear.", 30},
	{"shattered_halls_16809_10", "SHAMAN", "Tremor Totem hilft gegen den AoE-Fear des Bosses.", 20},
	{"shattered_halls_16809_11", "Important", "Der Boss nutzt gelegentlich Donnerknall auf Spieler in Meeleereichweite. Das reduziert 10 Sek. lang Angriffstempo und Bewegungstempo um 35% und sollte entfernt werden.", 10},
}
tipsMap_deDE[16808] = {
	{"shattered_halls_16808_01", "Advanced", "POSITIONIERUNG: Den Boss am Eingang seiner Plattform tanken und in dieselbe Richtung ausrichten. Der Heiler steht auf der gegenueberliegenden Seite, die DDs dazwischen. Spieler sollten sich moeglichst verteilen.", 60},
	{"shattered_halls_16808_02", "Legion", "AUFGABEN: Damit der Heiler nicht oom geht, sollte ein DD nur Adds machen, ein zweiter zwischen Boss und Adds wechseln und ein dritter den Boss fokussieren.", 50},
	{"shattered_halls_16808_03", "Important", "ADDS: Rund 30 Sek. nach Kampfbeginn und dann immer oefter ruft der Boss Adds. Sie kommen ueber die Treppe zur Plattform. Tank sollte sie sofort einsammeln, DDs fokussieren Adds mit Prio.", 40},
	{"shattered_halls_16808_04", "Important", "Wenn die Gruppe die steigende Zahl an Adds nicht kontrolliert, wird der Kampf schnell unspielbar und endet im Wipe.", 30},
	{"shattered_halls_16808_05", "Important", "KLINGENTANZ / STURMANGRIFF: Etwa 30 Sek. nach Pull und danach alle 30 Sek. stuermt der Boss auf einen zufaelligen Spieler und trifft ihn mit 1 Sek. Stun. Spaeter charged er mehrere Spieler.", 20},
	{"shattered_halls_16808_06", "HEALER", "Waehren der Boss Schmetterschlaege aktiv hat, treffen seine naechsten 5 Meeleeschlaege einen weiteren Spieler.", 10},
}
tipsMap_deDE[17621] = {
	{"shattered_halls_17621_01", "Legion", "Fury-Warrior-artiger Mob.", 30},
	{"shattered_halls_17621_02", "Important", "BLUTDURST: Die naechsten 5 erfolgreichen Angriffe heilen den Mob.", 20},
	{"shattered_halls_17621_03", "Defensives", "RASEREI: 1 Min. lang 30% mehr physischen Schaden und Angriffstempo.", 10},
}
tipsMap_deDE[17622] = {
	{"shattered_halls_17622_01", "Legion", "Hunter-artiger Mob.", 30},
	{"shattered_halls_17622_02", "Important", "STREUSCHUSS: Verursacht physischen Schaden und desorientiert den Spieler 4 Sek.", 20},
	{"shattered_halls_17622_03", "Important", "BRANDPFEIL: Legt einen Feuer-DoT auf den Spieler.", 10},
}
tipsMap_deDE[17623] = {
	{"shattered_halls_17623_01", "Legion", "Arms-Warrior-artiger Mob.", 40},
	{"shattered_halls_17623_02", "Important", "KNOCKBACK: Beim Kaempfen mit dem Ruecken zur Wand stehen.", 30},
	{"shattered_halls_17623_03", "Important", "SPALTEN: Der Mob trifft den Spieler und dessen naechsten Verbündeten mit physischem Schaden.", 20},
	{"shattered_halls_17623_04", "Defensives", "RASEREI: 1 Min. lang 30% mehr physischen Schaden und Angriffstempo.", 10},
}
tipsMap_deDE[16507] = {
	{"shattered_halls_16507_01", "Important", "Auf Heroisch immun gegen MC. Stuermt auf einen Gegner zu und betaeubt ihn 2 Sek.", 10},
}
tipsMap_deDE[16523] = {
	{"shattered_halls_16523_01", "Legion", "Arms-Warrior-artiger Mob.", 20},
	{"shattered_halls_16523_02", "Defensives", "Def-CDs nutzen, wenn der Mob mit Slice and Dice gebufft ist. Das erhoeht 8 Sek. lang sein Angriffstempo um 30%.", 10},
}
tipsMap_deDE[16593] = {
	{"shattered_halls_16593_01", "Important", "Auf Heroisch immun gegen MC.", 20},
	{"shattered_halls_16593_02", "Important", "Fluch der Zerschmetterten Hand vom Tank entfernen. Er erhoeht erlittenen Schaden um 15% und verursachten Schaden um 5%.", 10},
}
tipsMap_deDE[16594] = {
	{"shattered_halls_16594_01", "Legion", "Heiler-Priester-artiger Mob.", 20},
	{"shattered_halls_16594_02", "Interrupts", "Kick: Gebet der Heilung (3-Sek.-AoE-Heal). Der Mob kann auch per CC gesichert werden.", 10},
}
tipsMap_deDE[16699] = {
	{"shattered_halls_16699_01", "Legion", "Auf Normal und Heroisch immun gegen Gedankenkontrolle.", 20},
	{"shattered_halls_16699_02", "Important", "Der Reaver schleudert Spieler weg. Tank sollte bei diesem Mob mit dem Ruecken zur Wand stehen.", 10},
}
tipsMap_deDE[16700] = {
	{"shattered_halls_16700_01", "PriorityTargets", "Wenn einer aus seiner Truppe stirbt, ruft er Ersatz. Killt ihr diesen Mob zuerst, kommen fuer die anderen keine Verstaerkungen mehr.", 10},
}
tipsMap_deDE[16704] = {
	{"shattered_halls_16704_01", "Important", "Vipernbiss von Mananutzern dispellen, besonders vom Heiler.", 10},
}
tipsMap_deDE[17083] = {
	{"shattered_halls_17083_01", "Legion", "", 10},
}
tipsMap_deDE[17301] = {
	{"shattered_halls_17301_01", "Important", "Nur auf Heroisch. Wegen der Quest auf diesem Schwierigkeitsgrad muss dieser Mob schnell sterben, damit Gruppen mit Quest den Timer schaffen.", 10},
}
tipsMap_deDE[17356] = {
	{"shattered_halls_17356_01", "Legion", "Diese Mobs per AoE downen.", 20},
	{"shattered_halls_17356_02", "TANK", "AoE-Bedrohung wie Donnerknall oder Weihe nutzen, waehrend die DDs sie per AoE umhauen.", 10},
}
tipsMap_deDE[17357] = {
	{"shattered_halls_17357_01", "Legion", "Diese Mobs per AoE downen.", 20},
	{"shattered_halls_17357_02", "TANK", "AoE-Bedrohung wie Donnerknall oder Weihe nutzen, waehrend die DDs sie per AoE umhauen.", 10},
}
tipsMap_deDE[17420] = {
	{"shattered_halls_17420_01", "Legion", "", 10},
}
tipsMap_deDE[17427] = {
	{"shattered_halls_17427_01", "Dodge", "AUSWEICHEN: Der Mob castet Flammende Pfeile. Waehren des Gauntlet-Events darum herumlaufen.", 10},
}
tipsMap_deDE[17461] = {
	{"shattered_halls_17461_01", "Legion", "", 10},
}
tipsMap_deDE[17462] = {
	{"shattered_halls_17462_01", "Important", "Verursacht Verkrueppeln auf dem Spieler: physischer Schaden plus reduziertes Bewegungstempo.", 10},
}
tipsMap_deDE[17464] = {
	{"shattered_halls_17464_01", "Defensives", "Verpasst dem Tank Tödlicher Stoß und reduziert die Heilwirkung 5 Sek. lang um 50%. In der Zeit ggf. Def-CDs und Extra-Heilung.", 10},
}
tipsMap_deDE[17465] = {
	{"shattered_halls_17465_01", "Important", "Auf Heroisch diese Mobs ueberspringen, wenn ihr auf Timer spielt.", 10},
}
tipsMap_deDE[17578] = {
	{"shattered_halls_17578_01", "Legion", "", 10},
}
tipsMap_deDE[17669] = {
	{"shattered_halls_17669_01", "Legion", "", 10},
}
tipsMap_deDE[17670] = {
	{"shattered_halls_17670_01", "Important", "Range-Mob mit Pets. Auf Heroisch nicht per CC kontrollierbar.", 10},
}
tipsMap_deDE[17671] = {
	{"shattered_halls_17671_01", "Important", "Der Mob nutzt Schlaghagel und betaeubt 5 Sek. Das kann vor allem zu Pullbeginn die Aggro des Tanks zerstoeren. Danach muss der Tank sofort wieder ran und Aggro aufbauen.", 10},
}
tipsMap_deDE[17693] = {
	{"shattered_halls_17693_01", "Legion", "", 10},
}
tipsMap_deDE[17694] = {
	{"shattered_halls_17694_01", "Important", "Hexerartiger Mob.", 30},
	{"shattered_halls_17694_02", "Interrupts", "Kick: Fear.", 20},
	{"shattered_halls_17694_03", "Dodge", "Aus Regen des Feuers rauslaufen, wenn der Mob ihn auf eine Position castet.", 10},
}
tipsMap_deDE[17695] = {
	{"shattered_halls_17695_01", "Legion", "Getarnte, schurkenartige Mobs.", 20},
	{"shattered_halls_17695_02", "Important", "Beim ersten Aggro sapen sie einen zufaelligen Spieler, meist den vordersten, und greifen dann andere an. Solange Tank oder Heiler gesapt sind, sollte dieser Mob per CC gesichert werden.", 10},
}
tipsMap_deDE[17893] = {
	{"slavepens_17893_01", "Legion", "Befreie ihn aus dem Kaefig und es erscheinen mehrere Wellen von Mobs. Danach erneut mit ihm sprechen, um Naturwiderstand plus Stats zu bekommen.", 30},
	{"slavepens_17893_02", "TANK", "Die Mobs von Naturalist Bite fernhalten, dann bekommt ihr fuer den Endboss einen Naturwiderstands-Buff.", 20},
	{"slavepens_17893_03", "HEALER", "Naturalist Bite am Leben halten, damit ihr den Buff bekommt.", 10},
}
tipsMap_deDE[17941] = {
	{"slavepens_17941_01", "Important", "Vor dem Pull sicherstellen, dass ihr keine Adds mitzieht, die im Bosskampf stoeren.", 50},
	{"slavepens_17941_02", "PriorityTargets", "Als DD immer auf seine Totems wechseln, sobald sie liegen.", 40},
	{"slavepens_17941_03", "TANK", "Beim Vermeiden von Adds rueckwaerts gehen, damit du den Boss aus der Reichweite seiner Totems ziehst.", 30},
	{"slavepens_17941_04", "WARRIOR", "Zauberreflexion gegen die Blitzschlaege des Bosses nutzen.", 20},
	{"slavepens_17941_05", "SHAMAN", "Erdungs-Totem absorbiert Blitzschlaege.", 10},
}
tipsMap_deDE[17991] = {
	{"slavepens_17991_01", "Advanced", "POSITIONIERUNG: Wenn Tank und DDs zwischen Boss und Heiler stehen, kann der Heiler eventuell ausserhalb der Reichweite von Wasserspucken bleiben.", 80},
	{"slavepens_17991_02", "TANK", "Def-CDs gut timen, der Boss haut hart zu.", 70},
	{"slavepens_17991_03", "HEALER", "Spieler mit SCHWERE WUNDE auf voll heilen, damit der Debuff verschwindet.", 60},
	{"slavepens_17991_04", "DAMAGE", "Spieler koennen Verbände nutzen, wenn sie nicht gerade vom Boss im Meelee getroffen werden, um den Heiler bei SCHWERE WUNDE zu entlasten.", 50},
	{"slavepens_17991_05", "HEALER", "Wenn du nicht gerade SCHWERE WUNDE gegenheilen musst, hat der Tank wegen des hohen Boss-Schadens Prio.", 40},
	{"slavepens_17991_06", "Important", "WASSERSPUCKE ist ein AoE-Frostangriff. Pots oder Widerstaende helfen.", 30},
	{"slavepens_17991_07", "Important", "HEROISCH: Der Boss enraged bei 20%. Heiltraenke und Gesundheitssteine fuer diese Phase aufsparen.", 20},
	{"slavepens_17991_08", "Legion", "Der Boss verursacht mit WASSERSPUCKE Frostschaden in 40 Metern Reichweite. Frostwiderstands-Aura oder Buffs helfen.", 10},
}
tipsMap_deDE[17942] = {
	{"slavepens_17942_01", "Legion", "Verursacht Naturschaden. Alle Spieler sollten passende Naturwiderstands-Gear oder Pots fuer den Kampf nutzen.", 50},
	{"slavepens_17942_02", "Important", "Vor dem Bosskampf unbedingt den Naturwiderstands-Buff von Naturalist Bite holen. Beim Befreien aus dem Kaefig spawnen Adds.", 40},
	{"slavepens_17942_03", "Advanced", "POSITIONIERUNG: Der Tank sollte den Boss von der Gruppe wegdrehen, am besten mit dem Ruecken zur Wand, damit Cleave und Knockback nicht die Gruppe treffen. Alle anderen sollen sich verteilen und nicht bei Naturalist Bite stehen, weil die Natur-AoE den NPC toeten kann.", 30},
	{"slavepens_17942_04", "Important", "GIFTBOLZEN-SALVE: Großer Radius, ignoriert LoS und verursacht Naturschaden plus DoT.", 20},
	{"slavepens_17942_05", "Important", "Wenn du Gift dispellen kannst, dann tu es hier auch.", 10},
}
tipsMap_deDE[18176] = {
	{"slavepens_18176_01", "Important", "Haelt 30 Sek. und immobilisiert Spieler in der Naehe. Eventuell muessen Ranges das Totem uebernehmen.", 10},
}
tipsMap_deDE[18177] = {
	{"slavepens_18177_01", "PriorityTargets", "Haelt 60 Sek. und reduziert den Meeleeschaden, den der Boss nimmt, um 50%.", 10},
}
tipsMap_deDE[18179] = {
	{"slavepens_18179_01", "PriorityTargets", "Verursacht nach 18 Sek. AoE-Feuerschaden an Spielern oder sofort, wenn es angegriffen wird. Wenn ihr den Boss in diesem Fenster killen oder aus der Reichweite ziehen koennt, lasst das Nova-Totem stehen.", 10},
}
tipsMap_deDE[20208] = {
	{"slavepens_20208_01", "PriorityTargets", "Spieler muessen das Totem sofort focussen, weil es Verbündete in der Nähe heilt.", 10},
}
tipsMap_deDE[17816] = {
	{"slavepens_17816_01", "Defensives", "Der Tank braucht eventuell einen Def-CD oder Extra-Heilung, wenn ihn Durchbohrender Stoß trifft. Das reduziert 20 Sek. lang die Rüstung des Spielers um 15%.", 10},
}
tipsMap_deDE[17817] = {
	{"slavepens_17817_01", "Important", "Der Tank sollte zurueckgehen, damit der Boss nicht direkt aus dem Wasser auf dem Heiler oder den DDs landet.", 10},
}
tipsMap_deDE[17938] = {
	{"slavepens_17938_01", "Legion", "Der Mob verursacht vor allem Feuerschaden durch Schweres Dynamit als AoE und durch Versengen.", 20},
	{"slavepens_17938_02", "Important", "Auf Heroisch immun gegen Gedankenkontrolle und Verführung des Hexers, aber selbst dort anfällig für Fear und Eiskältefalle.", 10},
}
tipsMap_deDE[17940] = {
	{"slavepens_17940_01", "Dodge", "AUSWEICHEN / RAUSLAUFEN aus Regen des Feuers und Blizzard-AoE-Effekten.", 10},
}
tipsMap_deDE[17957] = {
	{"slavepens_17957_01", "Important", "Der Tank sollte diese Mobs von der Gruppe wegdrehen, da sie Spalten nutzen.", 30},
	{"slavepens_17957_02", "Important", "Der Champion castet Furchterregender Schrei, einen sofortigen AoE-Fear.", 20},
	{"slavepens_17957_03", "Important", "Auf Heroisch ist der Mob immun gegen Gedankenkontrolle.", 10},
}
tipsMap_deDE[17958] = {
	{"slavepens_17958_01", "Important", "Diese Mobs brechen CC auf Normal und sind auf Heroisch gegen jede Form von CC immun.", 20},
	{"slavepens_17958_02", "Important", "Kommt dieses Pack doppelt, kann ein Verteidiger von einem Ranged-DD verlangsamt oder gekitet werden, während Tank und Gruppe den anderen töten.", 10},
}
tipsMap_deDE[17959] = {
	{"slavepens_17959_01", "Defensives", "Der Tank braucht eventuell einen Def-CD bei Schädelknacker. Dieser Debuff reduziert 15 Sek. lang die Ausdauer und kann Extra-Heilung erfordern.", 20},
	{"slavepens_17959_02", "Important", "Der Mob betäubt einen Spieler, meist den Tank, 3 Sek. lang. Läuft er dann weg, sollte er verlangsamt und gekitet werden, bis der Tank wieder handeln kann.", 10},
}
tipsMap_deDE[17960] = {
	{"slavepens_17960_01", "Legion", "Arkaner Magier-artiger Mob.", 40},
	{"slavepens_17960_02", "Important", "Der Mob castet gelegentlich Beherrschung, eine 10-Sek.-Gedankenkontrolle auf einen Spieler. Dieser Spieler sollte gestunnt oder per CC gesichert werden.", 30},
	{"slavepens_17960_03", "Important", "Der Mob ist auf Normal und Heroisch für alle Formen von CC anfällig, auch für Gedankenkontrolle.", 20},
	{"slavepens_17960_04", "Legion", "Verfallene Intelligenz kann vom Spieler entfernt werden. Dieser Magieeffekt hält 20 Sek. und reduziert die Intelligenz um 25%.", 10},
}
tipsMap_deDE[17961] = {
	{"slavepens_17961_01", "Legion", "Auf Heroisch immun gegen Gedankenkontrolle.", 40},
	{"slavepens_17961_02", "PriorityTargets", "Die Verzauberin übernimmt gelegentlich Spieler. Dieser Spieler sollte gestunnt oder per CC gesichert werden.", 30},
	{"slavepens_17961_03", "Important", "Spieler sollten aus Gewitterwolke herauslaufen.", 20},
	{"slavepens_17961_04", "Important", "Verschlingende Wurzeln als Magieeffekt von Spielern dispellen, wenn der Mob Gewitterwolke castet.", 10},
}
tipsMap_deDE[17962] = {
	{"slavepens_17962_01", "Legion", "Kann per CC gesichert werden, ist aber auf Heroisch gegen Gedankenkontrolle immun.", 20},
	{"slavepens_17962_02", "PriorityTargets", "Verkrüppeln vom Spieler dispellen. Dieser Magieeffekt reduziert Bewegungstempo und Stärke um 50% und erhöht die Zeit zwischen Angriffen 15 Sek. lang um 100%.", 10},
}
tipsMap_deDE[17963] = {
	{"slavepens_17963_01", "Legion", "Diese Mobs ignorieren und stattdessen ihre Naga-Herren focussen.", 10},
}
tipsMap_deDE[17964] = {
	{"slavepens_17964_01", "Legion", "Diese Mobs ignorieren und stattdessen ihre Naga-Herren focussen.", 10},
}
tipsMap_deDE[21126] = {
	{"slavepens_21126_01", "PriorityTargets", "Kick: Heal.", 20},
	{"slavepens_21126_02", "Important", "Auf Normal und Heroisch gegen alle Formen von CC anfaellig, auch Gedankenkontrolle.", 10},
}
tipsMap_deDE[21127] = {
	{"slavepens_21127_01", "Important", "Tödliches Gift vom Spieler dispellen. Es ist ein Natur-DoT ueber 15 Sek.", 10},
}
tipsMap_deDE[21128] = {
	{"slavepens_21128_01", "PriorityTargets", "Der Mob castet Psychischer Schrecken als AoE-Fear. Diese Pets schnell downen.", 10},
}
tipsMap_deDE[18641] = {
	{"shadow_lab_18641_01", "Legion", "", 10},
}
tipsMap_deDE[18642] = {
	{"shadow_lab_18642_01", "PriorityTargets", "Teufelshunde, die Spieler 4 Sek. lang spelllocken koennen. Verlangsamungen nutzen, waehrend die DDs sie fokussieren.", 10},
}
tipsMap_deDE[18663] = {
	{"shadow_lab_18663_01", "PriorityTargets", "Nicht-Elite-Mob, der einen Spieler 6 Sek. lang uebernehmen kann.", 30},
	{"shadow_lab_18663_02", "WARLOCK", "Der Mob ist anfaellig fuer Verbannen und Versklaven von Daemonen.", 20},
	{"shadow_lab_18663_03", "Important", "Verfuehrung vom Spieler dispellen oder den betroffenen Spieler per CC sichern.", 10},
}
tipsMap_deDE[18794] = {
	{"shadow_lab_18794_01", "Legion", "Kann entweder der schurkenartige Typ mit Dolchen oder der Caster-Typ mit Stab sein.", 60},
	{"shadow_lab_18794_02", "Advanced", "CASTER-TYP MIT STAB", 50},
	{"shadow_lab_18794_03", "Legion", "Dieser Typ verursacht eine Mischung aus Feuer- und Frostschaden.", 40},
	{"shadow_lab_18794_04", "Important", "Frostnova vom Tank dispellen, oder von mehreren Spielern per Massenbannung, wenn moeglich.", 30},
	{"shadow_lab_18794_05", "Advanced", "SCHURKEN-TYP MIT DOLCHEN", 20},
	{"shadow_lab_18794_06", "Important", "Nutzen haeufig Solarplexus auf dem Tank. Waehren der Tank keine Vermeidung hat, braucht er Extra-Heilung.", 10},
}
tipsMap_deDE[18796] = {
	{"shadow_lab_18796_01", "Important", "Diese Teufelswachen von anderen Gruppen wegziehen und mit dem Ruecken zur Wand kaempfen, wegen AoE-Fear und Knockback.", 20},
	{"shadow_lab_18796_02", "TANK", "Patrouilliert dieser Mob im Raum von Hellmaw, kaempft man ihn am besten im gebogenen Gang vor dem Bossraum. Aus dem Verbindungsgang kann man ihn sonst in den inzwischen leeren Add-Raum ziehen.", 10},
}
tipsMap_deDE[18797] = {
	{"shadow_lab_18797_01", "Legion", "", 10},
}
tipsMap_deDE[18830] = {
	{"shadow_lab_18830_01", "Important", "CC oder Verlangsamungen auf diesen Mob nutzen. Auf Heroisch immun gegen MC.", 20},
	{"shadow_lab_18830_02", "Important", "Der Fanatiker fixiert einen Spieler. Dieser muss den Mob 5 Sek. lang kiten, solange Fixieren aktiv ist.", 10},
}
tipsMap_deDE[18848] = {
	{"shadow_lab_18848_01", "Legion", "Die Shivarra verursacht vor allem Schattenschaden. Passende Auren, Buffs, Pots oder Gear helfen gegen einige Faehigkeiten.", 40},
	{"shadow_lab_18848_02", "Defensives", "Auf Malzeichen der Bosheit achten. Es legt 5 Stapel auf einen Spieler; pro Treffer verschwindet einer. Sind alle 5 innerhalb von 30 Sek. weg, bekommt der Spieler Schattenschaden.", 30},
	{"shadow_lab_18848_03", "Important", "Diesen Mob weg von der Gruppe kaempfen, wegen Schattennova.", 20},
	{"shadow_lab_18848_04", "Important", "Nur auf Heroisch: Die Shivarra entwaffnet den Tank 5 Sek. lang. DDs muessen in der Zeit auf ihre Aggro achten. Der Tank muss danach schnell wieder Aggro aufbauen.", 10},
}
tipsMap_deDE[19208] = {
	{"shadow_lab_19208_01", "PriorityTargets", "Von Beschwoerer der Kabale beschworen.", 30},
	{"shadow_lab_19208_02", "Legion", "Heilerartiger Mob.", 20},
	{"shadow_lab_19208_03", "Interrupts", "Kick: Heilung.", 10},
}
tipsMap_deDE[19209] = {
	{"shadow_lab_19209_01", "PriorityTargets", "Von Beschwoerer der Kabale beschworen.", 40},
	{"shadow_lab_19209_02", "Legion", "Kriegerartiger Mob.", 30},
	{"shadow_lab_19209_03", "Important", "DDs und Heiler sollten nicht zu nah an diesem Mob stehen, weil Schwarzes Spalten Schattenschaden verursacht und einen DoT auftraegt.", 20},
	{"shadow_lab_19209_04", "HEALER", "Der Deathsworn wirft Spieler regelmaessig zu Boden und betaeubt sie 2 Sek. Trifft es den Tank, braucht er Extra-Heilung.", 10},
}
tipsMap_deDE[22890] = {
	{"shadow_lab_22890_01", "Legion", "", 10},
}
tipsMap_deDE[17848] = {{"old_hillsbrad_17848_01", "Legion", "Einfacher Tank-and-Spank-Kampf, aber der Trash muss vorher weg sein, damit euch der Fear nicht in eine Pat schickt.", 30},
					{"old_hillsbrad_17848_02", "Important", "Der Boss castet Furchterregender Schrei, einen AoE-Fear mit 10 Metern Reichweite, der 6 Sek. hält. Außerhalb dieser Reichweite stehen, um Fear und Wirbelwind zu vermeiden.", 20},
					{"old_hillsbrad_17848_03", "Defensives", "Drake belegt sein Ziel mit Tödlicher Stoß und reduziert die Heilwirkung. Der Tank braucht in dieser Phase eventuell Def-CDs, um den Heiler zu entlasten.", 10}}
tipsMap_deDE[17862] = {{"old_hillsbrad_17862_01", "Legion", "Paladin-artiger Mob.", 80},
					{"old_hillsbrad_17862_02", "Advanced", "KILL ORDER: Warden (Heiler), Veteran (Schurke), dann Skarloc (Boss).", 70},
					{"old_hillsbrad_17862_03", "TANK", "Den Boss sofort aufnehmen und AoE-Bedrohung nutzen, um den Veteranen zu halten.", 60},
					{"old_hillsbrad_17862_04", "DAMAGE", "Zuerst den Warden (Heiler) fokussen, dann Veteran oder Boss. Der Tank sollte zu Kampfbeginn diese beiden Ziele binden.", 50},
					{"old_hillsbrad_17862_05", "Interrupts", "KICK: Heiliges Licht heilt einen Verbündeten.", 40},
					{"old_hillsbrad_17862_06", "HEALER", "Wird der Tank von Hammer der Gerechtigkeit getroffen, 5 Sek. Stun, musst du ihn sofort stabil halten.", 30},
					{"old_hillsbrad_17862_07", "WARLOCK", "Immun gegen Fluch der Sprachen.", 20},
					{"old_hillsbrad_17862_08", "Important", "Immer aus Weihe raus. Bist du der Tank, musst du den Boss herauskiten.", 10}}
tipsMap_deDE[18096] = {{"old_hillsbrad_18096_01", "Advanced", "PHASE ONE - Trashwellen", 100},
					{"old_hillsbrad_18096_02", "Legion", "1. Welle: Trash aus dem Westen, also aus derselben Richtung wie der Boss.", 90},
					{"old_hillsbrad_18096_03", "Legion", "2. Welle: Trash aus dem Süden, also aus der Richtung, aus der Thrall und die Spieler nach Tarrens Mühle gekommen sind.", 80},
					{"old_hillsbrad_18096_04", "Legion", "3. Welle: Trash wieder aus dem Westen, also aus derselben Richtung wie Boss und erste Welle.", 70},
					{"old_hillsbrad_18096_05", "Important", "Nach der dritten Welle Essen und Wasser nutzen, um Leben und Mana wieder aufzufüllen. Eure Pots aufsparen.", 60},
					{"old_hillsbrad_18096_06", "Advanced", "PHASE TWO - Nach einer kurzen Pause landet der Boss.", 50},
					{"old_hillsbrad_18096_07", "TANK", "Wenn der Boss landet, ihn beim kleinen Haus im Nordwesten von Tarrens Mühle unter dem Vordach tanken und von der Gruppe wegdrehen, wegen Sandatem als Frontal-Kegel. Er reduziert 10 Sek. lang Bewegungstempo und Angriffskraft.", 40},
					{"old_hillsbrad_18096_08", "Important", "Spieler sollten wegen Wing Buffet möglichst weit vom Boss weg stehen. Dieser Effekt schleudert Spieler innerhalb von 15 Metern zurück.", 30},
					{"old_hillsbrad_18096_09", "Important", "Der Boss hat eine Aura der Magiestörung, die regelmäßig magische Effekte und Buffs von Spielern entfernt.", 20},
					{"old_hillsbrad_18096_10", "Defensives", "Unter dem Effekt von Bevorstehender Tod erleidet der Spieler erhöhten Schaden. Def-CDs ziehen. Heiler soll diesen Spieler fokussen.", 10}}
tipsMap_deDE[18725] = {{"old_hillsbrad_18725_01", "Important", "Anklicken, um auf die andere Seite der Instanz geflogen zu werden.", 10}}
tipsMap_deDE[18786] = {{"old_hillsbrad_18786_01", "Important", "Thrall eskortieren und beschützen.", 10}}
tipsMap_deDE[17814] = {{"old_hillsbrad_17814_01", "Legion", "Protection-Warrior-artiger Mob.", 20},
					{"old_hillsbrad_17814_02", "Important", "Nachdem der Mob Schildblock gecastet hat, kann in den nächsten 5 Sek. nur der erste Meeleeschlag geblockt werden. In diesem Fenster keine großen CDs verschwenden.", 10}}
tipsMap_deDE[17815] = {{"old_hillsbrad_17815_01", "Legion", "Fernkampf-Mobs, die auf Spieler schießen.", 10}}
tipsMap_deDE[17819] = {{"old_hillsbrad_17819_01", "Important", "Diese Mobs cleaven den nächsten Verbündeten ihres Ziels. Der Tank sollte sie also von Range-DDs und Heiler wegziehen. Meelee-DDs brauchen eventuell Extra-Heilung.", 10}}
tipsMap_deDE[17820] = {{"old_hillsbrad_17820_01", "Important", "Wegen Streuschuss potenziell gefährlich. Dieser Desorient kann Spieler aus dem Kampf nehmen. Die Mobs können per CC gesichert werden.", 10}}
tipsMap_deDE[17833] = {{"old_hillsbrad_17833_01", "PriorityTargets", "Priester-Heiler-artiger Mob.", 40},
					{"old_hillsbrad_17833_02", "Important", "Kann per CC gesichert werden.", 30},
					{"old_hillsbrad_17833_03", "Interrupts", "KICK: Heilung heilt einen Verbündeten.", 20},
					{"old_hillsbrad_17833_04", "Interrupts", "KICK: Psychischer Schrei, 4-Sek.-AoE-Fear.", 10}}
tipsMap_deDE[17840] = {{"old_hillsbrad_17840_01", "Defensives", "Während Raserei braucht der Tank eventuell Def-CDs, um einen Teil des Schadens abzufangen.", 10}}
tipsMap_deDE[17846] = {{"old_hillsbrad_17846_01", "Legion", "", 10}}
tipsMap_deDE[17860] = {{"old_hillsbrad_17860_01", "Legion", "Schurken-artiger Mob.", 40},
					{"old_hillsbrad_17860_02", "Important", "Kann per CC gesichert werden.", 30},
					{"old_hillsbrad_17860_03", "Important", "Nierenhieb betäubt den Spieler 4 Sek. lang.", 20},
					{"old_hillsbrad_17860_04", "Important", "Backstab verursacht erhöhten Schaden, wenn der Mob hinter seinem Ziel steht.", 10}}
tipsMap_deDE[18092] = {{"old_hillsbrad_18092_01", "Important", "Verpasst dem Spieler Tödlicher Stoß und reduziert damit die Heilwirkung.", 10}}
tipsMap_deDE[18093] = {{"old_hillsbrad_18093_01", "PriorityTargets", "Der Mob heilt, reinigt und stunnt.", 20},
					{"old_hillsbrad_18093_02", "Interrupts", "KICK: Heilung.", 10}}
tipsMap_deDE[18094] = {{"old_hillsbrad_18094_01", "Important", "Fluch der Unendlichkeit vom Spieler dispellen, meist vom Tank. Der Debuff erhöht den erlittenen Schaden um 50%.", 10}}
tipsMap_deDE[18170] = {{"old_hillsbrad_18170_01", "Defensives", "Def-CDs: Der Mob belegt sein Ziel mit Tödliche Wunden und reduziert 5 Sek. lang die erhaltene Heilung um 50%.", 10}}
tipsMap_deDE[18171] = {{"old_hillsbrad_18171_01", "Important", "Fluch der Unendlichkeit vom Spieler dispellen, meist vom Tank. Der Debuff erhöht den erlittenen Schaden um 50%.", 10}}
tipsMap_deDE[18172] = {{"old_hillsbrad_18172_01", "Important", "Verursacht Schatten- und physischen Schaden. Cleave trifft zusätzlich einen nahen Spieler.", 10}}
tipsMap_deDE[18673] = {{"old_hillsbrad_18673_01", "Legion", "", 10}}
tipsMap_deDE[18764] = {{"old_hillsbrad_18764_01", "Legion", "", 10}}
tipsMap_deDE[18765] = {{"old_hillsbrad_18765_01", "Legion", "", 10}}
tipsMap_deDE[18934] = {{"old_hillsbrad_18934_01", "Important", "Magier-Mob, der eine Mischung aus Frost- und Feuerschaden verursacht.", 20},
					{"old_hillsbrad_18934_02", "Important", "Diesen Mob per CC sichern und AoE vermeiden. Er wird einen Spieler in ein Schaf verwandeln.", 10}}
tipsMap_deDE[26650] = {{"old_hillsbrad_26650_01", "Legion", "", 10}}
tipsMap_deDE[28132] = {{"old_hillsbrad_28132_01", "Legion", "Fernkampf-Mob, der mit Netz Spieler rooted und sie mit Streuschuss desorientiert.", 10}}
tipsMap_deDE[28163] = {{"old_hillsbrad_28163_01", "Important", "Reduziert 30 Sek. lang Stärke und Beweglichkeit des Gegners um 10%.", 10}}
tipsMap_deDE[19044] = {
	{"gruul_19044_01", "Advanced", "POSITIONIERUNG: Der Kampf bevozugt Range-DDs gegenueber Meelees. Tanks, DDs und Heiler sollten nicht aufeinander stacken, sondern sich verteilen.", 100},
	{"gruul_19044_02", "Important", "Stellt sicher, dass MT und OT auf Platz 1 und 2 der Bedrohungsliste stehen, da Schmerzvoller Schlag den Spieler mit der zweithoechsten Bedrohung trifft.", 90},
	{"gruul_19044_03", "Important", "Gruul nutzt alle 30 Sek. Wachstum, bis zu 30 Stapel. Jeder Stapel erhoeht seinen Schaden um 15%. Das ist ein Kampf fuer viel Ausdauer und hohen Schaden.", 80},
	{"gruul_19044_04", "TANK", "DEF-CDS: Schmerzvoller Schlag trifft etwa alle 20 Sek. den Offtank.", 70},
	{"gruul_19044_05", "HEALER", "HoTs auf MT und OT aktiv halten, weil Gruul eine raidweite 4-Sek.-Stille castet.", 60},
	{"gruul_19044_06", "DODGE", "Aus Hoehleneinstuerzen rauslaufen. Sie erscheinen oft unter ihm und werden im Kampfverlauf haeufiger. Jeder Tick verursacht etwa 3k AoE-Schaden alle 3 Sek.", 50},
	{"gruul_19044_07", "Important", "Gruul schleudert Spieler in zufaellige Richtungen. Wer danach zu nah zusammensteht, wird kurz darauf versteinert. Beim Zersplittern entsteht AoE-Schaden an sich selbst und nahen Spielern.", 40},
	{"gruul_19044_08", "HEALER", "Wegen Stille, Knockbacks und Versteinerung Tank-HoTs sehr regelmaessig erneuern und beide Tanks moeglichst auf 100% halten, auch mit Overheal.", 30},
	{"gruul_19044_09", "Important", "Gruul nutzt keine Magie. Deshalb kann Verstärkte Magie vom Mage hilfreich sein.", 20},
	{"gruul_19044_10", "Important", "Ein Paladin mit Verbesserter Konzentrationsaura sollte in eine Heilergruppe gestellt werden, um die Stille fuer Heiler abzufedern.", 10},
}
tipsMap_deDE[18831] = {
	{"gruul_18831_01", "PriorityTargets", "Blindauge sollte frueh sterben, damit der Rat weniger Heilung bekommt.", 40},
	{"gruul_18831_02", "Important", "Bei 50% stuermt Maulgar auf zufaellige Spieler. Verteilt stehen und auf extra Raidschaden vorbereitet sein.", 30},
	{"gruul_18831_03", "TANK", "Maulgar von den Spielern wegdrehen, wegen Wirbelwind und Bogenschmetterer.", 20},
	{"gruul_18831_04", "Defensives", "Unter 50% wird Maulgars Phase durch Charge und Fear deutlich gefaehrlicher. Tanks und Heiler sollten Def-CDs bereithalten.", 10},
}
tipsMap_deDE[18832] = {
	{"gruul_18832_01", "PriorityTargets", "Krosh braucht einen festen Tank und einen klaren Kick- oder Control-Plan.", 30},
	{"gruul_18832_02", "Important", "Zauberschild per Spellsteal oder anders sauber managen, damit sein Feuerschaden kontrollierbar bleibt.", 20},
	{"gruul_18832_03", "Dodge", "Aus der Druckwellen-Reichweite bleiben und unnötigen Feuerschaden um Krosh vermeiden.", 10},
}
tipsMap_deDE[18834] = {
	{"gruul_18834_01", "PriorityTargets", "Olm beschwoert Teufelshunde. Diese schnell aufnehmen oder downen.", 30},
	{"gruul_18834_02", "WARLOCK", "Hexer koennen Olms Teufelshunde mit Verbannen oder Versklaven von Daemonen kontrollieren.", 20},
	{"gruul_18834_03", "Important", "Auf Dunkle Verwesung achten und vermeidbaren Schattenschaden meiden.", 10},
}
tipsMap_deDE[18847] = {
	{"gruul_18847_01", "PriorityTargets", "Dieses Pet sollte schnell kontrolliert oder getoetet werden, damit es Heiler und Caster nicht unter Druck setzt.", 20},
	{"gruul_18847_02", "Important", "Den Teufelspirscher moeglichst von fragilen Spielern fernhalten.", 10},
}
tipsMap_deDE[18835] = {
	{"gruul_18835_01", "Important", "Kiggler polymorpht und schleudert sein Ziel regelmaessig weg. Range-Tanking ist hier oft sicherer.", 30},
	{"gruul_18835_02", "Dodge", "Die Reichweite von Arkane Explosion respektieren und verteilt stehen, um den Gruppendruck zu senken.", 20},
	{"gruul_18835_03", "PriorityTargets", "Kiggler stabil kontrollieren, damit die Killorder im Rat sauber bleibt.", 10},
}
tipsMap_deDE[18836] = {
	{"gruul_18836_01", "PriorityTargets", "Blindauge ist der Heiler im Rat und sollte meist zuerst oder sehr frueh sterben.", 30},
	{"gruul_18836_02", "Interrupts", "Kick: Heal.", 20},
	{"gruul_18836_03", "Important", "Auf sein Schild-Heal-Fenster vorbereitet sein und Kicks oder Burst sauber koordinieren.", 10},
}
tipsMap_deDE[19389] = {
	{"gruul_19389_01", "Important", "Immun gegen Betaeubungen und Verlangsamungen.", 40},
	{"gruul_19389_02", "HEALER", "Um Cleave und Charge zu vermeiden, so nah wie moeglich an der Rueckseite des Mobs stehen.", 30},
	{"gruul_19389_03", "TANK", "Wegen des Cleaves sollte der Tank diesen Mob von der Gruppe wegdrehen.", 20},
	{"gruul_19389_04", "DAMAGE", "Um Cleave und Charge zu vermeiden, so nah wie moeglich an der Rueckseite des Mobs stehen.", 10},
}
tipsMap_deDE[21350] = {
	{"gruul_21350_01", "Interrupts", "Kick: Heal (2-Sek.-Cast; grosser Heal fuer etwa 50% des Lebens des Mobs).", 10},
}
tipsMap_deDE[17257] = {
	{"magtheridon_17257_01", "Advanced", "POSITIONIERUNG UND MANTICRON-WUERFEL", 190},
	{"magtheridon_17257_02", "Important", "Beim Betreten des Raums sieht man 5 Höllenfeuerkanalisierer, die jeweils neben einem Manticron-Wuerfel stehen.", 180},
	{"magtheridon_17257_03", "Important", "Der Raidlead sollte 4 Gruppen mit je 5 Klickern pro Rotation zuteilen, plus Backups. Diese klicken, sobald der Boss Druckwelle castet.", 170},
	{"magtheridon_17257_04", "Important", "Wenn ein Spieler an der Reihe ist, stellt er sich mit dem Ruecken zur Wand vor die Plattform seines Wuerfels, aber nicht direkt auf die Plattform. Sonst koennen Einstuerze genau dann treffen, wenn er klicken muss. Jeder Wuerfel darf nur EINMAL geklickt werden, weil ein Debuff erneutes Klicken fuer eine Zeit verhindert. Zu fruehes Loslassen fuehrt fast immer zum Wipe.", 160},
	{"magtheridon_17257_05", "Advanced", "PHASE 1 - KAMPFBEGINN", 150},
	{"magtheridon_17257_06", "Important", "Jedem Kanalisierer einen Tank und einen Heiler zuweisen. Der Kampf startet, sobald einer der Kanalisierer angegriffen wird.", 140},
	{"magtheridon_17257_07", "Important", "Ab Engage habt ihr 2 Minuten Zeit, moeglichst viele Kanalisierer zu toeten, idealerweise alle, bevor Magtheridon aktiv wird.", 130},
	{"magtheridon_17257_08", "Dodge", "AUSWEICHEN: Feuersbrunst legt Feuer auf einen zufaelligen Bereich des Bodens.", 120},
	{"magtheridon_17257_09", "Advanced", "PHASE 2 - MAGTHERIDON WIRD AKTIV", 110},
	{"magtheridon_17257_10", "Important", "Der Main-Tank zieht den Boss an die gegenueberliegende Wand vom Eingang und steht selbst mit dem Ruecken zur Wand. So behaelt er bei Beben seine Position.", 100},
	{"magtheridon_17257_11", "Important", "Der Raid verteilt sich. Die erste Gruppe geht an ihre Positionen, wenn Druckwelle kommt, also alle 60 Sek. Jeder Spieler klickt dann zusammen mit den vier anderen zugewiesenen Spielern seinen Wuerfel, sobald die Raidwarnung zeigt, dass Magtheridon Druckwelle castet. Waehren dieser Phase darf man sich nicht bewegen.", 90},
	{"magtheridon_17257_12", "Important", "Der Boss castet gelegentlich Beben und schleudert den Raid weg.", 80},
	{"magtheridon_17257_13", "HUNTER", "Hunter, die mit einem Wuerfel channeln, sollten den Boss vorher abdrehen, damit Auto Shot den Channel nicht bricht.", 70},
	{"magtheridon_17257_14", "DAMAGE", "Solange Magtheridon von allen 5 violetten Strahlen getroffen wird, erleidet er mehr Schaden. Die Strahlen also so lange wie moeglich halten. Klicker bekommen waehrenddessen Ticks und brauchen Heilung.", 60},
	{"magtheridon_17257_15", "HEALER", "Heilung auf die Klicker focussen, denn waehrend des Channelns mit dem Wuerfel bekommen sie fortlaufend Schaden.", 50},
	{"magtheridon_17257_16", "Advanced", "PHASE 3 - MAGTHERIDON BEI 30% LEBEN", 40},
	{"magtheridon_17257_17", "Important", "Zu Beginn dieser Phase zerstoert der Boss das Dach, verursacht raidweiten Schaden und betaeubt Spieler 2 Sek.", 30},
	{"magtheridon_17257_18", "HEALER", "Heiler sollten fuer Phase 3 vorbereitet sein, damit Spieler vorher mit HoTs und Leben voll sind.", 20},
	{"magtheridon_17257_19", "Dodge", "AUSWEICHEN: Waehren dieser Phase verursachen kleine Dacheinstuerze regelmaessig Schaden in zufaelligen Bereichen des Raums.", 10},
}
tipsMap_deDE[17256] = {
	{"magtheridon_17256_01", "Important", "Kanalisierer erst angreifen, wenn ihr den Kampf wirklich starten wollt. Durch den Angriff beginnt das Encounter.", 70},
	{"magtheridon_17256_02", "Important", "Wenn ein Kanalisierer stirbt, wandert seine Seele in die ueberlebenden Kanalisierer und erhoeht deren Zauberzeit und Schaden.", 60},
	{"magtheridon_17256_03", "Interrupts", "Kick: Dunkle Besserung (2-Sek.-Cast; heilt einen anderen Kanalisierer um etwa ein Achtel seines Lebens).", 50},
	{"magtheridon_17256_04", "Interrupts", "Kick: Schattenblitzsalve.", 40},
	{"magtheridon_17256_05", "ROGUE", "Gedankenbenebelndes Gift nutzen, um die Casts dieser Mobs zu verlangsamen.", 30},
	{"magtheridon_17256_06", "WARLOCK", "Fluch der Sprachen nutzen, um die Casts dieser Mobs zu verlangsamen.", 20},
	{"magtheridon_17256_07", "Important", "Die Kanalisierer lassen gelegentlich Infernals auf den Raid fallen. Ein Offtank sollte sie schnell aufnehmen und die DDs focussen sie.", 10},
}
tipsMap_deDE[17454] = {
	{"magtheridon_17454_01", "PriorityTargets", "Wenn Kanalisierer diese Infernals droppen, sofort DPS auf sie.", 30},
	{"magtheridon_17454_02", "Important", "Hexer koennen diese Infernals verbannen.", 20},
	{"magtheridon_17454_03", "TANK", "Wenn nicht genug Hexer im Raid sind, sollten diese Infernals von einem Offtank aufgenommen werden.", 10},
}
tipsMap_deDE[18829] = {
	{"magtheridon_18829_01", "Interrupts", "Pro Pull klare Kicker fuer jeden Waerter zuteilen, um Schattenblitzsalve zu unterbrechen.", 40},
	{"magtheridon_18829_02", "TANK", "Wenn der Mob Schattenexplosion castet, schleudert er Spieler weg und resettet Aggro. Taunt fuer diesen Moment bereithalten.", 30},
	{"magtheridon_18829_03", "Important", "Instabiles Gebrechen NICHT dispellen. Das verursacht Schaden am Dispelnden und silenced ihn 5 Sek.", 20},
	{"magtheridon_18829_04", "Dodge", "AUSWEICHEN: Regen des Feuers.", 10},
}
tipsMap_deDE[17952] = {
	{"black_morass_17952_01", "Legion", "", 10},
}
tipsMap_deDE[18982] = {
	{"black_morass_18982_01", "Legion", "", 10},
}
tipsMap_deDE[18983] = {
	{"black_morass_18983_01", "Important", "Verursacht Ebenholzgift, ein Natur-DoT-Gift plus 23% weniger Heilung fuer 12 Sek. Kann dispellt werden.", 10},
}
tipsMap_deDE[19219] = {
	{"mechanar_19219_01", "Advanced", "POSITIONIERUNG: Spieler sollten sich moeglichst verteilen, um Schaden durch Netherladungen zu verringern. Diese werden etwa alle 15 Sek. beschworen und explodieren als Arkan-AoE.", 50},
	{"mechanar_19219_02", "Important", "Alle Spieler, auch Tank und Heiler, muessen auf ihre Polaritaet achten und bei Spielern mit derselben Polaritaet stehen.", 40},
	{"mechanar_19219_03", "Important", "Meelee-DPS stoppen, wenn der Boss Reflektierendes SCHADENS-Schild hat.", 30},
	{"mechanar_19219_04", "Important", "Caster-DPS stoppen, wenn der Boss Reflektierendes MAGIE-Schild hat.", 20},
	{"mechanar_19219_05", "Dodge", "AUSWEICHEN: Netherbomben am Boden vermeiden, auch wenn ihr nahe bei Spielern gleicher Polaritaet stehen muesst.", 10},
}
tipsMap_deDE[19221] = {
	{"mechanar_19221_01", "Advanced", "OPTIONALER BOSS: Den Raum vorher komplett clearen, da ihr Platz zum Kiten der Adds braucht. Waehren des Kampfes nicht den Gang zum dritten Boss betreten, sonst pullt ihr dortigen Trash.", 70},
	{"mechanar_19221_02", "Important", "Spieler mit Aggro auf einem Feuerelementar muessen es von der Gruppe weg kiten, aber nicht durch die Gruppe durch, wegen der Feuerflaechen, die es hinterlaesst.", 60},
	{"mechanar_19221_03", "Important", "In grossen Teilen des Kampfes wird sich die ganze Gruppe bewegen muessen, wegen der Add-Kites und der Feuerflaechen am Boden.", 50},
	{"mechanar_19221_04", "Important", "Den Boss von der Gruppe wegdrehen, denn Drachenodem ist ein frontaler Kegel und desorientiert 4 Sek.", 40},
	{"mechanar_19221_05", "Important", "Drachenodem vom Tank dispellen, denn danach laeuft der Boss meist auf einen anderen Spieler mit Bedrohung, oft den Heiler.", 30},
	{"mechanar_19221_06", "TANK", "Nach dem Ende von Drachenodem sofort wieder Aggro auf den Boss aufbauen.", 20},
	{"mechanar_19221_07", "Legion", "Feuerwiderstands-Aura hilft bei diesem Boss und seinen Feuer-Adds.", 10},
}
tipsMap_deDE[19220] = {
	{"mechanar_19220_01", "Advanced", "POSITIONIERUNG: Spieler, vor allem Manaklassen, muessen mindestens 25 Meter vom Boss entfernt stehen, um nicht von Arkane Flut gesilenced und vom Mana beraubt zu werden.", 50},
	{"mechanar_19220_02", "Important", "Nethergespenster werden haeufig beschworen. DDs sollten sie immer erst per AoE downen, bevor sie wieder auf den Boss gehen.", 40},
	{"mechanar_19220_03", "TANK", "Den Fokus auf dem Boss halten. Die Nethergespenster muessen nicht getankt werden.", 30},
	{"mechanar_19220_04", "Important", "Wird ein Spieler von Dominanz getroffen, also 5 Sek. MC, muss dieser sofort gestunnt oder per CC gesichert werden.", 20},
	{"mechanar_19220_05", "Defensives", "Wenn der Tank uebernommen wird, geht der Boss sehr wahrscheinlich auf den Heiler. In jedem Fall auf Def-CDs vorbereitet sein.", 10},
}
tipsMap_deDE[19218] = {
	{"mechanar_19218_01", "Important", "Diesen Miniboss von der Gruppe weg ausrichten und tanken.", 50},
	{"mechanar_19218_02", "Advanced", "POSITIONIERUNG: DDs und Heiler sollten sich verteilen, damit nicht mehrere Spieler Saegeklingen-Blutung bekommen. Das gibt es auf Heroisch.", 40},
	{"mechanar_19218_03", "HEALER", "Spieler mit Saegeklinge brauchen waehrend der 8-Sek.-Blutung Extra-Heilung.", 30},
	{"mechanar_19218_04", "Important", "Schattenkraft vom Mob dispellen. Der Magie-Buff verdoppelt 15 Sek. lang sein Angriffstempo.", 20},
	{"mechanar_19218_05", "Important", "Maschinenfluessigkeit vom Tank dispellen. Das Gift erhoeht die Zeit zwischen Angriffen und senkt die Ruestung um 35%.", 10},
}
tipsMap_deDE[19710] = {
	{"mechanar_19710_01", "Dodge", "AUSWEICHEN: Sobald der Boss Presslufthammer castet, muessen alle Spieler, auch der Tank, sofort weg, weil der Schaden als AoE um ihn herum kommt.", 30},
	{"mechanar_19710_02", "Important", "Schattenkraft vom Mob dispellen. Der Magie-Buff verdoppelt 15 Sek. lang sein Angriffstempo.", 20},
	{"mechanar_19710_03", "Important", "Maschinenfluessigkeit vom Tank dispellen. Das Gift erhoeht die Zeit zwischen Angriffen und senkt die Ruestung um 35%.", 10},
}
tipsMap_deDE[20481] = {
	{"mechanar_20481_01", "Important", "Der Spieler mit Aggro muss diese Adds von der Gruppe weg kiten. Sie hinterlassen Feuerflaechen.", 10},
}
tipsMap_deDE[21062] = {
	{"mechanar_21062_01", "PriorityTargets", "Werden alle 30 bis 45 Sek. beschworen und despawnen, wenn der Boss 20% erreicht.", 20},
	{"mechanar_21062_02", "Interrupts", "Kick: Arkanblitz, der Arkanschaden auf Spieler macht.", 10},
}
tipsMap_deDE[18421] = {
	{"botanica_18421_01", "Important", "Verursacht einen Frost-, Feuer- oder Natur-DoT auf Spielern. Der Magie-Debuff kann dispellt werden.", 10},
}
tipsMap_deDE[18422] = {
	{"botanica_18422_01", "Legion", "Resto-Druid-artiger Mob.", 20},
	{"botanica_18422_02", "PriorityTargets", "Kick: Nachwachsen und Verjuengungspflanze. Beide haben 2 Sek. Castzeit und heilen bzw. legen HoTs auf Verbündete.", 10},
}
tipsMap_deDE[18587] = {
	{"botanica_18587_01", "Important", "Der Mob gibt sich selbst einen Buff und wird dadurch immun gegen Arkane, Feuer-, Frost- oder Schattenschaden. Spieler sollten auf andere Schadensschulen wechseln.", 10},
}
tipsMap_deDE[19486] = {
	{"botanica_19486_01", "Important", "Diese Mobs von der Gruppe weg tanken.", 20},
	{"botanica_19486_02", "Dodge", "Aus Giftwolken von Phiole des Giftes rausgehen.", 10},
}
tipsMap_deDE[19505] = {
	{"botanica_19505_01", "PriorityTargets", "Der Mob gibt nahen Verbündeten einen Schadensbuff. Allein ist er deutlich weniger gefaehrlich.", 20},
	{"botanica_19505_02", "Important", "Seelenkanal vom Spieler dispellen. Das ist ein Magie-Effekt, der 6 Sek. lang Leben und Mana absaugt.", 10},
}
tipsMap_deDE[19507] = {
	{"botanica_19507_01", "Legion", "Todesritter-artiger Mob.", 20},
	{"botanica_19507_02", "Dodge", "AUSWEICHEN bzw. RAUSLAUFEN, wenn Todeszone auf den Boden gesetzt wird.", 10},
}
tipsMap_deDE[19508] = {
	{"botanica_19508_01", "Important", "Die Kraeuterkundigen beschwoeren Mutierte Fleischpeitscher, die schnell downen sollten.", 20},
	{"botanica_19508_02", "Important", "Wucherwurzeln von Spielern dispellen. Sie wurzeln den Spieler fest und machen 6 Sek. Natur-DoT.", 10},
}
tipsMap_deDE[19509] = {
	{"botanica_19509_01", "Important", "Diese Mobs sollten per CC gesichert oder schnell downgebrannt werden, denn Polymorph auf Tank oder Heiler kann sehr gefaehrlich werden.", 10},
}
tipsMap_deDE[19511] = {
	{"botanica_19511_01", "Important", "Immun gegen Versklaven, aber anfaellig fuer Verbannen.", 20},
	{"botanica_19511_02", "Important", "Tödliches Gift vom Spieler dispellen. Es ist ein Natur-DoT ueber 60 Sek.", 10},
}
tipsMap_deDE[19512] = {
	{"botanica_19512_01", "Important", "Blasser Tod vom Tank sofort decursen. Der Fluch reduziert 60 Sek. lang die Ausdauer um 35%.", 20},
	{"botanica_19512_02", "Defensives", "Wegen des AoE-Cleaves bekommen Meelees mehr Schaden und brauchen Extra-Heilung.", 10},
}
tipsMap_deDE[19513] = {
	{"botanica_19513_01", "Important", "Immun gegen die meisten Formen von CC, aber anfaellig fuer Verlangsamungen durch Eiskältefalle des Hunters.", 20},
	{"botanica_19513_02", "Important", "Hat einen AoE-Fear. Diesen Mob von anderen Gruppen wegziehen, damit ihr nichts Ungeplantes pullt.", 10},
}
tipsMap_deDE[19557] = {
	{"botanica_19557_01", "Legion", "", 10},
}
tipsMap_deDE[19598] = {
	{"botanica_19598_01", "Legion", "", 10},
}
tipsMap_deDE[19608] = {
	{"botanica_19608_01", "Important", "Diese Mobs sollten vor dem Pull von Warp Splinter getoetet werden.", 10},
}
tipsMap_deDE[19633] = {
	{"botanica_19633_01", "PriorityTargets", "Kick: Groesse Heilung. Der Mob castet sie auf sich selbst oder einen Verbündeten.", 10},
}
tipsMap_deDE[19843] = {
	{"botanica_19843_01", "Legion", "Schurkenartiger Mob.", 20},
	{"botanica_19843_02", "Important", "Der Mob startet im Stealth und verursacht mehr Schaden von hinten auf sein Ziel.", 10},
}
tipsMap_deDE[19865] = {
	{"botanica_19865_01", "Important", "Stuns oder Eiskältefalle nutzen. Der Mob ist immun gegen Polymorph und Fear.", 10},
}
tipsMap_deDE[25354] = {
	{"botanica_25354_01", "PriorityTargets", "Hart zuschlagende Nicht-Elite-Mobs, die von Kraeuterkundigen der Sonnenwanderer beschworen werden.", 10},
}
tipsMap_deDE[20870] = {
	{"arcatraz_20870_01", "TANK", "Den Boss mit dem Ruecken zur Wand tanken, um den Knockback abzufangen.", 50},
	{"arcatraz_20870_02", "Dodge", "AUSWEICHEN bzw. RAUSLAUFEN aus den Leerzonen, die der Boss beschwoert.", 40},
	{"arcatraz_20870_03", "Dodge", "AUSWEICHEN: Wer Saat der Verderbnis bekommt, laeuft aus der Gruppe, da sie Schattenschaden in 10 Metern verursacht und einen Schatten-DoT auftraegt. Wenn der Tank betroffen ist, muessen alle anderen weg vom Tank.", 30},
	{"arcatraz_20870_04", "Legion", "Der Boss macht Schattenschaden. Schattenwiderstands-Auren oder Buffs helfen.", 20},
	{"arcatraz_20870_05", "Important", "Den Knockback von Schattennova kann man mit dem Ruecken nahe an einer Wand abfangen, trotzdem weiter auf entstehende Leerzonen achten.", 10},
}
tipsMap_deDE[20885] = {
	{"arcatraz_20885_01", "Dodge", "AUSWEICHEN: Etwa 30 Sek. nach Kampfbeginn macht der Boss einen 6-Sek.-Wirbelwind. Sofort rauslaufen, weil er massiven physischen AoE-Schaden macht.", 70},
	{"arcatraz_20885_02", "PriorityTargets", "Kick: Direkt nach dem Wirbelwind castet sie einen Heal auf sich.", 60},
	{"arcatraz_20885_03", "Important", "Der Boss verpasst einem Spieler Gabe der Unheilsbotin. Der Debuff sieht wie Schattenschutz eines Priesters aus und kann den Boss heilen, wenn der betroffene Spieler geheilt wird, auch durch Heiltränke.", 50},
	{"arcatraz_20885_04", "SHAMAN", "Erdschild waehrend dieses Kampfes nicht auf Spieler legen.", 40},
	{"arcatraz_20885_05", "PRIEST", "Machtwort: Schild ist okay, aber Vampirumarmung in diesem Kampf nicht nutzen, weil der Boss dadurch geheilt werden kann.", 30},
	{"arcatraz_20885_06", "Legion", "Der Boss macht Schattenschaden. Schattenwiderstands-Auren oder Buffs helfen.", 20},
	{"arcatraz_20885_07", "Important", "Wundgift, Gezielter Schuss oder Mortal Strike reduzieren die Heilung, die der Boss bekommt, falls doch ein Heal durchgeht.", 10},
}
tipsMap_deDE[20886] = {
	{"arcatraz_20886_01", "Important", "Den Boss mit dem Ruecken des Tanks zur Wand tanken, um Knockback zu mindern.", 50},
	{"arcatraz_20886_02", "Dodge", "Nach dem Knockback charged der Boss einen zufaelligen Spieler und hinterlaesst eine Teufelsfeuer-Spur. Daraus sofort rausgehen.", 40},
	{"arcatraz_20886_03", "HEALER", "Der Boss hat eine Aura der Teufelsimmolation und macht Feuerschaden an Spielern in 15 Metern. Mit Meelee-DDs auf den Zusatzschaden achten.", 30},
	{"arcatraz_20886_04", "Important", "Spieler mit Teufelsfeuerschock dispellen. Das ist ein Feuer-DoT.", 20},
	{"arcatraz_20886_05", "PALADIN", "Der Boss macht vor allem Feuerschaden. Feuerwiderstands-Aura ist eine gute Option.", 10},
}
tipsMap_deDE[20912] = {
	{"arcatraz_20912_01", "Advanced", "PHASE 1 - Vier Zellen oeffnen sich. Die erste, dritte und vierte enthalten jeweils einen von zwei moeglichen Gegnertypen.", 100},
	{"arcatraz_20912_02", "Legion", "Erste Zelle: Mobs verursachen Feuer- und physischen Schaden.", 90},
	{"arcatraz_20912_03", "Legion", "Zweite Zelle: Millhouse Manasturm hilft der Gruppe.", 80},
	{"arcatraz_20912_04", "Legion", "Dritte Zelle: Mobs machen je nach Gegner Feuer/Physisch oder Feuer/Frost/Arkanschaden.", 70},
	{"arcatraz_20912_05", "Advanced", "PHASE 2 - Beginnt, sobald der Mob aus der vierten Zelle stirbt und Skyriss aktiv wird.", 60},
	{"arcatraz_20912_06", "Legion", "Der Boss macht hauptsaechlich Schatten- und physischen Schaden.", 50},
	{"arcatraz_20912_07", "Important", "Waehren des Kampfes uebernimmt der Boss einen Spieler. Der MCte Spieler muss sofort per CC gesichert werden.", 40},
	{"arcatraz_20912_08", "Important", "Bei 66% und 33% erschafft der Boss Abbilder von sich selbst. Boss und Abbilder nutzen Gedankenschinden gegen Spieler.", 30},
	{"arcatraz_20912_09", "TANK", "Sorge dafuer, dass Boss und Klone auf dir bleiben, damit der Heiler nicht mehrere Gedankenschinden gleichzeitig abbekommt.", 20},
	{"arcatraz_20912_10", "Important", "Der Boss feared auch zufaellige Spieler. Furchtzauberschutz oder Tremor Totem helfen besonders, wenn Tank oder Heiler betroffen sind.", 10},
}
tipsMap_deDE[20904] = {
	{"arcatraz_20904_01", "Important", "Sobald ihr euch dem Waerter naehrt, kommt die Gruppe in den Kampf und der Encounter beginnt kurz darauf. Stellt sicher, dass jeder die Boss-Strategie kennt, bevor ihr in Kampfreichweite geht.", 10},
}
tipsMap_deDE[20905] = {
	{"arcatraz_20905_01", "Legion", "Verursacht Feuerschaden.", 20},
	{"arcatraz_20905_02", "Important", "Gegen diesen Mob besser keine Feuerzauber nutzen, da er erhoehten Feuerwiderstand hat.", 10},
}
tipsMap_deDE[20906] = {
	{"arcatraz_20906_01", "Important", "Der Mob nutzt Warp und erscheint ploetzlich hinter einem Spieler.", 20},
	{"arcatraz_20906_02", "Important", "Von hinten macht der Mob deutlich mehr Schaden.", 10},
}
tipsMap_deDE[20977] = {
	{"arcatraz_20977_01", "Legion", "Freundlich; hilft der Gruppe.", 10},
}
tipsMap_deDE[20908] = {
	{"arcatraz_20908_01", "Legion", "Verursacht hauptsaechlich Naturschaden.", 40},
	{"arcatraz_20908_02", "Important", "Magieerdung dispellen. Der Buff sorgt 30 Sek. lang dafuer, dass der Mob 50% weniger Magieschaden nimmt.", 30},
	{"arcatraz_20908_03", "HEALER", "Betroffene Spieler von Blitzsprung extra im Auge behalten. Der Debuff erhoeht 60 Sek. lang den erlittenen Schaden aus allen Magieschulen.", 20},
	{"arcatraz_20908_04", "Important", "Blitzentladung ist ein Kettenblitz, der Naturschaden an alle Spieler in 50 Metern macht.", 10},
}
tipsMap_deDE[20909] = {
	{"arcatraz_20909_01", "Important", "Verursacht vor allem Feuer- (AoE) und Schatten- (Single-Target) Schaden.", 50},
	{"arcatraz_20909_02", "Important", "Den Fluch des Magmawerfers vom Spieler decursen. Der Fluch reduziert die Wirksamkeit eingehender Heilung.", 40},
	{"arcatraz_20909_03", "Important", "Wirkt Regen des Feuers auf 10 Meter Flaeche und macht 8 Sek. lang alle 2 Sek. Schaden.", 30},
	{"arcatraz_20909_04", "Dodge", "Sofort aus Regen des Feuers rauslaufen.", 20},
	{"arcatraz_20909_05", "Important", "Wirkt Schattenblitz auf einen Spieler.", 10},
}
tipsMap_deDE[20910] = {
	{"arcatraz_20910_01", "Legion", "Nur der Tank sollte vor dem Mob stehen, damit der Rest den Frontalschaden vermeidet.", 70},
	{"arcatraz_20910_02", "Important", "Der Mob macht je nach aktivem Farb-Buff unterschiedlichen Schaden:", 60},
	{"arcatraz_20910_03", "Important", "BRUTMACHT: Gruen (stunnt Spieler vor dem Mob fuer 1 Sek.).", 50},
	{"arcatraz_20910_04", "Important", "BRUTMACHT: Schwarz (macht Feuerschaden an Spielern vor ihm).", 40},
	{"arcatraz_20910_05", "Important", "BRUTMACHT: Blau (macht Frostschaden an Spielern vor ihm, zerstoert Mana und erhoeht die Zeit zwischen Angriffen).", 30},
	{"arcatraz_20910_06", "Important", "BRUTMACHT: Bronze (macht Arkanschaden und reduziert Zauber- sowie Angriffstempo bei Spielern vor ihm).", 20},
	{"arcatraz_20910_07", "Important", "BRUTMACHT: Rot (legt einen Feuer-DoT auf Spieler vor ihm).", 10},
}
tipsMap_deDE[20911] = {
	{"arcatraz_20911_01", "Legion", "Der Mob macht hauptsaechlich Feuerschaden.", 40},
	{"arcatraz_20911_02", "Important", "Verursacht Feuerschaden in einem Frontalkegel. Nur der Tank sollte vor dem Mob stehen.", 30},
	{"arcatraz_20911_03", "Important", "Legt Tödliche Wunden auf das Ziel, wodurch eingehende Heilung reduziert wird.", 20},
	{"arcatraz_20911_04", "Important", "Macht AoE-Feuerschaden ueber Druckwelle.", 10},
}

tipsMap_deDE[20857] = {
	{"arcatraz_20857_01", "Legion", "Verursacht eine Mischung aus Feuer- und Naturschaden ueber DoTs.", 30},
	{"arcatraz_20857_02", "Important", "Immolation vom Tank dispellen. Das ist ein Feuer-DoT und ein Magie-Effekt.", 20},
	{"arcatraz_20857_03", "Important", "Infiziertes Blut vom Tank dispellen. Das ist ein Natur-DoT und ein Krankheits-Effekt.", 10},
}
tipsMap_deDE[20859] = {
	{"arcatraz_20859_01", "Legion", "Fernkampf-Hunter-artige Mobs.", 20},
	{"arcatraz_20859_02", "Important", "Diese Mobs muessen downgehen. Laesst man sie stehen, spawnen weiter Adds, was nach einem Wipe beim Zuruecklaufen schnell problematisch wird.", 10},
}
tipsMap_deDE[20864] = {
	{"arcatraz_20864_01", "Legion", "Macht Naturschaden und etwas physischen Schaden.", 20},
	{"arcatraz_20864_02", "Important", "Moeglichst auf Range spielen und nur den Tank im Meelee lassen, weil Inkubation eine AoE-Explosion ist.", 10},
}
tipsMap_deDE[20865] = {
	{"arcatraz_20865_01", "Legion", "Diese Mobs werden aktiv, wenn die Gruppe zu nah kommt. Tank nimmt sie auf und die Gruppe fokussiert sie schnell runter.", 10},
}
tipsMap_deDE[20866] = {
	{"arcatraz_20866_01", "Legion", "Verursacht eine Mischung aus Feuer- und Schattenschaden.", 30},
	{"arcatraz_20866_02", "Important", "Nur der Tank sollte vor diesem Mob stehen, wegen des frontalen Teufelsatems.", 20},
	{"arcatraz_20866_03", "Important", "Der Mob beschwoert Augen ohne Sicht, die DDs schnell downen sollten. Sie verlangsamen Bewegung sowie Zauber- und Angriffstempo der Spieler.", 10},
}
tipsMap_deDE[20867] = {
	{"arcatraz_20867_01", "PriorityTargets", "Sobald der Mob 50% erreicht, hat die Gruppe 15 Sek. Zeit ihn zu finishen, sonst verursacht der Debuff massiven Schaden.", 40},
	{"arcatraz_20867_02", "Important", "Fehlt eurer Gruppe der Schaden fuer 50 auf 0 in 15 Sek., koennen DDs und Heiler vor 50% kurz die Sichtlinie droppen, damit der Debuff nicht auf ihnen landet.", 30},
	{"arcatraz_20867_03", "ROGUE", "Mantel der Schatten kann Mal des Todes entfernen.", 20},
	{"arcatraz_20867_04", "Important", "Lebensentzug als Magie-Effekt vom Tank dispellen.", 10},
}
tipsMap_deDE[20868] = {
	{"arcatraz_20868_01", "Important", "Der Mob macht hohen Frontalschaden. Nur der Tank sollte vor ihm stehen.", 30},
	{"arcatraz_20868_02", "Important", "Nach Chaosatem Fluch, Gift und Magie sofort vom Tank entfernen.", 20},
	{"arcatraz_20868_03", "Important", "Wenn Heiler oder Tank verhext werden, muessen Off-Tank oder Off-Heal kurz uebernehmen.", 10},
}
tipsMap_deDE[20869] = {
	{"arcatraz_20869_01", "Important", "Der Mob verursacht AoE-Arkanschaden.", 50},
	{"arcatraz_20869_02", "TANK", "Falls der Mob wiederbelebt wird, muss der Tank schnell wieder Aggro uebernehmen. Diese Mobs resetten ihre Aggro regelmaessig.", 40},
	{"arcatraz_20869_03", "ROGUE", "Sentinels sind anfaellig fuer Billiger Schuss und Nierenhieb, um den Tank etwas zu entlasten.", 30},
	{"arcatraz_20869_04", "Important", "Range-DDs und Heiler sollten 40 Meter Abstand halten, um Energiefreisetzung zu vermeiden, solange der Mob lebt.", 20},
	{"arcatraz_20869_05", "Dodge", "WEGRENNEN: Bei wenig Leben versucht der Mob zu explodieren und macht AoE-Schaden.", 10},
}
tipsMap_deDE[20873] = {
	{"arcatraz_20873_01", "Important", "Wenn der Mob eine leuchtend violette AoE-Zone unter sich setzt, muss der Tank ihn wegkiten. Die Zone heilt den Mob stark und erhoeht seinen Schaden.", 10},
}
tipsMap_deDE[20875] = {
	{"arcatraz_20875_01", "Important", "Beachtet den Buff Elementare Antwort, den der Mob auf sich selbst legt. Er reduziert bestimmte Magieschulen oder physische Faehigkeiten um 75%. Wenn moeglich, Schadensschulen koordinieren und wechseln.", 40},
	{"arcatraz_20875_02", "Important", "Vor dem Pull sollte zuerst eine Faehigkeit auf den Boss gehen, die der Tank nicht hauptsaechlich nutzt, damit der Tank danach leichter Aggro aufbauen kann.", 30},
	{"arcatraz_20875_03", "TANK", "Aggroaufbau kann schwierig werden, wenn der Mob gerade gegen deine Schadensart resistent ist. Dann kurz warten, bis er auf eine andere Resistenz wechselt.", 20},
	{"arcatraz_20875_04", "Important", "Tremor Totem oder Furchtzauberschutz auf dem Tank helfen gegen Psychischer Schrei.", 10},
}
tipsMap_deDE[20879] = {
	{"arcatraz_20879_01", "Important", "Seelenraub als Magie-Buff vom Tank dispellen. Der Effekt reduziert Werte und verursachten Schaden 20 Sek. lang um 45%.", 30},
	{"arcatraz_20879_02", "MAGE", "Seelenraub auch vom gegnerischen Mob spellstealen oder dispellen. Dort erhoeht der Buff Werte und Schaden 20 Sek. lang um 45%.", 20},
	{"arcatraz_20879_03", "Defensives", "Ohne Mage zum Entfernen von Seelenraub braucht der Tank zusaetzliche Def-CDs und der Heiler mehr Fokus.", 10},
}
tipsMap_deDE[20880] = {
	{"arcatraz_20880_01", "PriorityTargets", "Der Mob legt Geschwaechte Seele auf Spieler. Der Debuff stackt bis 10 und haelt 12 Sek. Werden die Stacks auf dem Tank zu hoch, kann der Fight kippen.", 30},
	{"arcatraz_20880_02", "Legion", "Der Mob macht AoE-Schattenschaden in etwa 40 Metern. Schattenwiderstands-Auren oder Buffs koennen helfen.", 20},
	{"arcatraz_20880_03", "Important", "Kraftvoller Spalten ist ein AoE-Knockback. Spieler, besonders der Tank, sollten mit dem Ruecken zur Wand stehen.", 10},
}
tipsMap_deDE[20881] = {
	{"arcatraz_20881_01", "Legion", "Der Mob macht physischen und Schattenschaden.", 40},
	{"arcatraz_20881_02", "WARLOCK", "Der Teufelsgardist ist immun gegen Versklaven und Verbannen.", 30},
	{"arcatraz_20881_03", "Important", "Den Mob mit dem Ruecken des Tanks zur Wand tanken, wegen Verwuesten.", 20},
	{"arcatraz_20881_04", "Important", "Der Mob nutzt Betaeubendes Brüllen als AoE-Interrupt. Heiler und DDs koennen kurz die Sichtlinie brechen, nachdem der Tank den ersten abbekommen hat.", 10},
}
tipsMap_deDE[20882] = {
	{"arcatraz_20882_01", "Important", "Der Mob startet im Stealth und gouged den Tank regelmaessig. Danach greift er den Spieler mit dem zweithoechsten Threat an.", 10},
}
tipsMap_deDE[20883] = {
	{"arcatraz_20883_01", "Important", "Der Mob wirkt Beherrschung auf einen Spieler und uebernimmt ihn 6 Sek. lang. Den MCten Spieler sofort stunnen oder per CC sichern.", 10},
}
tipsMap_deDE[20896] = {
	{"arcatraz_20896_01", "Legion", "Schurkenartiger Mob mit Ausweichen.", 40},
	{"arcatraz_20896_02", "Important", "Wenn Ausweichen aktiv ist, dodged der Mob deutlich mehr. Groeßere Angriffe besser fuer die Luecke dazwischen aufheben.", 30},
	{"arcatraz_20896_03", "Important", "Beeintraechtigendes Gift von Spielern dispellen.", 20},
	{"arcatraz_20896_04", "Important", "Auf Heroisch immun gegen Gedankenkontrolle.", 10},
}
tipsMap_deDE[20897] = {
	{"arcatraz_20897_01", "Legion", "Arkanmagier-artiger Mob.", 50},
	{"arcatraz_20897_02", "Important", "Polymorph sofort von Tank oder Heiler dispellen.", 40},
	{"arcatraz_20897_03", "Important", "Schallknall ist eine AoE-Arkanexplosion mit 45 Metern Reichweite. Sie unterbricht Zauber und sperrt die gerade genutzte Magieschule 4 Sek. lang.", 30},
	{"arcatraz_20897_04", "HEALER", "Wenn moeglich, Instant-Heals, Totems oder sehr kurze Casts nutzen, um das Risiko eines Silence zu senken.", 20},
	{"arcatraz_20897_05", "Important", "Wenn der Heiler von Schallknall gesilenced wird, kann ein Off-Heal helfen; der Tank sollte dann Def-CDs nutzen.", 10},
}
tipsMap_deDE[20898] = {
	{"arcatraz_20898_01", "Important", "Spieler muessen stacken, um den Schaden von Meteor zu teilen.", 40},
	{"arcatraz_20898_02", "Important", "Solange kein Meteor kommt, sollten Range-DDs und Heiler mindestens 20 Meter weg stehen, um den AoE von Feuerschild in Meelee-Reichweite zu vermeiden.", 30},
	{"arcatraz_20898_03", "WARLOCK", "Der Abyssal ist immun gegen Verbannen und Versklaven.", 20},
	{"arcatraz_20898_04", "Legion", "Der Mob verursacht hauptsaechlich Feuerschaden. Feuerwiderstands-Aura ist eine Option.", 10},
}
tipsMap_deDE[20900] = {
	{"arcatraz_20900_01", "Important", "Spieler muessen auf ihren Threat achten. Zieht ein Nicht-Tank kurz vor Kriegsdonner Aggro, kann das schnell zum Wipe fuehren.", 20},
	{"arcatraz_20900_02", "WARLOCK", "Der Verdammniswächter ist immun gegen Teufelsversklavung.", 10},
}
tipsMap_deDE[20901] = {
	{"arcatraz_20901_01", "Important", "Fernkampf-Mobs, die den Tank mit Hakennetz festsetzen und Spieler mit Streuschuss desorientieren.", 20},
	{"arcatraz_20901_02", "Important", "Immun gegen Eiskältefalle, Verbannen, Fear, Teufelsversklavung und die meisten Stuns.", 10},
}
tipsMap_deDE[20902] = {
	{"arcatraz_20902_01", "Legion", "Der Mob macht hauptsaechlich Feuerschaden.", 30},
	{"arcatraz_20902_02", "Important", "Immun gegen Eiskältefalle, Verbannen, Fear, Teufelsversklavung und die meisten Stuns.", 20},
	{"arcatraz_20902_03", "Dodge", "Wenn der Mob Höllenfeuer auf eine Position oder einen Spieler wirkt, sofort rauslaufen.", 10},
}
tipsMap_deDE[21303] = {
	{"arcatraz_21303_01", "Legion", "", 10},
}
tipsMap_deDE[21346] = {
	{"arcatraz_21346_01", "PriorityTargets", "Verursacht Blindheitsberuehrung auf Spielern. Das reduziert Bewegungstempo um 40% und Angriffs- bzw. Zaubertempo um 50%.", 10},
}
tipsMap_deDE[21395] = {
	{"arcatraz_21395_01", "Legion", "", 10},
}
tipsMap_deDE[21702] = {
	{"arcatraz_21702_01", "Legion", "Schattenpriester-artiger Mob, der vor allem Schattenschaden macht.", 20},
	{"arcatraz_21702_02", "Important", "Hält Spieler mit Fessel und Binden fest.", 10},
}
tipsMap_deDE[22892] = {
	{"arcatraz_22892_01", "Important", "Kann gestunnt, geblendet und gegouged werden.", 10},
}
tipsMap_deDE[24723] = {
	{"magisters_terrace_24723_01", "Important", "", 10},
}
tipsMap_deDE[24744] = {
	{"magisters_terrace_24744_01", "Important", "", 10},
}
tipsMap_deDE[24560] = {
	{"magisters_terrace_24560_01", "Important", "", 10},
}
tipsMap_deDE[16151] = {
	{"kara_16151_01", "Important", "Stellt sicher, dass der Trash bis Attumen komplett gecleart ist. Solange Midnight lebt, hat der Trash einen Respawn-Timer von 25 Minuten.", 200},
	{"kara_16151_02", "Important", "Midnight und Attumen sind immun gegen Taunt. Alle Raider muessen ihren Threat sauber kontrollieren, besonders waehrend der Phasenwechsel.", 190},
	{"kara_16151_03", "Advanced", "PHASE 1", 180},
	{"kara_16151_04", "Important", "Zu Kampfbeginn sollte ein Offtank Midnight nehmen. Der Krieger-Main-Tank sollte fuer Attumen bereitgehalten werden.", 170},
	{"kara_16151_05", "HEALER", "Jeder Tank sollte zum Pull einen festen Heiler haben, plus einen weiteren Heiler fuer den Raidschaden.", 160},
	{"kara_16151_06", "Advanced", "PHASE 2 (startet, wenn Midnight bei 95% ist und Attumen erscheint)", 150},
	{"kara_16151_07", "TANK", "Der Main-Tank sollte Attumen aufnehmen, ihn leicht von Midnight wegziehen und von der Gruppe wegdrehen, um Cleaves zu vermeiden.", 140},
	{"kara_16151_08", "HEALER", "Heals stoppen, sobald Attumen erscheint, damit der Main-Tank sauber Aggro aufbauen kann.", 130},
	{"kara_16151_09", "DAMAGE", "Zum Start von Phase 2 DPS stoppen, weil Attumen beim Uebergang den Threat resettet.", 120},
	{"kara_16151_10", "DAMAGE", "DDs sollten hinter Attumen stacken, um seinen Cleave zu vermeiden.", 110},
	{"kara_16151_11", "Important", "Fluch Entkoerperliche Gegenwart dispellen oder reflektieren. Der Fluch reduziert die Trefferchance des Spielers um 50%.", 100},
	{"kara_16151_12", "DRUID", "Entkoerperliche Gegenwart mit Fluch aufheben vom betroffenen Spieler entfernen.", 90},
	{"kara_16151_13", "MAGE", "Entkoerperliche Gegenwart mit Fluch aufheben vom betroffenen Spieler entfernen.", 80},
	{"kara_16151_14", "WARRIOR", "Als Tank Zauberreflexion nutzen, wenn der Boss kurz davor ist, den Fluch zu setzen.", 70},
	{"kara_16151_15", "DAMAGE", "Wenn Attumen erscheint, also bei 95% von Midnight, sofort auf Attumen wechseln.", 60},
	{"kara_16151_16", "Advanced", "PHASE 3 (startet bei 25%, wenn Attumen Midnight besteigt)", 50},
	{"kara_16151_17", "TANK", "Attumen resettet den Threat zum Phasenwechsel. Schnell wieder aufnehmen.", 40},
	{"kara_16151_18", "HEALER", "Zum Start von Phase 3 Heals kurz stoppen, weil Attumen dabei den Threat resettet.", 30},
	{"kara_16151_19", "DAMAGE", "Zum Start von Phase 3 DPS kurz stoppen, weil Attumen dabei den Threat resettet.", 20},
	{"kara_16151_20", "TANK", "Der Offtank, der Midnight hatte, kann danach auf Attumen mit Schaden machen.", 10},
}
tipsMap_deDE[16152] = {
	{"kara_16152_01", "Important", "Stellt sicher, dass der Trash bis Attumen komplett gecleart ist. Solange Midnight lebt, hat der Trash einen Respawn-Timer von 25 Minuten.", 200},
	{"kara_16152_02", "Important", "Midnight und Attumen sind immun gegen Taunt. Alle Raider muessen ihren Threat sauber kontrollieren, besonders waehrend der Phasenwechsel.", 190},
	{"kara_16152_03", "Advanced", "PHASE 1", 180},
	{"kara_16152_04", "Important", "Zu Kampfbeginn sollte ein Offtank Midnight nehmen. Der Krieger-Main-Tank sollte fuer Attumen bereitgehalten werden.", 170},
	{"kara_16152_05", "HEALER", "Jeder Tank sollte zum Pull einen festen Heiler haben, plus einen weiteren Heiler fuer den Raidschaden.", 160},
	{"kara_16152_06", "Advanced", "PHASE 2 (startet, wenn Midnight bei 95% ist und Attumen erscheint)", 150},
	{"kara_16152_07", "TANK", "Der Main-Tank sollte Attumen aufnehmen, ihn leicht von Midnight wegziehen und von der Gruppe wegdrehen, um Cleaves zu vermeiden.", 140},
	{"kara_16152_08", "HEALER", "Heals stoppen, sobald Attumen erscheint, damit der Main-Tank sauber Aggro aufbauen kann.", 130},
	{"kara_16152_09", "DAMAGE", "Zum Start von Phase 2 DPS stoppen, weil Attumen beim Uebergang den Threat resettet.", 120},
	{"kara_16152_10", "DAMAGE", "DDs sollten hinter Attumen stacken, um seinen Cleave zu vermeiden.", 110},
	{"kara_16152_11", "Important", "Fluch Entkoerperliche Gegenwart dispellen oder reflektieren. Der Fluch reduziert die Trefferchance des Spielers um 50%.", 100},
	{"kara_16152_12", "DRUID", "Entkoerperliche Gegenwart mit Fluch aufheben vom betroffenen Spieler entfernen.", 90},
	{"kara_16152_13", "MAGE", "Entkoerperliche Gegenwart mit Fluch aufheben vom betroffenen Spieler entfernen.", 80},
	{"kara_16152_14", "WARRIOR", "Als Tank Zauberreflexion nutzen, wenn der Boss kurz davor ist, den Fluch zu setzen.", 70},
	{"kara_16152_15", "DAMAGE", "Wenn Attumen erscheint, also bei 95% von Midnight, sofort auf Attumen wechseln.", 60},
	{"kara_16152_16", "Advanced", "PHASE 3 (startet bei 25%, wenn Attumen Midnight besteigt)", 50},
	{"kara_16152_17", "TANK", "Attumen resettet den Threat zum Phasenwechsel. Schnell wieder aufnehmen.", 40},
	{"kara_16152_18", "HEALER", "Zum Start von Phase 3 Heals kurz stoppen, weil Attumen dabei den Threat resettet.", 30},
	{"kara_16152_19", "DAMAGE", "Zum Start von Phase 3 DPS kurz stoppen, weil Attumen dabei den Threat resettet.", 20},
	{"kara_16152_20", "TANK", "Der Offtank, der Midnight hatte, kann danach auf Attumen mit Schaden machen.", 10},
}
tipsMap_deDE[15687] = {
	{"kara_15687_01", "Important", "Den Raum vor dem Pull von Moroes komplett saeubern, damit genug Platz fuer den Encounter bleibt.", 210},
	{"kara_15687_02", "Important", "Boss und seine vier Dinner-Gaeste markieren und Main-Tank, Off-Tank sowie CC fuer die Ziele vorher fest zuteilen.", 200},
	{"kara_15687_03", "Important", "Zum Pull geht der Main-Tank auf Moroes. CC sollte direkt auf den Startplattformen oder an einer Raumseite gesetzt werden. Der Off-Tank nimmt das hoechste Kill-Target und bleibt gleichzeitig Nummer 2 auf Moroes-Threat.", 190},
	{"kara_15687_04", "PriorityTargets", "CC- und Kill-Prioritaet fuer Moroes' Dinner-Gaeste:", 180},
	{"kara_15687_05", "Important", "1) Baroness Dorothea Muehlstein, weil sie Mana verbrennt.", 170},
	{"kara_15687_06", "Important", "2) Lady Catriona von'Indi und Lady Keira Beereneimer, weil sie andere Dinner-Gaeste heilen und buffen.", 160},
	{"kara_15687_07", "Important", "3) Baron Rafe Dreuger, weil sein Stun zu Aggroverlust fuehren kann.", 150},
	{"kara_15687_08", "Important", "4) Lord Robin Daris. Diesen Krieger-Typen von der Gruppe weg kaempfen, wegen Wirbelwind.", 140},
	{"kara_15687_09", "Important", "5) Moroes selbst.", 130},
	{"kara_15687_10", "Important", "6) Lord Crispin Ference. Er ist zaeh und wird erst nach Moroes erledigt.", 120},
	{"kara_15687_11", "Advanced", "GARROTTE", 110},
	{"kara_15687_12", "Important", "Alle 30 Sek. verschwindet Moroes und setzt Garrotte als starken Blutungs-Debuff auf einen zufaelligen Raider. Dieses Ziel ansagen, damit es Heal-Prioritaet bekommt.", 100},
	{"kara_15687_13", "Important", "Zwerge koennen die Blutung mit Steingestalt selbst entfernen.", 90},
	{"kara_15687_14", "PALADIN", "Garrotte mit Gottesschild von dir selbst oder Segen des Schutzes von einem anderen Spieler entfernen.", 80},
	{"kara_15687_15", "MAGE", "Garrotte mit Eisblock entfernen.", 70},
	{"kara_15687_16", "Advanced", "GOUGE", 60},
	{"kara_15687_17", "Important", "Main-Tank und Off-Tank sollten dauerhaft Nummer 1 und 2 auf dem Threatmeter bleiben.", 50},
	{"kara_15687_18", "Important", "Moroes gouged bzw. stunnt den Main-Tank und wechselt waehrenddessen auf Platz 2 der Bedrohung.", 40},
	{"kara_15687_19", "Advanced", "BLIND", 30},
	{"kara_15687_20", "Important", "Einen Nicht-Tank-Spieler fest einteilen, der dauerhaft direkt auf Moroes steht und Blind abfaengt.", 20},
	{"kara_15687_21", "Important", "Paladine, Druiden und Schamanen koennen Blind als Krankheit entfernen.", 10},
}
tipsMap_deDE[16812] = {
	{"kara_16812_01", "Legion", "Mit Barnes sprechen, wenn ihr bereit seid, das Opern-Event zu starten.", 10},
}
tipsMap_deDE[16457] = {
	{"kara_16457_01", "Important", "Maiden ist immun gegen Taunt. Gebt dem Tank Zeit, sicher Aggro aufzubauen, bevor der Raid voll reingeht. Ihre Faehigkeiten kommen zufaellig und nicht streng nach Timer, aber die ungefaehren Abklingzeiten helfen bei der Vorbereitung auf Reue.", 220},
	{"kara_16457_02", "Advanced", "POSITIONIERUNG", 210},
	{"kara_16457_03", "Important", "Tank und Meelee-DDs kaempfen in der Mitte des Raums. Je weniger Meelees, desto einfacher wird der Fight.", 200},
	{"kara_16457_04", "Important", "Meelee-DDs sollten in Dreiecksform um Maiden stehen, damit Heiliges Zorn nicht mehrere Ziele trifft.", 190},
	{"kara_16457_05", "Important", "Range-DDs und Heiler bekommen jeweils eine eigene Luecke zwischen den Saeulen. Zu Kampfbeginn einen kleinen Schritt nach vorne machen, damit ihr sicher in Sichtlinie der Heiler seid.", 180},
	{"kara_16457_06", "Important", "Heiler sollten einander gegenueber stehen, damit jeder seine zugeteilten Spieler in Reichweite hat.", 170},
	{"kara_16457_07", "Advanced", "REUE", 160},
	{"kara_16457_08", "Important", "Maiden wirkt Reue und stunnt den Raid 12 Sek. Der Effekt endet durch Schaden oder bestimmte Faehigkeiten.", 150},
	{"kara_16457_09", "HEALER", "Wenn der Timer fuer Reue fast abgelaufen ist, sollten Heiler in die Mitte laufen und kurz Heiligboden-Schaden nehmen, damit die kommende Reue sofort gebrochen wird. Danach wieder runter von der Mitte. Wenn der Heiler Reue anderweitig selbst brechen kann, ist das nicht noetig.", 140},
	{"kara_16457_10", "TANK", "DEF-CDs waehrend Reue nutzen, bis die Heiler wieder frei sind. Wenn ein Heiler Reue nicht selbst brechen kann, Maiden ueber den Heiler ziehen, damit Heiligboden den Stun entfernt.", 130},
	{"kara_16457_11", "HUNTER", "Zorn des Wildtiers kurz vor Reue kann den Effekt negieren.", 120},
	{"kara_16457_12", "PRIEST", "Schattenwort: Schmerz waehrend des kurzen Reue-Casts kann den Priester direkt wieder befreien.", 110},
	{"kara_16457_13", "WARRIOR", "Berserkerwut kann Reue verhindern oder brechen.", 100},
	{"kara_16457_14", "Advanced", "HOLY FIRE", 90},
	{"kara_16457_15", "Important", "Ein Großer Feuerschutztrank kann den Holy-Fire-DoT deutlich abfedern.", 80},
	{"kara_16457_16", "Important", "Ein Wiederherstellungstrank kann Holy Fire entfernen.", 70},
	{"kara_16457_17", "MAGE", "HOLY FIRE mit Eisblock entfernen.", 60},
	{"kara_16457_18", "PALADIN", "HOLY FIRE mit Reinigen oder Gottesschild entfernen.", 50},
	{"kara_16457_19", "PRIEST", "HOLY FIRE mit Magiebannung entfernen.", 40},
	{"kara_16457_20", "ROGUE", "HOLY FIRE mit Mantel der Schatten entfernen.", 30},
	{"kara_16457_21", "SHAMAN", "Gut gesetztes Erdungstotem kann Holy Fire von einem nahen Spieler abfangen.", 20},
	{"kara_16457_22", "WARRIOR", "HOLY FIRE mit Zauberreflexion spiegeln.", 10},
	{"kara_16457_23", "WARLOCK", "HOLY FIRE mit Magie verschlingen vom Teufelsjaeger entfernen.", 5},
}
tipsMap_deDE[15691] = {
	{"kara_15691_01", "Advanced", "FLARE-PHASE", 70},
	{"kara_15691_02", "PriorityTargets", "Der Kurator beschwoert alle 10 Sek. eine Astrale Fackel und verbraucht dabei 10% seines Manas. Die Fackeln muessen immer vor der naechsten downgehen.", 60},
	{"kara_15691_03", "Important", "In dieser Phase sollte der Kurator nur dann Schaden bekommen, wenn gerade keine Fackeln aktiv sind.", 50},
	{"kara_15691_04", "Advanced", "EVOKATIONS-PHASE (beginnt bei 0% Mana)", 40},
	{"kara_15691_05", "Important", "Waehend dieser Phase erleidet der Kurator erhoehten Schaden. Erst alle Fackeln toeten, dann auf den Boss wechseln.", 30},
	{"kara_15691_06", "Advanced", "ENRAGE-PHASE (beginnt bei 15% Leben)", 20},
	{"kara_15691_07", "Important", "Der Kurator beschwoert keine Fackeln mehr und macht mehr Schaden. Ab hier ist es Tank-and-Spank.", 10},
}
tipsMap_deDE[15688] = {
	{"kara_15688_01", "Important", "Kill-Prioritaet: DEMONENKETTEN > KIL'REK > ILLHOOF", 140},
	{"kara_15688_02", "Important", "Aufstellung: Ideal ist ein Paladin-Heiler mit Konzentrationsaura fuer den Hexer und ein Destro-Hexer mit Nether Protection und Intensity. Der Paladin heilt den Hexer, der Hexer nutzt Höllenfeuer fuer die Portal-Teufelchen. Gebet des Schattenschutzes hilft gegen Opferung.", 130},
	{"kara_15688_03", "WARLOCK", "Zerstoerungs-Hexer mit Nether Protection sind gegen die meisten Feuerblitze immun und oft auch gegen Opferung, solange Nether Protection aktiv ist. Saat der Verderbnis auf Illhoof hilft auch gegen die kleinen Imps.", 120},
	{"kara_15688_04", "TANK", "Der Main-Tank nimmt Illhoof und Kil'rek. Illhoof sollte nahe dem gruenen Kreis am Boden getankt werden.", 110},
	{"kara_15688_05", "Advanced", "OPFERUNG", 100},
	{"kara_15688_06", "Important", "Gelegentlich opfert der Boss einen Spieler, legt Dämonenketten um ihn und zieht ihm in der Raummitte Leben ab. Die Dämonenketten muessen sofort down.", 90},
	{"kara_15688_07", "Important", "Ein Spieler sollte Illhoofs Castbar und Ziel im Blick behalten und ansagen, wer geopfert wird.", 80},
	{"kara_15688_08", "TANK", "Wenn der Main-Tank geopfert wird, muss der Off-Tank Illhoof sofort uebernehmen.", 70},
	{"kara_15688_09", "Important", "Solange keine Dämonenketten aktiv sind, Fokus auf Kil'rek. Der Raidlead sollte zwischendurch AoE fuer die kleinen Imps ansagen.", 60},
	{"kara_15688_10", "MAGE", "Eisblock entfernt Dämonenketten vom Mage.", 50},
	{"kara_15688_11", "PALADIN", "Bubble entfernt Dämonenketten vom Paladin.", 40},
	{"kara_15688_12", "Advanced", "KIL'REK", 30},
	{"kara_15688_13", "WARLOCK", "Fluch der Sprachen auf Kil'rek senkt den eingehenden Schaden.", 20},
	{"kara_15688_14", "Important", "Wenn Kil'rek stirbt, bekommt Illhoof 25 Sek. lang einen Debuff und erleidet mehr Schaden. Kil'rek respawnt nach etwa 45 Sek.", 10},
}
tipsMap_deDE[16524] = {
	{"kara_16524_01", "Important", "Fuer diesen Kampf werden keine Tanks gebraucht. Threat-senkende Buffs koennen durch DPS-Buffs ersetzt werden. Heiler, die waehrend der Bewegung heilen koennen, sind hier besonders stark.", 160},
	{"kara_16524_02", "Advanced", "POSITIONIERUNG", 150},
	{"kara_16524_03", "Important", "Tanks und Meelees stehen in der Mitte bei Aran. Caster und Heiler bleiben mindestens 10 Meter weg, um Arans AoE-Gegenzauber zu vermeiden. Instant-Heals werden dadurch nicht unterbrochen.", 140},
	{"kara_16524_04", "Advanced", "SPEZIALFAEHIGKEITEN", 130},
	{"kara_16524_05", "Important", "Ringförmiger Blizzard: Fernkaempfer bewegen sich im Uhrzeigersinn am Rand entlang. Wer verlangsamt wird, geht in die Mitte.", 120},
	{"kara_16524_06", "Important", "Flammenkranz: Der komplette Raid muss sofort stehen bleiben, sobald klar ist, wo die Ringe erscheinen. Wer hinein- oder herauslaeuft oder sich auf bestimmte Arten bewegt, loest eine riesige Explosion aus. Der Ring verschwindet nach 20 Sek.", 110},
	{"kara_16524_07", "Important", "Das Drehen des Charakters innerhalb oder ausserhalb des Flammenkranzes loest die Explosion nicht aus.", 100},
	{"kara_16524_08", "DRUID", "Nicht im Flammenkranz shapeshiften, sonst loest ihr die Explosion aus.", 90},
	{"kara_16524_09", "MAGE", "Nicht mit Blinzeln in einen Ring hinein oder heraus, sonst loest ihr die Explosion aus.", 80},
	{"kara_16524_10", "SHAMAN", "Schamanen-Elementare, die einen Ring kreuzen, loesen ebenfalls die Explosion aus.", 70},
	{"kara_16524_11", "Important", "Arkane Explosion: Sofort an den Rand des Raums laufen.", 60},
	{"kara_16524_12", "Advanced", "POLYMORPH-PHASE (bei 20% Mana)", 50},
	{"kara_16524_13", "Important", "Aran polymorpht den Raid. Wenn ihr nicht bereits durch Wasserelementare oder Lebensbaum aus dem Sheep geholt wurdet, sollte Arans Trinken nicht unterbrochen werden.", 40},
	{"kara_16524_14", "Important", "Da Polymorph Leben und Mana sehr schnell regeneriert, sollte diese Phase nicht gleichzeitig mit der Wasserelementar-Phase laufen.", 30},
	{"kara_16524_15", "Advanced", "WASSERELEMENTAR-PHASE (bei 40% Leben)", 20},
	{"kara_16524_16", "Important", "Wasserelementare bleiben 90 Sek. und sollten schnell down oder per Fear/Banish kontrolliert werden. Sie sind immun gegen Frost.", 10},
}
tipsMap_deDE[15689] = {
	{"kara_15689_01", "Advanced", "PORTAL-PHASE (60 Sek.)", 190},
	{"kara_15689_02", "Important", "Spieler fuer die einzelnen Portale fest einteilen und abwechseln. Wer 8 bis 20 Sek. aus dem Strahl raus ist, bekommt einen Debuff und kann 90 Sek. lang nicht mehr mit dieser Farbe interagieren.", 180},
	{"kara_15689_03", "TANK", "Der Tank im roten Strahl kann 3 bis 5 Meter seitlich raustreten, um den Debuff etwas zu verlangsamen, der pro Tick 1000 maximales Leben reduziert.", 170},
	{"kara_15689_04", "Important", "TANK: Roter Strahl. Netherspite fixiert diesen Spieler. Tanks sollten nur zwischen den Portal-Phasen wechseln. Im Notfall kann ein robuster DD den roten Strahl kurz uebernehmen.", 160},
	{"kara_15689_05", "HEALER", "Den Spieler im roten Strahl muss man wegen der starken Selbstheilung nicht permanent gegenheilen.", 150},
	{"kara_15689_06", "Important", "HEALER: Gruener Strahl. Heiler sind hier ideal, weil Mana schnell regeneriert wird und die Heilung steigt. Klassen mit Mana-Problemen koennen kurz rein, aber der Strahl muss immer geblockt sein, sonst heilt Netherspite zu schnell hoch.", 140},
	{"kara_15689_07", "Important", "DPS: Blauer Strahl. Ideal ist ein DD mit Schattenwiderstand oder ein Hexer/Schattenpriester, der den Selbstschaden besser ausgleichen kann.", 130},
	{"kara_15689_08", "HEALER", "Der Spieler im blauen Strahl braucht starke Heilung.", 120},
	{"kara_15689_09", "Important", "Vorschlag fuer gerade Portalphasen:", 110},
	{"kara_15689_10", "Legion", "ROT: Main-Tank, BLAU: DD A dann DD B, GRUEN: Off-Tank und/oder Heiler.", 100},
	{"kara_15689_11", "Important", "Vorschlag fuer ungerade Portalphasen:", 90},
	{"kara_15689_12", "Legion", "ROT: Off-Tank, BLAU: DD C dann DD D, GRUEN: Main-Tank und/oder Heiler.", 80},
	{"kara_15689_13", "Advanced", "BANISH-PHASE (30 Sek.)", 70},
	{"kara_15689_14", "Important", "Nach kurzer Inaktivitaet wirkt der Boss Netheratem als frontalen Kegel mit Arkanschaden und Knockback.", 60},
	{"kara_15689_15", "DAMAGE", "DDs sollten beim Teleskop stehen, um Mana zu regenerieren und sich zu verbinden, wenn noetig.", 50},
	{"kara_15689_16", "SHAMAN", "Ein Sengendes Totem ueberlebt Netheratem und kann nach der Phase kurz den Boss binden, bis der Tank den roten Strahl wieder uebernimmt.", 40},
	{"kara_15689_17", "TANK", "Der Tank fuer den naechsten roten Strahl sollte mit dem Ruecken zur Tuer stehen, um den Knockback zu kontrollieren und Netheratem vom Raid fernzuhalten.", 30},
	{"kara_15689_18", "HEALER", "Heiler stehen seitlich an Netherspite, um den Tank waehrend dieser Phase stabil zu halten.", 20},
	{"kara_15689_19", "Important", "Nach der Banish-Phase kehrt der Boss wieder in die Portal-Phase zurueck, bis er tot ist.", 10},
}
tipsMap_deDE[15690] = {
	{"kara_15690_01", "Important", "Positionierung: Tank und Meelees stehen mit dem Ruecken zur Wand, um den Knockback von Schattennova zu vermeiden. Range und Heiler bleiben etwa 30 Meter weg, um nicht getroffen zu werden. Alle, besonders Meelees, muessen auf fallende Infernals und Entkraeften achten.", 250},
	{"kara_15690_02", "Advanced", "PHASE 1", 240},
	{"kara_15690_03", "Important", "Der Prinz setzt in Phase 1 und 3 Schattenwort: Schmerz auf den Main-Tank und ein weiteres Ziel. Besonders auf dem Tank sollte es schnell dispellt werden.", 230},
	{"kara_15690_04", "Important", "Der Prinz beschwoert Netherspite-Infernals. In Phase 1 und 2 landen sie etwa alle 45 Sek., zünden kurz danach Höllenfeuer und despawnen nach rund 180 Sek. Sie stehen fest und muessen vom Raid gemieden werden.", 220},
	{"kara_15690_05", "Important", "Einen Range-Spieler markieren, der die fallenden Infernals beobachtet und sichere Positionen ansagt. Dieser Spotter muss sich selbst sicher bewegen koennen und in Heiler-Reichweite bleiben.", 210},
	{"kara_15690_06", "TANK", "Hör auf den Infernal-Spotter, damit du und deine Meelees nicht im Höllenfeuer stehen.", 200},
	{"kara_15690_07", "Important", "Ein Elixier der Dämonenentdeckung hilft, besonders fuer den Tank, die Infernal-Positionen auf der Minimap zu sehen.", 190},
	{"kara_15690_08", "HUNTER", "Dämonen aufspüren zeigt dir die Infernal-Positionen auch ohne Elixier.", 180},
	{"kara_15690_09", "WARLOCK", "Dämonen aufspüren zeigt dir die Infernal-Positionen auch ohne Elixier.", 170},
	{"kara_15690_10", "HEALER", "Die Heiler sollten sich absprechen, damit der Tank auch waehrend Movement wegen Höllenfeuer weiter stabil geheilt wird.", 160},
	{"kara_15690_11", "Advanced", "ENTKRAEFTEN", 150},
	{"kara_15690_12", "Important", "Entkraeften trifft fuenf zufaellige Spieler außer dem aktuellen Tank. Der Debuff setzt das Leben fuer 7 Sek. auf 1 und kann nicht entfernt werden.", 140},
	{"kara_15690_13", "HEALER", "Spieler mit Entkraeften koennen nicht ueber 1 HP geheilt werden. Mana nicht verschwenden; die Lebenspunkte kommen nach Ablauf des Effekts zurueck.", 130},
	{"kara_15690_14", "Important", "Schattennova mit etwa 24 Metern Reichweite und 3 Sek. Cast kommt in Phase 1 und 2 meist rund 4 Sek. nach Entkraeften.", 120},
	{"kara_15690_15", "PALADIN", "In Phase 1 und 2 darf ein Paladin Siegel des Blutes nicht nutzen, weil Entkraeften dadurch sofort toedlich werden kann.", 110},
	{"kara_15690_16", "Important", "Meelee-DDs sollten immer einen Fluchtweg planen, falls gleichzeitig Infernal-Höllenfeuer und Entkraeften zusammenkommen.", 100},
	{"kara_15690_17", "Advanced", "PHASE 2 (ab 60% Leben)", 90},
	{"kara_15690_18", "TANK", "In dieser Phase braucht der Tank besonders Def-CDs, denn hier ist der Schaden durch den Boss am gefaehrlichsten, vor allem mit Ruestung zerreissen.", 80},
	{"kara_15690_19", "HEALER", "Wegen Thrash und Ruestung zerreissen sollte der Tank so oft wie moeglich nahe an vollem Leben gehalten werden.", 70},
	{"kara_15690_20", "TANK", "Paladin-Tanks koennen in Phase 2 verstaerkt mit Magieschaden arbeiten statt mit reinen Nahkampftreffern, um die Pariermechanik des Bosses besser zu umspielen.", 60},
	{"kara_15690_21", "WARLOCK", "Donnerknall, Demoruf oder Fluch der Schwäche sollten den Prinzen dauerhaft auf weniger Angriffskraft und Tempo halten, besonders ab Phase 2.", 50},
	{"kara_15690_22", "WARRIOR", "Donnerknall, Demoruf oder Fluch der Schwäche sollten den Prinzen dauerhaft auf weniger Angriffskraft und Tempo halten, besonders ab Phase 2.", 40},
	{"kara_15690_23", "Advanced", "PHASE 3 (ab 30% Leben) - HERO/LUST", 30},
	{"kara_15690_24", "Important", "Es kommen weiterhin mehr Entkraeften, aber Infernals landen jetzt alle 15 Sek. statt alle 45 Sek.", 20},
	{"kara_15690_25", "TANK", "Der Nahkampfschaden auf den Tank sinkt in dieser Phase wieder auf das Niveau von Phase 1.", 10},
}
tipsMap_deDE[17225] = {
	{"kara_17225_01", "Important", "Beim Wechsel von Luft zu Boden dem Nightbane-Tank genug Zeit geben, um sauber Aggro aufzubauen, bevor der Rest wieder voll einsteigt.", 250},
	{"kara_17225_02", "HUNTER", "Ablenkender Schuss auf den Nightbane-Tank hilft enorm beim fruehen Aggroaufbau.", 240},
	{"kara_17225_03", "Advanced", "POSITIONIERUNG", 230},
	{"kara_17225_04", "Important", "Der Nightbane-Tank steht mit dem Ruecken zur Außenwand, damit Cleave und Atem vom Raid weggehen.", 220},
	{"kara_17225_05", "Important", "Range teilt sich in zwei Gruppen: Gruppe A an die Innenwand, Gruppe B an die Außenwand. Heiler stehen bei Gruppe B, damit sie in Reichweite des Tanks bleiben. Beide Gruppen sollten Max-Range halten, um Brüllendes Gebrüll zu vermeiden.", 210},
	{"kara_17225_06", "Important", "Meelee-DDs stehen seitlich am hinteren Bein auf der Seite der Range-Gruppen, damit sie in Heilerreichweite bleiben.", 200},
	{"kara_17225_07", "Important", "Frontalkegel und Schwanzfeger sind der Grund, warum nur der Tank vor Nightbane stehen darf und niemand hinter ihm.", 190},
	{"kara_17225_08", "Advanced", "BODENPHASE", 180},
	{"kara_17225_09", "Important", "Nightbane setzt Ablenkende Asche, die die Trefferchance 40 Sek. lang um 30% senkt. Das sollte dispellt werden, besonders auf dem Tank.", 170},
	{"kara_17225_10", "Important", "Schwelende Asche ist ein Frontalangriff fuer 5 bis 6k Schaden plus ein 15-Sek.-DoT mit weiteren 1.6 bis 1.9k alle 3 Sek.", 160},
	{"kara_17225_11", "Important", "Cleave trifft Platte fuer etwa 6k und Stoff fuer etwa 11k.", 150},
	{"kara_17225_12", "TANK", "Def-CDs gezielt einsetzen, wenn Cleave und Schwelende Asche gleichzeitig auf dir liegen.", 140},
	{"kara_17225_13", "HEALER", "Auf Extra-Heals fuer den Tank vorbereitet sein, wenn Cleave und Schwelende Asche zusammenkommen.", 130},
	{"kara_17225_14", "Dodge", "AUSWEICHEN: Nightbane verbrennt den Boden unter einem zufaelligen Spieler auf etwa 5 Metern. Das macht pro Sekunde rund 3k Feuerschaden.", 120},
	{"kara_17225_15", "Important", "FEAR", 110},
	{"kara_17225_16", "Important", "PvP-Trinkets oder die Untoten-Racial koennen einige der Fears entfernen.", 100},
	{"kara_17225_17", "PRIEST", "Furchtzauberschutz auf einem Nicht-Krieger-Tank oder einem wichtigen Meelee kann helfen, den Schaden waehrend des Fears zu senken.", 90},
	{"kara_17225_18", "SHAMAN", "Tremor Totem kann einen Teil der Fears durch Brüllendes Gebrüll fuer die Meelees abfangen.", 80},
	{"kara_17225_19", "WARRIOR", "Berserkerwut nutzen, notfalls vorher in Berserkerhaltung wechseln, um Fear zu brechen.", 70},
	{"kara_17225_20", "Important", "Wenn der Fear vorbei ist, die urspruengliche Positionierung schnell wieder herstellen.", 60},
	{"kara_17225_21", "Advanced", "FLUGPHASE bei 75%, 50% und 25%", 50},
	{"kara_17225_22", "TANK", "Tanks und DDs wechseln in dieser Phase auf die beschworenen Skelette.", 40},
	{"kara_17225_23", "DAMAGE", "Tanks und DDs wechseln in dieser Phase auf die beschworenen Skelette.", 30},
	{"kara_17225_24", "Important", "Falls die Skelette zu lange leben, kann Stratholme-Weihwasser helfen, sie schneller zu burnen.", 20},
	{"kara_17225_25", "HEALER", "Oft wird ein Heiler von Rauchender Explosion anvisiert und braucht dann deutlich mehr Heilung.", 15},
	{"kara_17225_26", "Important", "Nach der Flugphase landet Nightbane wieder und der Kampf geht normal weiter, bis er faellt.", 10},
}
tipsMap_deDE[16179] = {
	{"kara_16179_01", "Important", "Beide Tanks sollten Platz 1 und 2 im Threat halten.", 30},
	{"kara_16179_02", "Important", "Der Boss legt ein Netz als Magie-Debuff auf den Main-Tank und wechselt dann auf den Off-Tank.", 20},
	{"kara_16179_03", "Important", "Saeurewunde reduziert die Ruestung und legt zusaetzlich einen Natur-DoT auf.", 10},
}
tipsMap_deDE[16180] = {
	{"kara_16180_01", "Important", "Ein klassischer Tank-and-Spank-Kampf.", 10},
}
tipsMap_deDE[16181] = {
	{"kara_16181_01", "Important", "Den Boss in den Vorraum vor seinem eigentlichen Zimmer ziehen.", 50},
	{"kara_16181_02", "Important", "Wegen des AoE-Knockbacks sollte der Main-Tank mit dem Ruecken zur Wand stehen. Range-DDs und Heiler stellen sich mit dem Ruecken an die benachbarte Wand.", 40},
	{"kara_16181_03", "Important", "Der Boss charged das entfernteste Raidmitglied. Das sollte der Off-Tank sein, weil der Charge sehr hart trifft.", 30},
	{"kara_16181_04", "Important", "Der Main-Tank steht mit dem Ruecken zur Wand gegen Knockback. Der Off-Tank nimmt die gegenueberliegende Wand und bleibt dabei der entfernteste Spieler fuer den Charge.", 20},
	{"kara_16181_05", "Important", "Der Boss wirkt Schallbersten, ein 5-Sek.-AoE-Silence auf 20 Meter.", 10},
}
tipsMap_deDE[17007] = {
	{"kara_17007_01", "Legion", "Heilig-Paladin-artiger Mob.", 40},
	{"kara_17007_02", "PriorityTargets", "Kill-/CC-Prioritaet: 2.", 30},
	{"kara_17007_03", "Important", "Das Ziel per CC sichern, solange eure Gruppe nicht gerade aktiv auf diesen Mob geht.", 20},
	{"kara_17007_04", "Important", "Der Mob heilt und bufft andere Dinner-Gaeste mit Heiliges Licht und Segen der Macht.", 10},
}
tipsMap_deDE[19872] = {
	{"kara_19872_01", "Legion", "Heilig-Priester-artiger Mob.", 40},
	{"kara_19872_02", "PriorityTargets", "Kill-/CC-Prioritaet: 2.", 30},
	{"kara_19872_03", "Important", "Das Ziel per CC sichern, solange eure Gruppe nicht gerade aktiv auf diesen Mob geht.", 20},
	{"kara_19872_04", "Important", "Der Mob heilt und bufft andere Dinner-Gaeste mit Große Heilung und Machtwort: Schild.", 10},
}
tipsMap_deDE[19873] = {
	{"kara_19873_01", "Legion", "Protection-Warrior-artiger Mob.", 30},
	{"kara_19873_02", "PriorityTargets", "Kill-/CC-Prioritaet: 6. Das niedrigste Prioritaetsziel im Moroes-Fight.", 20},
	{"kara_19873_03", "Important", "Wirkt gelegentlich Entwaffnen auf einen Spieler.", 10},
}
tipsMap_deDE[19874] = {
	{"kara_19874_01", "Legion", "Prot-/Ret-Paladin-artiger Mob.", 30},
	{"kara_19874_02", "PriorityTargets", "Kill-/CC-Prioritaet: 3.", 20},
	{"kara_19874_03", "Important", "Sollte vom Off-Tank uebernommen oder per CC kontrolliert werden, weil der Mob Spieler mit Hammer der Gerechtigkeit stunnt.", 10},
}
tipsMap_deDE[19875] = {
	{"kara_19875_01", "Legion", "Schatten-Priester-artiger Mob.", 30},
	{"kara_19875_02", "PriorityTargets", "Kill-/CC-Prioritaet: 1.", 20},
	{"kara_19875_03", "Important", "Wegen Mana Burn sollte dieses Ziel moeglichst dauerhaft per CC gesichert bleiben.", 10},
}
tipsMap_deDE[19876] = {
	{"kara_19876_01", "Legion", "Mortal-Strike-Warrior-artiger Mob.", 40},
	{"kara_19876_02", "PriorityTargets", "Kill-/CC-Prioritaet: 4.", 30},
	{"kara_19876_03", "Important", "Wegen Wirbelwind sollte niemand zu nah an diesem Mob stehen.", 20},
	{"kara_19876_04", "TANK", "Wenn Robin vom Off-Tank gespielt wird, dieses Ziel weg von Main-Tank, Moroes und den anderen Spielern halten.", 10},
}
tipsMap_deDE[17603] = {
	{"kara_17603_01", "Important", "Es wird nur ein Tank benoetigt. Am besten ein Krieger-Tank wegen Berserkerwut gegen den Fear des Bosses.", 100},
	{"kara_17603_02", "TANK", "Den Wolf entlang einer Wand mit etwas Abstand zum Rest des Raids tanken.", 90},
	{"kara_17603_03", "Important", "Range-DDs und Heiler sollten an der benachbarten Wand in etwa einem Drittel bis halber Bühnenlänge Abstand stehen, damit genug Reaktionszeit fuer Rotkäppchen bleibt.", 80},
	{"kara_17603_04", "Important", "Kurz bevor der Wolf Rotkäppchen auf einen Spieler setzt, targetet er dieses Ziel kurz an und wechselt dann zurueck auf den Tank. Das gibt vor allem Meelees etwas Vorwarnung.", 70},
	{"kara_17603_05", "Important", "ROTKAEPPCHEN: Der betroffene Spieler wird 20 Sek. lang zu Rotkäppchen, hat 0 Ruestung und 0 Widerstaende und muss am Rand des Raums vor dem Wolf weglaufen.", 60},
	{"kara_17603_06", "HEALER", "Achtet waehrend Rotkäppchen auf euren Threat. Wenn der Effekt endet, geht der Wolf auf das hoechste Ziel auf der Bedrohungsliste.", 50},
	{"kara_17603_07", "TANK", "Auch der Tank muss waehrend Rotkäppchen seinen Threat oben halten, damit der Wolf danach nicht auf einen anderen Spieler geht.", 40},
	{"kara_17603_08", "DAMAGE", "Auch DDs muessen waehrend Rotkäppchen auf ihren Threat achten, damit der Wolf nach dem Ende nicht weglaeuft.", 30},
	{"kara_17603_09", "Important", "Wirkt Furchterregendes Heulen als 3-Sek.-AoE-Fear auf 10 Meter.", 20},
	{"kara_17603_10", "WARRIOR", "Wenn gefear­t, kann Berserkerwut den Effekt brechen. Dafuer notfalls vorher in Berserkerhaltung wechseln.", 10},
}
tipsMap_deDE[17521] = {
	{"kara_17521_01", "Important", "Es wird nur ein Tank benoetigt. Am besten ein Krieger-Tank wegen Berserkerwut gegen den Fear des Bosses.", 100},
	{"kara_17521_02", "TANK", "Den Wolf entlang einer Wand mit etwas Abstand zum Rest des Raids tanken.", 90},
	{"kara_17521_03", "Important", "Range-DDs und Heiler sollten an der benachbarten Wand in etwa einem Drittel bis halber Bühnenlänge Abstand stehen, damit genug Reaktionszeit fuer Rotkäppchen bleibt.", 80},
	{"kara_17521_04", "Important", "Kurz bevor der Wolf Rotkäppchen auf einen Spieler setzt, targetet er dieses Ziel kurz an und wechselt dann zurueck auf den Tank. Das gibt vor allem Meelees etwas Vorwarnung.", 70},
	{"kara_17521_05", "Important", "ROTKAEPPCHEN: Der betroffene Spieler wird 20 Sek. lang zu Rotkäppchen, hat 0 Ruestung und 0 Widerstaende und muss am Rand des Raums vor dem Wolf weglaufen.", 60},
	{"kara_17521_06", "HEALER", "Achtet waehrend Rotkäppchen auf euren Threat. Wenn der Effekt endet, geht der Wolf auf das hoechste Ziel auf der Bedrohungsliste.", 50},
	{"kara_17521_07", "TANK", "Auch der Tank muss waehrend Rotkäppchen seinen Threat oben halten, damit der Wolf danach nicht auf einen anderen Spieler geht.", 40},
	{"kara_17521_08", "DAMAGE", "Auch DDs muessen waehrend Rotkäppchen auf ihren Threat achten, damit der Wolf nach dem Ende nicht weglaeuft.", 30},
	{"kara_17521_09", "Important", "Wirkt Furchterregendes Heulen als 3-Sek.-AoE-Fear auf 10 Meter.", 20},
	{"kara_17521_10", "WARRIOR", "Wenn gefear­t, kann Berserkerwut den Effekt brechen. Dafuer notfalls vorher in Berserkerhaltung wechseln.", 10},
}
tipsMap_deDE[17533] = {
	{"kara_17533_01", "PriorityTargets", "In Phase 3 muessen Romulo und Julianne innerhalb von 10 Sek. sterben, sonst beleben sie sich gegenseitig voll wieder. DDs muessen das sauber timen.", 140},
	{"kara_17533_02", "Advanced", "PHASE 1 - Julianne", 130},
	{"kara_17533_03", "Important", "Fuer Romulo ist ein Krieger-Tank wegen Entwaffnen die beste Wahl.", 120},
	{"kara_17533_04", "Important", "MAGIE-BUFF vom Mob entfernen: Devotion erhoeht physischen Schaden und Angriffstempo des Casters um 50%.", 110},
	{"kara_17533_05", "MAGE", "Devotion mit Zauberraub vom Mob entfernen.", 100},
	{"kara_17533_06", "PRIEST", "Devotion mit Magiebannung vom Mob entfernen.", 90},
	{"kara_17533_07", "SHAMAN", "Devotion mit Läutern vom Mob entfernen.", 80},
	{"kara_17533_08", "WARLOCK", "Devotion mit Magie verschlingen des Teufelsjaegers entfernen.", 70},
	{"kara_17533_09", "WARRIOR", "Devotion mit Schildschlag vom Mob entfernen.", 60},
	{"kara_17533_10", "TANK", "Julianne sollte in einer Ecke sterben, moeglichst weit weg von Romulo, damit der Tank sie in Phase 3 leichter aufnehmen kann.", 50},
	{"kara_17533_11", "Advanced", "PHASE 2 - Romulo", 40},
	{"kara_17533_12", "Important", "Romulo mit dem Ruecken zur Wand tanken, weg von der Stelle, an der Julianne gestorben ist. Niemand sollte hinter Romulo stehen.", 30},
	{"kara_17533_13", "Important", "Absprache treffen, wer Romulo waehrend Daring entwaffnet.", 20},
	{"kara_17533_14", "Advanced", "PHASE 3 - Romulo und Julianne", 15},
	{"kara_17533_15", "Important", "Die Romulo-Gruppe ist meist Range/Caster-lastig, die Julianne-Gruppe eher Meelees, Unterbrecher und Dispeller.", 10},
}
tipsMap_deDE[17534] = {
	{"kara_17534_01", "PriorityTargets", "In Phase 3 muessen Romulo und Julianne innerhalb von 10 Sek. sterben, sonst beleben sie sich gegenseitig voll wieder. DDs muessen das sauber timen.", 140},
	{"kara_17534_02", "Advanced", "PHASE 1 - Julianne", 130},
	{"kara_17534_03", "Important", "Fuer Romulo ist ein Krieger-Tank wegen Entwaffnen die beste Wahl.", 120},
	{"kara_17534_04", "Important", "MAGIE-BUFF vom Mob entfernen: Devotion erhoeht physischen Schaden und Angriffstempo des Casters um 50%.", 110},
	{"kara_17534_05", "MAGE", "Devotion mit Zauberraub vom Mob entfernen.", 100},
	{"kara_17534_06", "PRIEST", "Devotion mit Magiebannung vom Mob entfernen.", 90},
	{"kara_17534_07", "SHAMAN", "Devotion mit Läutern vom Mob entfernen.", 80},
	{"kara_17534_08", "WARLOCK", "Devotion mit Magie verschlingen des Teufelsjaegers entfernen.", 70},
	{"kara_17534_09", "WARRIOR", "Devotion mit Schildschlag vom Mob entfernen.", 60},
	{"kara_17534_10", "TANK", "Julianne sollte in einer Ecke sterben, moeglichst weit weg von Romulo, damit der Tank sie in Phase 3 leichter aufnehmen kann.", 50},
	{"kara_17534_11", "Advanced", "PHASE 2 - Romulo", 40},
	{"kara_17534_12", "Important", "Romulo mit dem Ruecken zur Wand tanken, weg von der Stelle, an der Julianne gestorben ist. Niemand sollte hinter Romulo stehen.", 30},
	{"kara_17534_13", "Important", "Absprache treffen, wer Romulo waehrend Daring entwaffnet.", 20},
	{"kara_17534_14", "Advanced", "PHASE 3 - Romulo und Julianne", 15},
	{"kara_17534_15", "Important", "Die Romulo-Gruppe ist meist Range/Caster-lastig, die Julianne-Gruppe eher Meelees, Unterbrecher und Dispeller.", 10},
}
tipsMap_deDE[17535] = {
	{"kara_17535_01", "PriorityTargets", "Dorothee kann weder getankt noch unterbrochen werden und sollte als Erstes sterben.", 30},
	{"kara_17535_02", "Important", "Der Encounter startet, sobald Dorothee angegriffen wird.", 20},
	{"kara_17535_03", "Important", "Wirkt Furchtsamer Schrei und feared 3 zufaellige Spieler fuer 2 Sek.", 10},
}
tipsMap_deDE[17543] = {
	{"kara_17543_01", "Important", "Den Strohmann mit hochrangigen, nicht-AoE und nicht-DoT Feuerzaubern oder Feuerstab treffen, um Brennendes Stroh auszulösen. Das desorientiert den Boss 6 Sek.", 40},
	{"kara_17543_02", "TANK", "Der Tank von Roar sollte den Strohmann spotten oder aufnehmen.", 30},
	{"kara_17543_03", "MAGE", "Glühende Rüstung löst Brennendes Stroh nicht aus.", 20},
	{"kara_17543_04", "WARLOCK", "Feuerbrand gilt als DoT und löst Brennendes Stroh nicht aus.", 10},
}
tipsMap_deDE[17546] = {
	{"kara_17546_01", "Important", "Anfaellig fuer Fear, Todesmantel und Wildtier ängstigen, aber nicht fuer Winterschlaf. Ein Hexer und der Tank koennen ihn meist gut kontrollieren.", 20},
	{"kara_17546_02", "Important", "Wirkt einen AoE-Fear.", 10},
}
tipsMap_deDE[17547] = {
	{"kara_17547_01", "Important", "Wegen des hohen Schadens sollte der Main-Tank auf diesem Ziel sein.", 20},
	{"kara_17547_02", "Important", "Im Verlauf des Encounters rostet der Mob, wird langsamer und kann dann besser gekitet werden.", 10},
}
tipsMap_deDE[17548] = {
	{"kara_17548_01", "PriorityTargets", "Erst NACH Dorothee toeten. Stirbt Tito zuerst, geht Dorothee in Enrage.", 30},
	{"kara_17548_02", "Important", "Ein Tank sollte fuer Tito eingeteilt sein.", 20},
	{"kara_17548_03", "Important", "Unterbricht und silenced Caster.", 10},
}
tipsMap_deDE[18168] = {
	{"kara_18168_01", "Legion", "Erscheint, wenn Dorothee, Roar, Strohmann und Tinhead tot sind.", 50},
	{"kara_18168_02", "Important", "Der Main-Tank muss den Boss sofort aufnehmen.", 40},
	{"kara_18168_03", "Important", "Einen Raider einteilen, der die Zyklone ansagt.", 30},
	{"kara_18168_04", "Important", "Beschwoert Zyklone, die ueber die Buehne wandern und Spieler hochwerfen. Langsamer Fall kann hier helfen.", 20},
	{"kara_18168_05", "HEALER", "Spieler, die von einem Zyklon erwischt wurden, brauchen wegen des Fallschadens Prioritaetsheilung.", 10},
}
tipsMap_deDE[16816] = {
	{"kara_16816_01", "Legion", "Healing-Cheat heilt Medivhs Koenig und eventuell weitere Figuren voll.", 60},
	{"kara_16816_02", "Legion", "Damage-Cheat legt ein Feuer-AoE auf eine zufaellig von Spielern kontrollierte Figur.", 50},
	{"kara_16816_03", "Legion", "Berserking-Cheat verstaerkt eine von Medivhs Figuren mit mehr Groesse, Tempo und Schaden.", 40},
	{"kara_16816_04", "Important", "Spieler sollten zuerst den Bauern kontrollieren, der die gewuenschte Figur blockiert, und danach auf ihre eigentliche Figur wechseln.", 30},
	{"kara_16816_05", "Advanced", "Strategie: Der Koenig sollte Hero/Bloodlust aktiv halten, wenn verbuendete Figuren in einem der acht angrenzenden Felder stehen. Bauern nur nutzen, um bessere Figuren freizuraeumen. Bischöfe sind die einzigen Heiler.", 20},
	{"kara_16816_06", "PriorityTargets", "Kill-Prioritaet: 1) Koenig, 2) Bischof, 3) Dame, 4) Turm, 5) Springer, 6) Bauer.", 10},
}
tipsMap_deDE[17211] = {
	{"kara_17211_01", "Legion", "Bauern-Typ; bewegt sich 1 Feld in jede Richtung.", 60},
	{"kara_17211_02", "PriorityTargets", "Niedrigste Prioritaet.", 50},
	{"kara_17211_03", "Legion", "Wenig Leben und wenig Schaden.", 40},
	{"kara_17211_04", "Advanced", "Strategie: Diese schwache Einheit sollte nur genutzt werden, um andere Figuren freizuraeumen. Ohne Spielersteuerung autoaggt sie Gegner in Reichweite.", 30},
	{"kara_17211_05", "Important", "Heroischer Schlag verursacht 1k Schaden an einer Figur 1 Feld direkt vor ihm.", 20},
	{"kara_17211_06", "Important", "Schildblock absorbiert 500 Schaden fuer 5 Sek. Sollte eher nicht genutzt werden.", 10},
}
tipsMap_deDE[17469] = {
	{"kara_17469_01", "Legion", "Bauern-Typ; bewegt sich 1 Feld in jede Richtung.", 60},
	{"kara_17469_02", "PriorityTargets", "Niedrigste Prioritaet.", 50},
	{"kara_17469_03", "Legion", "Wenig Leben und wenig Schaden.", 40},
	{"kara_17469_04", "Advanced", "Strategie: Diese schwache Einheit sollte nur genutzt werden, um andere Figuren freizuraeumen. Ohne Spielersteuerung autoaggt sie Gegner in Reichweite.", 30},
	{"kara_17469_05", "Important", "Heimtueckischer Schlag verursacht 1k Schaden an einer Figur 1 Feld direkt vor ihm.", 20},
	{"kara_17469_06", "Important", "Waffenablenkung absorbiert 500 Schaden fuer 5 Sek. Sollte eher nicht genutzt werden.", 10},
}
tipsMap_deDE[21160] = {
	{"kara_21160_01", "Legion", "Turm-Typ; bewegt sich 1 Feld in jede Richtung.", 50},
	{"kara_21160_02", "PriorityTargets", "4. Prioritaet wegen mittlerem Fernkampfschaden.", 40},
	{"kara_21160_03", "Legion", "Wenig Leben und mittlerer Schaden.", 30},
	{"kara_21160_04", "Important", "Geysir verursacht 3k Schaden an allen feindlichen Figuren auf angrenzenden Feldern.", 20},
	{"kara_21160_05", "Important", "Wasserschild reduziert 5 Sek. lang den erlittenen Schaden um 50%.", 10},
}
tipsMap_deDE[21664] = {
	{"kara_21664_01", "Legion", "Springer-Typ; bewegt sich in L-Form.", 50},
	{"kara_21664_02", "PriorityTargets", "5. Prioritaet wegen geringem Nah- und Fernkampfschaden.", 40},
	{"kara_21664_03", "Legion", "Mittleres Leben und wenig Schaden.", 30},
	{"kara_21664_04", "Important", "Zerschmettern verursacht 3k Schaden an einer Figur 1 Feld direkt vor ihm.", 20},
	{"kara_21664_05", "Important", "Stampfen verursacht 2k Schaden an feindlichen Figuren in einer geraden Reihe von 3 Feldern vor ihm.", 10},
}
tipsMap_deDE[21682] = {
	{"kara_21682_01", "Legion", "Bischof-Typ und die einzige Heilfigur.", 40},
	{"kara_21682_02", "PriorityTargets", "2. Prioritaet, weil nur diese Figur Koenig und andere Figuren heilen kann.", 30},
	{"kara_21682_03", "Legion", "Wenig Leben und wenig Schaden.", 20},
	{"kara_21682_04", "Important", "Diese Figur sollte sich nur wenig bewegen, aus Feuer bleiben und vor allem Koenig und Dame am Leben halten.", 10},
}
tipsMap_deDE[21683] = {
	{"kara_21683_01", "Legion", "Damen-Typ; bewegt sich 3 Felder gerade oder 2 diagonal.", 60},
	{"kara_21683_02", "PriorityTargets", "3. Prioritaet, da sie hohen Single-Target- und AoE-Schaden macht.", 50},
	{"kara_21683_03", "Legion", "Mittleres Leben und hoher Schaden.", 40},
	{"kara_21683_04", "Advanced", "Strategie: Regen des Feuers auf Cooldown in die Mitte von Gegnergruppen legen. Elementarschlag als Filler auf das Hauptziel nutzen.", 30},
	{"kara_21683_05", "Important", "Elementarschlag verursacht 4k Schaden an einer einzelnen Schachfigur in Reichweite.", 20},
	{"kara_21683_06", "Important", "Regen des Feuers verursacht 6k Schaden an einer feindlichen Figur und allen angrenzenden feindlichen Figuren. 15 Sek. Cooldown.", 10},
}
tipsMap_deDE[21684] = {
	{"kara_21684_01", "Legion", "Startet den Kampf, wenn ihr mit dem Koenig sprecht. Dadurch werden die Figuren dieser Seite fuer euer Team freigeschaltet.", 60},
	{"kara_21684_02", "PriorityTargets", "1. Prioritaet, denn wer den gegnerischen Koenig zuerst toetet, gewinnt.", 50},
	{"kara_21684_03", "Legion", "Viel Leben und hoher Schaden.", 40},
	{"kara_21684_04", "Advanced", "Strategie: Sweep nutzen, wenn 1 bis 3 Einheiten vor dem Koenig stehen. Heroism aktiv halten, wenn verbuendete Figuren in einem der acht angrenzenden Felder stehen.", 30},
	{"kara_21684_05", "Important", "Sweep verursacht 4k Schaden an 3 frontal angrenzenden Einheiten.", 20},
	{"kara_21684_06", "Important", "Heroism erhoeht den Schaden verbuendeter Figuren auf allen 8 angrenzenden Feldern um 50%.", 10},
}
tipsMap_deDE[21726] = {
	{"kara_21726_01", "Legion", "Turm-Typ; bewegt sich 1 Feld in jede Richtung.", 50},
	{"kara_21726_02", "PriorityTargets", "4. Prioritaet wegen mittlerem Fernkampfschaden.", 40},
	{"kara_21726_03", "Legion", "Wenig Leben und mittlerer Schaden.", 30},
	{"kara_21726_04", "Important", "Höllenfeuer verursacht 3k Schaden an allen feindlichen Figuren auf angrenzenden Feldern.", 20},
	{"kara_21726_05", "Important", "Feuerschild reduziert 5 Sek. lang den erlittenen Schaden um 50%.", 10},
}
tipsMap_deDE[21747] = {
	{"kara_21747_01", "Legion", "Bischof-Typ und die einzige Heilfigur.", 40},
	{"kara_21747_02", "PriorityTargets", "2. Prioritaet, weil nur diese Figur Koenig und andere Figuren heilen kann.", 30},
	{"kara_21747_03", "Legion", "Wenig Leben und wenig Schaden.", 20},
	{"kara_21747_04", "Important", "Diese Figur sollte sich nur wenig bewegen, aus Feuer bleiben und vor allem Koenig und Dame am Leben halten.", 10},
}
tipsMap_deDE[21748] = {
	{"kara_21748_01", "Legion", "Springer-Typ; bewegt sich in L-Form.", 50},
	{"kara_21748_02", "PriorityTargets", "5. Prioritaet wegen geringem Nah- und Fernkampfschaden.", 40},
	{"kara_21748_03", "Legion", "Mittleres Leben und wenig Schaden.", 30},
	{"kara_21748_04", "Important", "Biss verursacht 3k Schaden an einer Figur 1 Feld direkt vor ihm.", 20},
	{"kara_21748_05", "Important", "Heulen verursacht 2k Schaden an feindlichen Figuren in einer geraden Reihe von 3 Feldern vor ihm.", 10},
}
tipsMap_deDE[21750] = {
	{"kara_21750_01", "Legion", "Damen-Typ; bewegt sich 3 Felder gerade oder 2 diagonal.", 50},
	{"kara_21750_02", "PriorityTargets", "3. Prioritaet, da sie hohen Single-Target- und AoE-Schaden macht.", 40},
	{"kara_21750_03", "Advanced", "Strategie: Giftwolke auf Cooldown in die Mitte von Gegnergruppen legen. Feuerball als Filler auf das Hauptziel nutzen.", 30},
	{"kara_21750_04", "Important", "Feuerball verursacht 4k Schaden an einer einzelnen Schachfigur in Reichweite.", 20},
	{"kara_21750_05", "Important", "Giftwolke verursacht 6k Schaden an einer feindlichen Figur und allen angrenzenden feindlichen Figuren. 15 Sek. Cooldown.", 10},
}
tipsMap_deDE[21752] = {
	{"kara_21752_01", "Legion", "Startet den Kampf, wenn ihr mit dem Koenig sprecht. Dadurch werden die Figuren dieser Seite fuer euer Team freigeschaltet.", 60},
	{"kara_21752_02", "PriorityTargets", "1. Prioritaet, denn wer den gegnerischen Koenig zuerst toetet, gewinnt.", 50},
	{"kara_21752_03", "Legion", "Viel Leben und hoher Schaden.", 40},
	{"kara_21752_04", "Advanced", "Strategie: Cleave nutzen, wenn 1 bis 3 Einheiten vor dem Koenig stehen. Bloodlust aktiv halten, wenn verbuendete Figuren in einem der acht angrenzenden Felder stehen.", 30},
	{"kara_21752_05", "Important", "Cleave verursacht 4k Schaden an 3 frontal angrenzenden Einheiten.", 20},
	{"kara_21752_06", "Important", "Bloodlust erhoeht den Schaden verbuendeter Figuren auf allen 8 angrenzenden Feldern um 50%.", 10},
}
tipsMap_deDE[15547] = {
	{"kara_15547_01", "Important", "Charged den entferntesten Spieler und wirkt einen 4-Sek.-AoE-Fear. Diese Mobs von noch unberuehrten Gruppen wegziehen.", 10},
}
tipsMap_deDE[15548] = {
	{"kara_15548_01", "Legion", "", 10},
}
tipsMap_deDE[15551] = {
	{"kara_15551_01", "PriorityTargets", "", 20},
	{"kara_15551_02", "Interrupts", "Kick: Tier heilen. Heilt Spektrale Streitrosse und Hengste.", 10},
}
tipsMap_deDE[16170] = {
	{"kara_16170_01", "Legion", "Getarnter Mob.", 10},
}
tipsMap_deDE[16171] = {
	{"kara_16171_01", "Legion", "Abseits von Patrouillen wird dieser Mob meist von 2 getarnten Kaltnebelpirschern begleitet.", 10},
}
tipsMap_deDE[16173] = {
	{"kara_16173_01", "Important", "Wirkt einen AoE-Interrupt mit Spelllock.", 20},
	{"kara_16173_02", "TANK", "Wegen des AoE-Interrupts den Mob von Castern weg halten.", 10},
}
tipsMap_deDE[16174] = {
	{"kara_16174_01", "Legion", "", 10},
}
tipsMap_deDE[16175] = {
	{"kara_16175_01", "Legion", "", 10},
}
tipsMap_deDE[16176] = {
	{"kara_16176_01", "Important", "Wirkt Heulen der zerbrochenen Hügel, ein Fluch mit 10 Metern Reichweite, der Mana, Energie und Wut entzieht.", 10},
}
tipsMap_deDE[16177] = {
	{"kara_16177_01", "Important", "Der Mob cleaved. Nur der Tank sollte vor ihm stehen.", 10},
}
tipsMap_deDE[16178] = {
	{"kara_16178_01", "Important", "Phasing aehnlich wie ein Warp Pirscher. Jaegermal kann helfen, den Mob sichtbar zu halten.", 10},
}
tipsMap_deDE[16389] = {
	{"kara_16389_01", "Legion", "Schwacher Nahkampf-Mob.", 10},
}
tipsMap_deDE[16406] = {
	{"kara_16406_01", "Important", "Wegen ihrer Heilungen und weil sie mit Spektralen Bewahrern in Packs kommen, ist CC gegen diese Mobs Pflicht.", 10},
}
tipsMap_deDE[16407] = {
	{"kara_16407_01", "Legion", "Schwacher Nahkampfangriff.", 20},
	{"kara_16407_02", "Important", "Wirkt Fluch der vergangenen Lasten und reduziert Bewegungstempo und Staerke um 70%.", 10},
}
tipsMap_deDE[16408] = {
	{"kara_16408_01", "Legion", "Immun gegen Taunt und machen hohen Nahkampfschaden.", 20},
	{"kara_16408_02", "Important", "Wirkt Demoralisierender Ruf und senkt die Angriffskraft naher Spieler.", 10},
}
tipsMap_deDE[16409] = {
	{"kara_16409_01", "TANK", "Diesen Mob zusammen mit der nahe stehenden Gruppe pullen und mit AoE-Tools wie Weihe oder Donnerknall aufnehmen.", 20},
	{"kara_16409_02", "Important", "Den Mob und seine Gruppe erst dann per AoE runterbrennen, wenn der Tank sicher Aggro auf allen Engaged-Zielen hat.", 10},
}
tipsMap_deDE[16410] = {
	{"kara_16410_01", "Important", "Wirkt eine nicht dispellbare Gedankenkontrolle. Kontrollierte Spieler sollten gesheeped oder anderweitig per CC gesichert werden.", 20},
	{"kara_16410_02", "Important", "Immun gegen Untote fesseln.", 10},
}
tipsMap_deDE[16411] = {
	{"kara_16411_01", "Legion", "", 10},
}
tipsMap_deDE[16412] = {
	{"kara_16412_01", "Important", "Verursacht Feuerschaden und wirft das Ziel fuer 2 Sek. zu Boden.", 10},
}
tipsMap_deDE[16414] = {
	{"kara_16414_01", "Important", "Setzt Betrunkener Schaedelbruch mit 40 Metern Reichweite und 4 Sek. Stun.", 30},
	{"kara_16414_02", "Important", "Kommt oft in Zweierpacks und sollte vom Main-Tank und Off-Tank getrennt von anderen Mobs gepullt werden.", 20},
	{"kara_16414_03", "HEALER", "Das Ziel mit Betrunkenem Schaedelbruch bekommt waehrend des Debuffs viel Schaden und braucht Fokusheilung.", 10},
}
tipsMap_deDE[16415] = {
	{"kara_16415_01", "Legion", "Diese Ziele markieren und moeglichst einzeln pullen.", 20},
	{"kara_16415_02", "Important", "Setzt Spröde Knochen, einen 2-Min.-Debuff, der periodisch alle Ruestung entfernt. Entfernbar nur durch Gottesschild oder absorbierbar ueber Erdungstotem.", 10},
}
tipsMap_deDE[16424] = {
	{"kara_16424_01", "Legion", "Fernkampf-Mob, anfaellig fuer Untote fesseln.", 10},
}
tipsMap_deDE[16425] = {
	{"kara_16425_01", "Legion", "Kann gefesselt oder gestunnt werden.", 20},
	{"kara_16425_02", "Important", "Schildschlag stunnt einen Spieler fuer 3 Sek.", 10},
}
tipsMap_deDE[16459] = {
	{"kara_16459_01", "Important", "Verlockende Aura vor der Verwandlung reduziert den erlittenen physischen Schaden um 50%.", 40},
	{"kara_16459_02", "Important", "Loescht alle Debuffs bei 50%, wenn der Mob seine wahre Gestalt annimmt.", 30},
	{"kara_16459_03", "Important", "Bezaubernde Aura nach der Verwandlung reduziert den erlittenen Magieschaden um 50%.", 20},
	{"kara_16459_04", "Important", "Banshee-Klage ist ein kurzer AoE-Silence nach der Verwandlung.", 10},
}
tipsMap_deDE[16460] = {
	{"kara_16460_01", "PriorityTargets", "", 40},
	{"kara_16460_02", "WARLOCK", "Immun gegen Fluch der Sprachen.", 30},
	{"kara_16460_03", "Important", "Wirkt Drohender Verrat und verursacht nach 10 Sek. rund 3k Schaden.", 20},
	{"kara_16460_04", "Important", "Loescht alle Debuffs bei 50%, wenn der Mob seine wahre Gestalt annimmt.", 10},
}
tipsMap_deDE[16461] = {
	{"kara_16461_01", "Important", "AoE-Verfuehren fuer 6 Sek. Der Off-Tank sollte etwas Abstand halten und uebernehmen, wenn der Main-Tank verfuehrt wird.", 20},
	{"kara_16461_02", "Important", "Loescht alle Debuffs bei 50%, wenn der Mob seine wahre Gestalt annimmt.", 10},
}
tipsMap_deDE[16468] = {
	{"kara_16468_01", "Legion", "", 10},
}
tipsMap_deDE[16470] = {
	{"kara_16470_01", "Important", "Immun gegen Taunt und CC. Vorsicht mit AoE, sonst pullt ihr schnell weitere Gruppen.", 10},
}
tipsMap_deDE[16471] = {
	{"kara_16471_01", "Legion", "Immun gegen Taunt, Untote vertreiben, Eiskältefalle, Stuns und Wirbelsturm. Anfaellig fuer Untote fesseln.", 30},
	{"kara_16471_02", "Important", "Wenn diese Mobs paarweise kommen, sollte einer gefesselt werden.", 20},
	{"kara_16471_03", "TANK", "Ein Krieger sollte Main-Tank sein und nach Frostschock Zauberreflexion nutzen, um den Stunteil zurueckzuwerfen.", 10},
}
tipsMap_deDE[16472] = {
	{"kara_16472_01", "Important", "Immun gegen Verlangsamungen, Untote fesseln und Stuns.", 20},
	{"kara_16472_02", "Important", "Sollte von Krieger oder Schurke entwaffnet werden.", 10},
}
tipsMap_deDE[16473] = {
	{"kara_16473_01", "TANK", "Den Mob aus dem Rampenlicht ziehen, da der Spieler im Spotlight mehr Schaden verursacht.", 30},
	{"kara_16473_02", "Important", "Immun gegen Eiskältefalle und Untote fesseln.", 20},
	{"kara_16473_03", "DAMAGE", "Im Spotlight stehen bringt euch einen Schadensbuff.", 10},
}
tipsMap_deDE[16481] = {
	{"kara_16481_01", "Legion", "", 10},
}
tipsMap_deDE[16482] = {
	{"kara_16482_01", "Legion", "Immun gegen Untote fesseln und Stun.", 10},
}
tipsMap_deDE[16485] = {
	{"kara_16485_01", "Important", "Wenn diese Mobs im Pack kommen, nicht den Schaden splitten. Immer einzeln fokussieren.", 20},
	{"kara_16485_02", "Important", "Spieler mit Überladen als Arkandebuff muessen von anderen weglaufen, weil der AoE-Schaden pro Tick ansteigt.", 10},
}
tipsMap_deDE[16488] = {
	{"kara_16488_01", "PriorityTargets", "Beim Tod stellt Lose Mana Spielern Mana wieder her.", 20},
	{"kara_16488_02", "Important", "Durch das Manaschild durchschaden. Der Mob stirbt, wenn sein Mana leer ist.", 10},
}
tipsMap_deDE[16489] = {
	{"kara_16489_01", "Advanced", "Strategie: Nahe Manafresser auf Range anziehen und Chaotische Empfindung vom Raid wegziehen lassen.", 30},
	{"kara_16489_02", "Important", "Setzt Instabile Magie auf Spieler. Der Debuff erhoeht verursachten Zauberschaden um 300, aber eingehenden Zauberschaden um 600 fuer 2 Min.", 20},
	{"kara_16489_03", "Important", "Immun gegen Verbannen und Stuns.", 10},
}
tipsMap_deDE[16491] = {
	{"kara_16491_01", "Important", "Immun gegen die meisten Magieeffekte inklusive Zauberstaebe. Selbst Caster sollten hier physischen Schaden nutzen.", 10},
}
tipsMap_deDE[16492] = {
	{"kara_16492_01", "Important", "Wirkt Mana entziehen als Kanal. Nahe Arkane Anomalien am besten zuerst toeten, damit Lose Mana beim Tod hilft.", 10},
}
tipsMap_deDE[16504] = {
	{"kara_16504_01", "TANK", "Den Mob waehrend Faust aus Stein kiten. Die Faehigkeit macht haerter und langsamer: +35% Nahkampfschaden, -75% Bewegungstempo, -35% Angriffstempo.", 50},
	{"kara_16504_02", "Important", "Waehend Gegenfeuer wirkt der Mob je nach Ansage unterschiedliche arkane Retaliations:", 40},
	{"kara_16504_03", "Legion", "EL-2S reflektiert gegen Zauber.", 30},
	{"kara_16504_04", "Legion", "EL-5R reflektiert gegen Fernkampfgeschosse.", 20},
	{"kara_16504_05", "Legion", "EL-7M reflektiert gegen Meelee.", 10},
}
tipsMap_deDE[16525] = {
	{"kara_16525_01", "Legion", "Der Mob phaset ein und aus. Entdecken von Unsichtbarkeit oder Elixier der geringeren Unsichtbarkeit helfen, ihn sichtbar zu halten.", 20},
	{"kara_16525_02", "Important", "Anfaellig fuer Fluch der Sprachen, Untote fesseln und Untote vertreiben.", 10},
}
tipsMap_deDE[16526] = {
	{"kara_16526_01", "Important", "Diese Mobs zuerst burnen. Die Volleys haben 20 Meter Reichweite.", 20},
	{"kara_16526_02", "Important", "Immun gegen Untote fesseln und Fluch der Sprachen.", 10},
}
tipsMap_deDE[16529] = {
	{"kara_16529_01", "PriorityTargets", "Diesen Mob vor Mana Warps fokussieren, wegen seiner arkanen Volley-AoE.", 20},
	{"kara_16529_02", "Important", "Immun gegen Verbannen.", 10},
}
tipsMap_deDE[16530] = {
	{"kara_16530_01", "Important", "Diese Mobs wirken Warpbruch, wachsen an und machen bei niedrigem Leben arkane AoE-Explosionen. Bei etwa 8 bis 15% fearen oder stunnen.", 10},
}
tipsMap_deDE[16539] = {
	{"kara_16539_01", "Legion", "Anfaellig fuer Dämonen versklaven und Verbannen.", 10},
}
tipsMap_deDE[16540] = {
	{"kara_16540_01", "Legion", "Immun gegen jede Form von Crowd Control.", 10},
}
tipsMap_deDE[16544] = {
	{"kara_16544_01", "Important", "Main-Tank und Off-Tank muessen Platz 1 und 2 auf dem Threat halten, da diese Mobs immun gegen Taunt sind und Nicht-Tanks hart treffen.", 20},
	{"kara_16544_02", "Important", "Der Mob entwaffnet das Ziel mit der hoechsten Aggro und senkt dabei dessen Bedrohung auf diesem Mob.", 10},
}
tipsMap_deDE[16545] = {
	{"kara_16545_01", "PriorityTargets", "Stackender Raid-Debuff mit 3% weniger Intelligenz und Willenskraft pro Stack, bis zu 15 Mal.", 30},
	{"kara_16545_02", "Important", "Wirkt Transference. Dieser Magie-Debuff uebertraegt eingehende Heilung von einem Spieler auf den Mob.", 20},
	{"kara_16545_03", "Important", "Arkane Salve trifft mehrere Ziele mit etwa 2k Arkanschaden pro Treffer.", 10},
}
tipsMap_deDE[16595] = {
	{"kara_16595_01", "Important", "Immun gegen jede Form von CC.", 20},
	{"kara_16595_02", "Important", "Frontal-Cleave. Nur der Tank sollte vor dem Mob stehen. Bei mehreren Mobs braucht jeder sein eigenes Ziel, leicht voneinander getrennt.", 10},
}
tipsMap_deDE[16596] = {
	{"kara_16596_01", "Important", "Klaffender Schlund legt einen AoE-Bleed auf Spieler in Meelee-Reichweite.", 20},
	{"kara_16596_02", "Important", "Infektiöses Gift ist ein Natur-DoT im 10-Meter-AoE.", 10},
}
tipsMap_deDE[17067] = {
	{"kara_17067_01", "Legion", "Wird vom Phantomwächter beschworen.", 20},
	{"kara_17067_02", "Important", "Setzt Zerfleischen. Diese Mobs koennen vom Off-Tank gehalten oder mit DoTs/Burst schnell beseitigt werden.", 10},
}
tipsMap_deDE[17096] = {
	{"kara_17096_01", "PriorityTargets", "Spawnt alle 10 Sekunden.", 10},
}
tipsMap_deDE[17167] = {
	{"kara_17167_01", "PriorityTargets", "Bleiben 90 Sek. aktiv und despawnen dann. Frostwiderstand kann helfen.", 30},
	{"kara_17167_02", "Important", "Immun gegen Frostschaden.", 20},
	{"kara_17167_03", "WARLOCK", "Anfaellig fuer Fear und Verbannen.", 10},
}
tipsMap_deDE[17229] = {
	{"kara_17229_01", "PriorityTargets", "Respawnt etwa alle 45 Sekunden.", 30},
	{"kara_17229_02", "Important", "Wenn der Mob stirbt, bekommt Terestian Illhoof einen Debuff und nimmt mehr Schaden von Spielern.", 20},
	{"kara_17229_03", "PALADIN", "Immun gegen Boeses vertreiben.", 10},
}
tipsMap_deDE[17248] = {
	{"kara_17248_01", "PriorityTargets", "Erscheinen waehrend des Terestian-Illhoof-Kampfes auf einem Raider. Diese Ketten muessen sofort zerstört werden.", 10},
}
tipsMap_deDE[17261] = {
	{"kara_17261_01", "Legion", "", 10},
}
tipsMap_deDE[17267] = {
	{"kara_17267_01", "Legion", "", 10},
}
tipsMap_deDE[17283] = {
	{"kara_17283_01", "Legion", "", 10},
}
tipsMap_deDE[24664] = {
	{"magisters_terrace_24664_01", "Important", "", 10},
}
tipsMap_deDE[24552] = {
	{"magisters_terrace_24552_01", "Important", "", 10},
}
tipsMap_deDE[24553] = {
	{"magisters_terrace_24553_01", "Important", "", 10},
}
tipsMap_deDE[24554] = {
	{"magisters_terrace_24554_01", "Important", "", 10},
}
tipsMap_deDE[24555] = {
	{"magisters_terrace_24555_01", "Important", "", 10},
}
tipsMap_deDE[24556] = {
	{"magisters_terrace_24556_01", "Important", "", 10},
}
tipsMap_deDE[24557] = {
	{"magisters_terrace_24557_01", "Important", "", 10},
}
tipsMap_deDE[24558] = {
	{"magisters_terrace_24558_01", "Important", "", 10},
}
tipsMap_deDE[24559] = {
	{"magisters_terrace_24559_01", "Important", "", 10},
}
tipsMap_deDE[24561] = {
	{"magisters_terrace_24561_01", "Important", "", 10},
}
tipsMap_deDE[24656] = {
	{"magisters_terrace_24656_01", "Important", "", 10},
}
tipsMap_deDE[24674] = {
	{"magisters_terrace_24674_01", "Important", "", 10},
}
tipsMap_deDE[24675] = {
	{"magisters_terrace_24675_01", "Legion", "", 10},
}
tipsMap_deDE[24683] = {
	{"magisters_terrace_24683_01", "Important", "", 10},
}
tipsMap_deDE[24684] = {
	{"magisters_terrace_24684_01", "Important", "", 10},
}
tipsMap_deDE[24685] = {
	{"magisters_terrace_24685_01", "Important", "", 10},
}
tipsMap_deDE[24686] = {
	{"magisters_terrace_24686_01", "Important", "", 10},
}
tipsMap_deDE[24687] = {
	{"magisters_terrace_24687_01", "Important", "", 10},
}
tipsMap_deDE[24688] = {
	{"magisters_terrace_24688_01", "Important", "", 10},
}
tipsMap_deDE[24689] = {
	{"magisters_terrace_24689_01", "Important", "", 10},
}
tipsMap_deDE[24690] = {
	{"magisters_terrace_24690_01", "Important", "", 10},
}
tipsMap_deDE[24696] = {
	{"magisters_terrace_24696_01", "Important", "", 10},
}
tipsMap_deDE[24697] = {
	{"magisters_terrace_24697_01", "Important", "", 10},
}
tipsMap_deDE[24698] = {
	{"magisters_terrace_24698_01", "Important", "", 10},
}
tipsMap_deDE[24722] = {
	{"magisters_terrace_24722_01", "Legion", "", 10},
}
tipsMap_deDE[24745] = {
	{"magisters_terrace_24745_01", "Legion", "", 10},
}
tipsMap_deDE[24761] = {
	{"magisters_terrace_24761_01", "Important", "", 10},
}
tipsMap_deDE[24762] = {
	{"magisters_terrace_24762_01", "Important", "", 10},
}
tipsMap_deDE[24777] = {
	{"magisters_terrace_24777_01", "Important", "", 10},
}
tipsMap_deDE[24781] = {
	{"magisters_terrace_24781_01", "Legion", "", 10},
}
tipsMap_deDE[24815] = {
	{"magisters_terrace_24815_01", "Important", "", 10},
}
