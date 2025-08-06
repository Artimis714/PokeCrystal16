	object_const_def
	const GoldenrodArchives1BF_BOULDER
	const GoldenrodArchives1BF_GHOST_VERONICA
	const GoldenrodArchives1BF_GHOST_ERICK
	const GoldenrodArchives1BF_GHOST_ANDY
	const GoldenrodArchives1BF_GHOST_TYLER
	const GoldenrodArchives1BF_GHOST_VIRGIL
	const GoldenrodArchives1BF_Rock2
	const GoldenrodArchives1BF_Rock3
	const GoldenrodArchives1BF_Rock4


GoldenrodArchives1BF_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodArchivesBoulder1BF:
	jumpstd SmashRockScript

TrainerBeautyVeronicaGhost:
	trainer BEAUTY, VERONICA, EVENT_BEAT_BEAUTY_VERONICA, BeautyVeronicaGhostSeenText, BeautyVeronicaGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyVeronicaGhostAfterBattleText
	setevent EVENT_GHOST_VERONICA
	waitbutton
	closetext
	end

TrainerCooltrainermErickGhostGhost:
	trainer COOLTRAINERM, ERICK, EVENT_BEAT_COOLTRAINERM_ERICK, CooltrainermErickGhostGhostSeenText, CooltrainermErickGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermErickGhostGhostAfterBattleText
	setevent EVENT_GHOST_ERICK
	waitbutton
	closetext
	end

TrainerCooltrainermAndyGhostGhost:
	trainer COOLTRAINERM, ANDY, EVENT_BEAT_COOLTRAINERM_ANDY, CooltrainermAndyGhostGhostSeenText, CooltrainermAndyGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermAndyGhostGhostAfterBattleText
	setevent EVENT_GHOST_ANDY
	waitbutton
	closetext
	end

TrainerCooltrainermTylerGhostGhost:
	trainer COOLTRAINERM, TYLER, EVENT_BEAT_COOLTRAINERM_TYLER, CooltrainermTylerGhostGhostSeenText, CooltrainermTylerGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermTylerGhostGhostAfterBattleText
	setevent EVENT_GHOST_TYLER
	waitbutton
	closetext
	end

TrainerGenglemanVirgilGhost:
	opentext
	checkevent EVENT_BEAT_GENTLEMAN_VIRGIL
	iftrue .Defeated
	writetext GenglemanVirgilGhostGhostSeenText
	waitbutton
	closetext
	winlosstext GenglemanVirgilGhostGhostBeatenText, 0
	loadtrainer GENTLEMAN, VIRGIL
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_GENTLEMAN_VIRGIL
	opentext
	writetext GentlemanVirgilBraverytext
	promptbutton
	verbosegiveitem CLEAR_BELL
	setmapscene ECRUTEAK_TIN_TOWER_ENTRANCE, SCENE_ECRUTEAKTINTOWERENTRANCE_SAGE_BLOCKS
	setevent EVENT_GOT_CLEAR_BELL
	clearevent EVENT_BURNEDTOWER_GHOST1
	clearevent EVENT_BURNEDTOWER_GHOST2
	writetext GentlemanVirgilClearBelltext
	waitbutton
	closetext
	end

.Defeated:
	writetext GenglemanVirgilGhostGhostAfterBattleText
	waitbutton
	closetext
	end

GenglemanVirgilGhostGhostSeenText:
	text "I will defend the"
	line "ARCHIVES until my"
	cont "last breath!"
	done

GenglemanVirgilGhostGhostBeatenText:
	text "They may have"
	line "killed us, but"

	para "still they have"
	line "failed."
	done

GenglemanVirgilGhostGhostAfterBattleText:
	text "I still have a"
	line "family out in."
	cont "CIANWOOD."

	para "My wife and daugh-"
	line "ters. Were kept"

	para "away from most of"
	line "the horrors."

	para "May the FOREST"
	line "PROTECTOR watch"

	para "Over them, and may"
	line "they forget about"
	cont "me."

	para "My hands are just"
	line "as red as any"
	cont "KANTO general's."

	para "If you ever meet"
	line "them, all I ask"

	para "is that you tell"
	line "them that I was"

	para "thinking of them"
	line "when the end came."
	done

GentlemanVirgilBraverytext:
	text "You... are brave."
	line "But more than"
	cont "brave. You are.."

	para "kind. You have"
	line "shown our restless"
	cont "souls kindness."

	para "and for this, we"
	line "thank you."

	para "Three years ago."
	line "I fought at GOLD-"
	cont "ENROD's last stand"

	para "They destroyed our"
	line "ARCHIVES, and tho-"
	cont "usands of years of"
	cont "our history."

	para "They were looking"
	line "for something."

	para "They were looking"
	line "for a treasure,"

	para "which I now best-"
	line "ow upon you."
	done

