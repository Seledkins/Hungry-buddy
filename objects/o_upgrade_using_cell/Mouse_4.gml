if (repaire_to_change && !up_choosen) {
	with(o_upgrade) {
		if (outline_color == global.color_dark_purple) {
			self.choosen_cell = other.id;
			self.inst_border = instance_create_depth(x, y, self.depth - 1, o_upgrade_border, { sprite_index: sp_upgrades, image_index: self.image_index });
			global.save.upgrades.selected[$ self.key] = other.spawn_index;
			save();
		}
	}
	
	
	up_choosen = true;
}