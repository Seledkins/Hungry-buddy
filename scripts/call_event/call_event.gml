///@desc Вызывает функции проверки события передавая data в качестве первого аргумента
function call_event(event_index, data) {
	var check_functions = global.ingame_events[event_index];
	show_debug_message(check_functions);
	for (var f = 0; f < array_length(check_functions); f++) {
		check_functions[f](data);	
	}
}