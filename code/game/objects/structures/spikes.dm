/obj/structure/spikes
	name = "anti-hobo spikes"
	desc = "For when you run out of options."
	icon = 'icons/obj/structures.dmi'
	icon_state = "brokenratvargrille"
	layer = BELOW_OPEN_DOOR_LAYER
	level = 3
	max_integrity = 500

/obj/structure/spikes/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/caltrop, 1, 4, _flags = CALTROP_BYPASS_SHOES|CALTROP_SAFE_VERTICAL)
