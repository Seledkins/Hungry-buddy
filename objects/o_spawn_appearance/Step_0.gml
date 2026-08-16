if (!global.no_lockstep) {
	exit;	
}

if (image_xscale <= max_scale) {
	anim_curve_posx += anim_curve_posx_step;
	var channel_evaluate = animcurve_channel_evaluate(anim_curve_channel, anim_curve_posx);
	
	image_xscale += scale_increment * channel_evaluate * global.no_lockstep;
	image_yscale = image_xscale;
	shadow_width = sprite_width_main * image_xscale;
	outline_width = clamp(1 / image_xscale, 1, infinity);
	image_speed = 0;
	
} else if (image_speed == 0) {
	image_speed = 1;
	var inst = instance_create_layer(x, y, obj_layer_create, spawn_obj, { appearance_created : true });
	
	var x_exception = (clamp(x, o_arena.bbox_left + global.nature_spawn_padding, o_arena.bbox_right - global.nature_spawn_padding) == x);
	var y_exception = (clamp(y, o_arena.bbox_top + global.nature_spawn_padding, o_arena.bbox_bottom - global.nature_spawn_padding) == y);
	
	
	if (x_exception && y_exception) {
	
		if (instance_number(o_physical_nature_parent) <= global.physical_nature_objects_limit) {
			repeat(irandom_range(2, 5)) {
				instance_create_nature_obj(x, y, choose_random_nature_obj(), random_range(2, 3), 0.1, random(359), true, nature_depth);
			}
		}
	
		if (instance_number(o_fly) <= global.fly_limit) {
			instance_create_nature_obj(x, y, o_fly, random_range(0.8, 2), 0, random(359), false, 0,, {direction_step : random_range(1, 5)})
		}
	
	}
	
	create_fluctuation(x, y, image_xscale * 2, image_xscale * 10, 2, image_xscale / 2);
	audio_play_sfx_random(snds_bubbles_appearances_arr, 0.6, random_range(0.95, 1.05), 15, false);
}