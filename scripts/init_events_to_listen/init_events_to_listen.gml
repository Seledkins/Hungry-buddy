// Коментарии показывают какие аргументы принимают "функциии проверки" этих событий
enum EVENTS {
	ENEMY_EATEN, // count,
	MUSHROOM_EATEN, // count,
	COMBO_INCREASED, // current_combo
	ENEMY_SPAWNED, // obj
	BONUS_SPAWNED, // obj
	
	_length
}

global.ingame_events = array_create(EVENTS._length);
for (var e = 0; e < EVENTS._length; e++) {
	global.ingame_events[e] = [];
}	
