if (image_xscale <= max_scale) {
	anim_curve_posx += anim_curve_posx_step;
	var channel_evaluate = animcurve_channel_evaluate(anim_curve_channel, anim_curve_posx);
	
	image_xscale += scale_increment * channel_evaluate;
	image_yscale = image_xscale;
	shadow_width = sprite_width_main * image_xscale;
	outline_width = clamp(1 / image_xscale, 1, infinity)
} else if (image_speed == 0) {
	image_speed = 1;
	var inst = instance_create_layer(x, y, obj_layer_create, spawn_obj, { appearance_created : true });
	create_fluctuation(x, y, image_xscale * 4, image_xscale * 30, 2, image_xscale / 2);
	audio_play_sfx_random(snds_bubbles_appearances_arr, 0.6, random_range(0.95, 1.05), 15, false);
}