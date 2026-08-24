set_room_permission();

global.upgrades_tree = upgrades_tree_load();

if (global.catch_upgrades_callbacks) {
		with(o_upgrade) {
			if (self.level > 0 && self.object_index != o_upgrade_manager_and_prestige) {
				if (array_length(self.upgrade_callbacks) < self.max_level) {
					show_error($"Заданы не все калбэки у улучшения {self.key}", true);	
				}
				
				global.upgrades_callbacks[$ self.key] = {
					callback : self.upgrade_callbacks[self.level - 1],
					key : self.key,
					
				};	
			}
		}
	
	show_debug_message("Upgrades callbacks:")
	show_debug_message(global.upgrades_callbacks);
	
	global.catch_upgrades_callbacks = false;
	room_goto(rm_play);
}

