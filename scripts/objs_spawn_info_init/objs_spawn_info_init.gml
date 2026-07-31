function objs_spawn_info_init(){
	
	show_debug_message("\n\n\n\n");
	
	gml_pragma("MarkTagAsUsed", "enemy", "spawn_bonus");
	global.objs_spawn_info = array_merge_deep(
		enemies_info_init(),
		bonus_info_init()
	);
}

