if (repaire_to_change && !up_choosen) {
	with(o_upgrade) {
		if (outline_color == global.color_dark_purple) {
			self.choosen_cell = other.id;
			self.inst_border = instance_create_border_upgrade(self, self.x, self.y, self.depth - 1);
			global.save.upgrades.selected[$ self.key] = other.spawn_index;
			save();
		}
	}
	
	
	up_choosen = true;
}