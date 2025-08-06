	object_const_def
	const GoldenrodArchives_BOULDER
	const GoldenrodArchives_GHOST_KIKYO
	const GoldenrodArchives_GHOST_GREGG
	const GoldenrodArchives_GHOST_DALE
	const GoldenrodArchives_GHOST_GRUNTM12
	const GoldenrodArchives_Rock2
	const GoldenrodArchives_Rock3
	const GoldenrodArchives_Rock4


GoldenrodArchives_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodArchivesBoulder:
	jumpstd SmashRockScript

TrainerKimonoGirlKikyoGhost:
	trainer KIMONO_GIRL, KIKYO, EVENT_BEAT_KIMONO_GIRL_KIKYO, KimonoGirlKikyoGhostSeenText, KimonoGirlKikyoGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext KimonoGirlKikyoGhostAfterBattleText
	setevent EVENT_GHOST_KIKYO
	waitbutton
	closetext
	end

TrainerSuperNerdGreggGhost:
	trainer SUPER_NERD, GREGG, EVENT_BEAT_SUPER_NERD_GREGG, SuperNerdGreggGhostGhostSeenText, SuperNerdGreggGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdGreggGhostGhostAfterBattleText
	setevent EVENT_GHOST_GREGG
	waitbutton
	closetext
	end

TrainerCamperDaleGhost:
	trainer CAMPER, DALE, EVENT_BEAT_CAMPER_DALE, CamperDaleGhostGhostSeenText, CamperDaleGhostGhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperDaleGhostGhostAfterBattleText
	setevent EVENT_GHOST_DALE
	waitbutton
	closetext
	end

TrainerGrunt12Ghost:
	trainer GRUNTM, GRUNTM_12, EVENT_BEAT_ROCKET_GRUNTM_12, GruntM12GhostSeenText, GruntM12GhostBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM12GhostAfterBattleText
	setevent EVENT_GHOST_GRUNTM12
	waitbutton
	closetext
	end

GruntM12GhostSeenText:
	text "The Resistance"
	line "lives on. Today,"

	para "tomorrow. Forever!"
	line "We are TEAM ROCKET"

	para "Surrender now or"
	line "prepare to fight!"
	done

GruntM12GhostBeatenText:
	text "But my flame has"
	line "been extinguished."
	done

GruntM12GhostAfterBattleText:
	text "I have a brother."
	line "He was stationed,"

	para "in MAHOGANY last I"
	line "heard but GIOVANNI"

	para "never told us any-"
	line "thing. Waste of"

	para "space, that use-"
	line "less leader."

	para "I'm glad my brother"
	line "wasn't in GOLDENROD"

	para "when RED's ARMY"
	line "struck."

	para "If you meet him,"
	line "let him know I hid"

	para "my wages from the"
	line "war under the last"

	para "tree by the 8th"
	line "bend. He'll know"

	para "where that is."
	line "It's not much, but"

	para "hopefully it'll be"
	line "enough for him to"

	para "start fresh. Some-"
	line "where far away."
	done

CamperDaleGhostGhostSeenText:
	text "RED's Army marches"
	line "Buildings burn."

	para "And here we stand."
	done

CamperDaleGhostGhostBeatenText:
	text "But we faltered."
	done

CamperDaleGhostGhostAfterBattleText:
	text "My father warned"
	line "me about joining"
	cont "the war."

	para "I hope he survived"
	line "He lives out on"
	cont "Route 30."

	para "Tell him... "

	para "No, he'd be dis-"
	line "appointed in me."

	para "Tell him... "
	line "I'm sorry."
	done


SuperNerdGreggGhostGhostSeenText:
	text "I never wanted"
	line "any of this to"
	cont "happen!"

	para "I'm a scholar."
	line "Why? Why us?"
	done

SuperNerdGreggGhostGhostBeatenText:
	text "War has no reason."
	done

SuperNerdGreggGhostGhostAfterBattleText:
	text "We lost, huh?"

	para "Well, that's a real"
	line "kick in the balls."

	para "My baby brother"
	line "should still live"
	cont "in the City."

	para "Assuming there's"
	line "anything left..."

	para "All I wanted, was"
	line "to provide for my"
	cont "little bro."

	para "I hope he's well."
	line "Please, look out"

	para "for him. His name"
	line "is TIMMY."
	done

KimonoGirlKikyoGhostSeenText:
	text "Fire! The building"
	line "is burning!"

	para "There are children"
	line "in here. Someone"
	cont "save us!"
	done 

KimonoGirlKikyoGhostBeatenText:
	text "The fire has been"
	line "extinguished."
	done

KimonoGirlKikyoGhostAfterBattleText:
	text "I had a sister."
	line "She lived in"
	cont "ECRUTEAK."

	para "We hoped she would"
	line "become a dancer"
	cont "like our mom."

	para "..."
	line "..."

	para "You've met her?"
	line "I'm glad to hear"

	para "she became one of"
	line "the Kimono Girls."

	para "Tell her..."
	line "Tell her, I'm"
	cont "proud of her."
	done

GoldenrodArchives_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  6, GOLDENROD_UNDERGROUND_WAREHOUSE, 2
	warp_event  9,  4, GOLDENROD_ARCHIVES_1BF, 1
	warp_event 10,  5, GOLDENROD_ARCHIVES_1BF, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event 12,  9, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder, -1
	object_event 15,  9, SPRITE_GHOST_KIMONO, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerKimonoGirlKikyoGhost, EVENT_GOT_BRIGHTPOWDER
	object_event 16,  7, SPRITE_GHOST_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerSuperNerdGreggGhost, EVENT_GOT_PROTOTYPE_UPGRADE
	object_event 11,  1, SPRITE_GHOST_NERD, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerCamperDaleGhost, EVENT_SPOKE_TO_DALES_DAD
	object_event  4,  3, SPRITE_GHOST_ROCKET, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGrunt12Ghost, EVENT_BABYBRORESTS
	object_event  5, 11, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder, -1
	object_event 14,  2, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder, -1
	object_event  5,  7, SPRITE_ROCK, SPRITEMOVEDATA_SMASHABLE_ROCK, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodArchivesBoulder, -1
