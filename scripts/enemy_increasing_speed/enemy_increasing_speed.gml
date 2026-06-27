function enemy_increasing_speed(cur_spd, acceleration, max_spd){			
	return clamp(cur_spd + acceleration, 0, max_spd)
}