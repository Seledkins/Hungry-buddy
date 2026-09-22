scroll_y += drag_data;
drag_data *= 0.9;

if (scroll_y > scroll_top_limit) {
	scroll_y = lerp(scroll_y, scroll_top_limit, limit_lerp_amount);
} else if (scroll_y < -scroll_bottom_limit) {
	scroll_y = lerp(scroll_y, -scroll_bottom_limit, limit_lerp_amount);
}

with(o_upgrade) {
	if (self.choosen_cell == noone && choosen_cell != undefined && inst_border == noone) {
		self.y = other.surfy + other.scroll_y;
	}
}