if (!mouse_on_self() && o_loot_chest.image_speed == 0) {
	destroying = true;
	o_loot_chest.state = "close";
	o_loot_chest.desc_create_func();
}