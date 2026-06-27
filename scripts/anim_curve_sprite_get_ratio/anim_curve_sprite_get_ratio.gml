function anim_curve_sprite_get_ratio(anim_curve, percent, sprite){
	return animcurve_channel_evaluate(anim_curve, percent / (sprite_get_speed(sprite) / (sprite_get_number(sprite) / 1.4)));
}