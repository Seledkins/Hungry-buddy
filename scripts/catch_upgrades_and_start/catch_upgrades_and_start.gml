function catch_upgrades_and_start(room_after_catch_upgrades){
	global.catch_upgrades_callbacks = true;
	global.room_after_catch_upgrades = room_after_catch_upgrades;
	room_goto(rm_upgrades);
	
}