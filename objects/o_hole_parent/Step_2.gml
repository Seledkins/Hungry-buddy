// that needs because shadow keeps up
drawy = y;
drawx = x;


if (hp != prev_hp) {
	invincible = true
	alarm[0] = invincible_time
	
	image_alpha = invincible_alpha
	
	create_fluctuation(x, y, 1.4, 4, 2)
}

ds_list_foreach(memory_bite_list, function(mem_inst) {
		show_debug_message(mem_inst);	
	})