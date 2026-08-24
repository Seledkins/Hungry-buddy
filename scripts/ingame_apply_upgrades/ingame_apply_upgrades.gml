function ingame_apply_upgrades(){
	struct_foreach(global.upgrades_callbacks, function(key, upgrade_info) {
		upgrade_info.callback();
	})
	
}