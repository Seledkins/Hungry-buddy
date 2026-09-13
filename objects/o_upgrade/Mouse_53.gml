if (inst_desc != noone && !mouse_on_self()) {
	if (level != max_level) {
		outline_color = global.color_black;
	}	
	focused = false;
	description_obj_destroy(inst_desc);
	inst_desc = noone;
}