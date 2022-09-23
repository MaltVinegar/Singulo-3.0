/datum/fishing_catch
	var/caught_type
	var/resistance = 100
	var/tug_chance = 100

/datum/fishing_catch/carp
	caught_type = /mob/living/simple_animal/hostile/carp
	resistance = 60
	tug_chance = 100

/datum/fishing_catch/junk
	caught_type = /obj/item/trash/plate
	resistance = 0
	tug_chance = 20

/datum/fishing_loot
	var/static/list/legendary
	var/static/list/epic
	var/static/list/rare
	var/static/list/common = list(
		new /datum/fishing_catch/carp() = 50,
		new /datum/fishing_catch/junk() = 25
	)
	var/static/list/junk

/datum/fishing_loot/proc/pick_rarity(luck, power)
	return common
