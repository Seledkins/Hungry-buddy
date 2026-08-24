outline_draw_sprite(sprite_index, image_index, x, y, ol_config(1, outline_color));

if (level == max_level) {
	draw_sprite(sp_bought_upgrade_marker, 0, x, y);
} else if (global.mushrooms >= cost && locker == noone) {
	var padding = 6;
	draw_sprite(sp_buy_flag, 0, x - sprite_width / 2 + padding, y - sprite_height / 2 + padding);	
}