
var mouse_x_ = o_fingers_detecror.finger0_guix
var mouse_y_ = o_fingers_detecror.finger0_guiy
var touching = device_mouse_check_button(0, mb_left)



if (point_in_rectangle(mouse_x_, mouse_y_, x1_zone_drag, y1_zone_drag, x2_zone_drag, y2_zone_drag) and touching) // in drag zone
{
	if (!first_touch) {
		
		bg_x = mouse_x_
		bg_y = mouse_y_
	
		first_touch = true
		
	}
	
	joystick_force_move = clamp(point_distance(bg_x, bg_y, mouse_x_, mouse_y_), -radius, radius)
	joystick_dir_move = point_direction(bg_x, bg_y, mouse_x_, mouse_y_)
	
	var joystick_x = bg_x + lengthdir_x(joystick_force_move, joystick_dir_move)
	var joystick_y = bg_y + lengthdir_y(joystick_force_move, joystick_dir_move)
	
	draw_sprite_ext(sprite_joystick, 0, joystick_x, joystick_y, scale, scale, 0, c_white, alpha)
	
	//draw_text(100, 100, $"joystick force move: {get_joystick_force_move()}")
	
}
else 
{
	bg_x = default_bg_x
	bg_y = default_bg_y
	
	first_touch = false	
	joystick_force_move = 0
	joystick_dir_move = 0
}


draw_sprite_ext(sprite_bg, 0, bg_x, bg_y, scale, scale, 0, c_white, alpha)





