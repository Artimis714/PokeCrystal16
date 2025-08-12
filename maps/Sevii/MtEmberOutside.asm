	object_const_def

MtEmberOutside_MapScripts:
	def_scene_scripts

	def_callbacks

MtEmberOutside_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 28,  3, PLAYERS_HOUSE_2F, 1 ; MtEmberSummit
	warp_event 29,  3, PLAYERS_HOUSE_2F, 1 ; MtEmberSummit
	warp_event 16, 23, MT_EMBER_OUTSIDE, 4 ; LowertoUpperCave
	warp_event 38, 11, MT_EMBER_OUTSIDE, 3 ; UppertoLowerCave

	def_coord_events

	def_bg_events

	def_object_events