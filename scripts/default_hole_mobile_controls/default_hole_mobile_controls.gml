function default_hole_mobile_controls(){
	
	cur_spd = get_joystick_force_move() * acceleration * global.mobile_sensitivity * 3 // зависимость ускорения и чувствительности

	prev_move_dir = move_dir
	move_dir = get_joystick_dir_move()
			
	if abs(move_dir - prev_move_dir) >= 90
		cur_spd -= max_spd/2
			
	cur_spd = clamp(cur_spd,0,max_spd)	

	xspd = lengthdir_x(cur_spd, move_dir)
	yspd = lengthdir_y(cur_spd, move_dir)
	
	default_hole_bite()

	move_and_collide(xspd, yspd, other)
	
}