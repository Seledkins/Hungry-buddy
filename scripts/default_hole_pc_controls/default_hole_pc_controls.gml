function default_hole_pc_controls(){
	
	right = keyboard_check(ord("D"))
	left = keyboard_check(ord("A"))
	down = keyboard_check(ord("S"))
	up = keyboard_check(ord("W"))

	var horizontal = right - left
	var vertical  = down - up
	input_level = clamp(point_distance(0,0,horizontal,vertical),0,1)

	prev_move_dir = move_dir
	move_dir = point_direction(0,0,horizontal,vertical)
	
	if cur_spd <= max_spd
		if input_level != 0
			cur_spd += acceleration 
		else
			cur_spd = 0
			
	if abs(move_dir - prev_move_dir) >= 90
		cur_spd -= max_spd/2
			
	cur_spd = clamp(cur_spd,0,max_spd)	

	xspd = lengthdir_x(cur_spd, move_dir)
	yspd = lengthdir_y(cur_spd, move_dir)
	
	default_hole_bite()

	move_and_collide(xspd, yspd, other)
	
	

}