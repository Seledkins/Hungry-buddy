image_xscale = lerp(image_xscale, max_image_xscale, scale_lerp_amount);
image_yscale = lerp(image_yscale, max_image_yscale, scale_lerp_amount);

header_scale = lerp(header_scale, header_max_scale, scale_lerp_amount);
description_scale = lerp(description_scale, description_max_scale, scale_lerp_amount);

arrowx = lerp(arrowx, arrowx_end, scale_lerp_amount);
arrowy = lerp(arrowy, arrowy_end, scale_lerp_amount);

if (!flag_to_destroy) {
	exit;
}

image_alpha = lerp(image_alpha, 0, scale_lerp_amount);

if (image_alpha == 0) {
	instance_destroy();
}