fd_rectangle_update(fdrect_combo_bg);
texture_set_interpolation(false);

dir = random(359);
	
var len = 85 * size_ratio;
var _x = lengthdir_x(len, dir) + fdrect_combo_width / 2;
var _y = lengthdir_y(len, dir) + fdrect_combo_height / 2;
		
var scale_replace_material = 6 * size_ratio;
var scale_add_velocity = 2 * size_ratio;
var add_velocity_ratio = 0.35;
		
fd_rectangle_replace_material(fdrect_combo_bg, sp_fd_circle, 0, _x, _y, scale_replace_material, scale_replace_material, c_white, 1);
fd_rectangle_add_velocity(fdrect_combo_bg, sp_fd_circle, 0, _x, _y, scale_add_velocity, scale_add_velocity, (_x - x_previous) * add_velocity_ratio, (_y - y_previous) * add_velocity_ratio);
		
x_previous = _x;
y_previous = _y;

if (combo > combo_previous) {
	size_ratio = clamp(size_ratio + size_ratio_increase, 0, max_size_ratio);
	alarm[0] = clamp(get_combo_reset_time(), 150, infinity);
}

if (combo_previous < combo && (combo_previous) % combo_show_number != 0 && instance_exists(o_hole_parent)) {
	for(var c = combo_previous; c <= combo; c++) {
		
		if (c % combo_show_number == 0 && c != 0) {
			var show_combo_text = $"X{c}";
			var formating = $"[shake]{dec_color(global.color_white)}"
			formating = c < 50 ? formating : formating + dec_color(global.color_red);
			scribble_anim_shake(c / 30, 1);
			instance_create_message(o_hole_parent.x, o_hole_parent.y, show_combo_text,,,, formating);
			break;
		}
	}
}



scribble_anim_wheel(1, combo * 0.03, combo / 200);

combo_previous = combo;