image_xscale = lerp(image_xscale, final_scale, lerp_amount);
image_yscale = image_xscale;

if (destroying) {
	image_alpha = lerp(image_alpha , 0, lerp_amount);
	
	if (image_alpha == 0) {
		instance_destroy()
	}
}