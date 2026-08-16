if (fullness >= max_fullness) {
	instance_create_depth(0, 0, 0, o_upgrade_manager);
	
	fullness = 0;
	max_fullness += max_fullness_increase;
	max_fullness_increase += max_fullness_increase_add;
}