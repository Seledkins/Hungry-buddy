
draw_sprite_ext(sprite_draw, image_index, drawx, drawy, image_xscale, image_yscale, 0, c_white, 1);

if (global.show_projectile_1px) {
	
	draw_set_alpha(0.3);
	
	draw_set_colour(c_red);
	draw_circle(x, y - y_attack_ratio, distance_to_attack, false);
	
	draw_set_colour(c_white);
	draw_set_alpha(1);
}

if (global.show_enemies_params) {
	
	var scale = 0.5;
	var margin = 20 * scale;
	draw_set_valign(fa_center);
	draw_set_halign(fa_center);
	var font_size = 1 * scale;
	
	for(var param = array_length(array_params)-1; param >= 0; param--) {
		
		draw_text_transformed(
				x,
				y - sprite_get_height(sprite_index) * 1.4  - margin * param,
				$"{array_params[param]}: {variable_instance_get(id, array_params[param])}",
				font_size,
				font_size,
				0
			);
	}
	
	draw_set_colour(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_left);
}
