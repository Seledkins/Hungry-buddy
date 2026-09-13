if (appearance_flag) {
	appearance_ratio = lerp(appearance_ratio, 1, appearance_step);
	if (locker != noone) {
		locker.image_xscale *= appearance_ratio;
		locker.image_yscale *= appearance_ratio;	
	}
	
	if (appearance_ratio == 1) {
		appearance_flag = false;
	}
}