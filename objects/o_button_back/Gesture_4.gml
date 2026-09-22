// Inherit the parent event
event_inherited();

if (!mouse_on_self()) {
	exit;	
}

window_goto("inventory")

//if (is_string(target)) {
//	window_goto(target);
//	o_window_manager.current_window = target;
//} else {
//	room_goto(target);	
//}