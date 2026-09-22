function ingame_apply_upgrades() {
	struct_foreach(global.save.upgrades.selected, function(key) {
		global.upgrades_info.upgrades[$ key].callback();
	})
	
}