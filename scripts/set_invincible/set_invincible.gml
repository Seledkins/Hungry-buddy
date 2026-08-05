function set_invincible(obj, _invincible, time){
	with(obj) {
		invincible = _invincible
	
		image_alpha = invincible / 2
	
		alarm[1] = time
	}
}