GentlemanVirgilClearBelltext:
	text "This is the CLEAR"
	line "BELL, and it's the"

	para "key to unlock many"
	line "of JOHTO's secrets."

	para "Begin with the TIN"
	line "TOWER."

	para "You have proven"
	line "yourself worthy of"
	cont "the bell's trials."

	para "I wish you luck."
	done

CooltrainermTylerGhostGhostSeenText:
	text "After all these"
	line "years. It's finally"
	cont "come to this."

	para "RED's Army."
	line "Blood for blood."

	para "When will it stop?"
	done

CooltrainermTylerGhostGhostBeatenText:
	text "My death will be"
	line "worthwhile, if my"

	para "son can know a"
	line "world without war."
	done

CooltrainermTylerGhostGhostAfterBattleText:
	text "My father was a"
	line "young man, when"
	cont "the war began."

	para "He watched them"
	line "burn the BRASS"
	cont "TOWER."

	para "I wanted to be"
	line "a healer."

	para "Ashes to ashes."
	line "It's the only world"
	cont "I've ever known."

	para "It's the world I"
	line "brought my son"
	cont "into."

	para "It was bad enough"
	line "that my wife died"
	
	para "due to complic-"
	line "ations with the"
	cont "birth."

	para "I want my son to"
	line "know more than"

	para "the violence and"
	line "anger of the war."

	para "Please tell him"
	line "I love him."
	done

CooltrainermAndyGhostGhostSeenText:
	text "JACKSON! Hurry!"
	line "The window is low"
	cont "enough!"

	para "You can jump."
	line "get out son!"

	para "Save yourself!"
	done

CooltrainermAndyGhostGhostBeatenText:
	text "He escaped. I knew"
	line "He escaped."

	para "Thank you FOREST"
	line "PROTECTOR for"
	cont "watching over my"
	cont "boy!"
	done

CooltrainermAndyGhostGhostAfterBattleText:
	text "If you meet our"
	line "boy, tell him we're"
	cont "so proud of him."

	para "Such a resourceful"
	line "kid."

	para "His Mom and I, we"
	line "did some terrible"
	cont "things in the war."

	para "We only want"
	line "better for him."

	para "Rather than a path"
	line "of vengeance."

	para "But we know our"
	line "boy please talk"
	cont "to him."

	para "Tell him not to"
	line "make our mistakes!"
	done

CooltrainermErickGhostGhostSeenText:
	text "NO! Please! I don't"
	line "want to die!"
	done

CooltrainermErickGhostGhostBeatenText:
	text "No.. No.. Forest"
	line "Protector, save me"
	cont "Please!"
	done

CooltrainermErickGhostGhostAfterBattleText:
	text "My... my family."
	line "I have a little"
	cont "sister, and a"
	cont "father."

	para "Do you know if..."
	line "they survived the"
	cont "war?"

	para "Please tell them"
	line "I was brave."

	para "I won't be able to"
	line "rest, if they know"
	cont "I was a coward."

	para "If they're still"
	line "alive, you might"

	para "find them in my"
	line "uncle's old house"
	cont "in OLIVINE."

	para "please. Tell them"
	line "I did my best."

	para "Tell them, I love"
	cont "them."
	done

BeautyVeronicaGhostSeenText:
	text "JACKSON! Where is"
	cont "JACKSON!?"
	done

BeautyVeronicaGhostBeatenText:
	text "Did he get out?"
	line "Please, Forest"
	cont "Protector!"

	para "Tell me he got"
	line "out!"
	done

BeautyVeronicaGhostAfterBattleText:
	text "Our JACKSON is a"
	line "smart boy. If he"

	para "got out, he would"
	line "have gone to stay"

	para "with my sister, in"
	line "VIOLET CITY."

	para "She'd make sure he"
	line "kept up with his"
	cont "schooling."

	para "If you see our"
	line "JACKSON, tell him"

	para "that Mom and Dad"
	line "love him so much."

	para "Tell him, that we"
	line "want him to live a"
	cont "full & happy life."
	done

GoldenrodArchives1BF_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 13, GOLDENROD_ARCHIVES, 2
	warp_event 14, 10, GOLDENROD_ARCHIVES, 3
	warp_event  1,  1, GOLDENROD_ARCHIVES_2BF, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 16, 13, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder1BF, -1
	object_event 10, 10, SPRITE_GHOST_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyVeronicaGhost, EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	object_event  5,  8, SPRITE_GHOST_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermErickGhostGhost, EVENT_GOT_ITEMFINDER
	object_event 11, 10, SPRITE_GHOST_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermAndyGhostGhost, EVENT_GOT_LIGHT_BALL_VIOLET_CITY
	object_event  5,  2, SPRITE_GHOST_COOLTRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermTylerGhostGhost, EVENT_GOT_LUCKY_EGG_ECRUTEAK
	object_event 13,  2, SPRITE_GHOST_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 1, TrainerGenglemanVirgilGhost, EVENT_GOT_OLD_AMBER_CIANWOOD
	object_event  5, 15, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder1BF, -1
	object_event  2,  6, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder1BF, -1
