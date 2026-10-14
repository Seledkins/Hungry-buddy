///@desc Добавляет функцию для проверки событию, func принимает 1 аргументом data, который передается при вызове события
function event_add_check_function(event_index, func){
	array_push(global.ingame_events[event_index], func);
	
}