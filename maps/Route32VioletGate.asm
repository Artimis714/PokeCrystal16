	object_const_def
	const ROUTE32VIOLETGATE_BUTTERFREE

Route32VioletGate_MapScripts:
	def_scene_scripts

	def_callbacks


Route32VioletGateButterfreeScript:
	opentext
	writetext Route32VioletGateButterfreeText
	cry BUTTERFREE
	waitbutton
	closetext
	end

Route32VioletGateButterfreeText:
	text "BUTTERFREE: Freeh!"
	done

Route32VioletGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, ROUTE_32, 6
	warp_event  5,  7, ROUTE_32, 6
	warp_event  4,  7, VIOLET_CITY, 1
	warp_event  5,  7, VIOLET_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  4, SPRITE_BUTTERFREE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route32VioletGateButterfreeScript, -1
