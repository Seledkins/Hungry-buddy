current_appearance_offset = lerp(current_appearance_offset, 0, appearance_offset_speed);
	
array_foreach(values_info, function(value_info, i) {
	var sprite = value_info.sprite
	var xoffset = sprite_get_width(sprite) / 2 - current_appearance_offset;
	var yoffset = sprite_get_height(sprite) / 2;
	
	var variable_owner = value_info.variable_from_obj;
	var variable_name = value_info.variable_name;
		
	var variable = (variable_owner != global) ? variable_instance_get(variable_owner, variable_name) : variable_global_get(variable_name);
		
	variable = value_info.variable_action_function(variable);
		
	var _y = (padding + yoffset) * (i + 1);
	
	draw_sprite_ext_color(sprite, 0, padding + xoffset, _y, global.ui_assets_scale, global.ui_assets_scale, 0, 1, global.color_white, 1);
		
	draw_text_scribble(padding + xoffset * 3.4, _y + 3, $"[fa_middle]{dec_color(global.color_white)}[fnt_curtsweeper][scale, {global.ui_assets_scale}]{variable}")
})