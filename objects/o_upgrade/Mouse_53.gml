if (inst_desc != noone && !mouse_on_self()) {
	focused = false;
	description_obj_destroy(inst_desc);
	inst_desc = noone;
}