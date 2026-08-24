depth = -1;

#region size 
draw_set_font(description_font);
description_width = string_width_scribble_ext(description, max_width) * description_max_scale;
description_height = string_height_scribble_ext(description, max_width) * description_max_scale;

if (header != "") {
	draw_set_font(header_font);
	header_width = string_width_scribble_ext(header, max_width) * header_max_scale;
	header_height = string_height_scribble_ext(header, max_width) * header_max_scale;
} else { 
	header_width = 0;
	header_height = 0 
} 

var scale_change = 0.1;

while(sprite_width < (max(description_width, header_width)) + padding * 2) {
	image_xscale += scale_change;
}

padding_header_ratio = (header == "") ? 0 : 1;

while(sprite_height < (description_height + header_height + padding * (2 + padding_header_ratio))) {
	image_yscale += scale_change;
}
#endregion

var cam_centerx = Camera.view_x + Camera.view_width / 2;
var cam_centery = Camera.view_y + Camera.view_height / 2;

dir_to_cam_center = round_to_90(point_direction(x, y, cam_centerx, cam_centery));

var offset_direction = dir_to_cam_center == 0 || dir_to_cam_center == 180 || dir_to_cam_center == 360;
var dist_to_origin = 0;

var offsets_to_origin = (sprite_get_width(sp_description_arrow) * show_arrow) + offset_to_target;

// offset direction
if (offset_direction /*horiazontal*/) {
	dist_to_origin = sprite_width / 2 + offsets_to_origin;
} else /*verical*/ {
	dist_to_origin = sprite_height / 2 + offsets_to_origin;	
}

border_origin_distx = lengthdir_x(dist_to_origin, dir_to_cam_center);
border_origin_disty = lengthdir_y(dist_to_origin, dir_to_cam_center);

x += border_origin_distx;
y += border_origin_disty;

// arrow cords
arrowx = x;
arrowy = y;

arrowx_end = x - border_origin_distx + lengthdir_x(offset_to_target, dir_to_cam_center);
arrowy_end = y - border_origin_disty + lengthdir_y(offset_to_target, dir_to_cam_center);

max_image_xscale = image_xscale;
max_image_yscale = image_yscale;

image_xscale = 0;
image_yscale = 0;

