if (floating) {
	drawy = drawy + cos(current_time / floating_strength);
}

image_xscale = lerp(image_xscale, 1, 0.11);
image_yscale = lerp(image_xscale, 1, 0.07);

if (invincible) {
	close_obj_in_arena();
}