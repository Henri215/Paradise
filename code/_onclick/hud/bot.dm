/obj/screen/bot
	icon = 'icons/mob/screen1_bot.dmi'

/obj/screen/bot/radio
	name = "radio"
	icon_state = "radio"

/obj/screen/bot/radio/Click()
	if(isbot(usr))
		var/mob/living/simple_animal/bot/B = usr
		B.Radio.interact(usr)

/datum/hud/proc/bot_hud()
	src.adding = list()
	src.other = list()

	var/obj/screen/using

	using = new /obj/screen/bot/radio()
	using.name = "radio"
	using.dir = SOUTHWEST
	using.icon_state = "radio"
	using.screen_loc = ui_bot_radio
	using.layer = 20
	src.adding += using

	mymob.healths = new /obj/screen()
	mymob.healths.icon = 'icons/mob/screen1_bot.dmi'
	mymob.healths.icon_state = "health0"
	mymob.healths.name = "health"
	mymob.healths.screen_loc = ui_borg_health

	mymob.pullin = new /obj/screen/pull()
	mymob.pullin.icon = 'icons/mob/screen1_bot.dmi'
	mymob.pullin.update_icon(mymob)
	mymob.pullin.screen_loc = ui_bot_pull

	mymob.client.screen = list()

	mymob.client.screen += list(mymob.healths, mymob.pullin)
	mymob.client.screen += adding + other
	mymob.client.screen += mymob.client.void
	return