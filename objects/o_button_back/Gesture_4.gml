// Inherit the parent event
event_inherited();

if (!mouse_on_self()) {
	exit;	
}

room_goto(rm_play);