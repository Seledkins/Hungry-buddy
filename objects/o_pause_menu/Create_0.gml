buttons_array_clear = function() {
	array_foreach(buttons_info, function(button_info) {instance_destroy(button_info.inst)});
}

buttons_info = [

	pause_button_config("RESUME", function(){
		set_pause(false);
		buttons_array_clear();
		current_appearance_offset = appearance_offset;
		set_pause_all_temporary_executed_bonuses(false);
		}),
		
	pause_button_config("RESTART", function(){game_over(); buttons_array_clear(); set_pause(false)}),
	pause_button_config("SETTINGS", function(){}),
	pause_button_config("MENU", function(){room_goto(rm_upgrades)}),
	
];

array_reverse_ext(buttons_info);

values_info = [
	pause_value_config(sp_time_icon, o_play_values_manager, "survived_time", function(survived_time_ms){return ms_to_timer_string(survived_time_ms);}),
	pause_value_config(sp_eaten_enemies_icon, o_play_values_manager, "eaten_enemies"),
	pause_value_config(sp_bonus_mushroom_icon, global.save, "mushrooms"),
];

var text_scale = global.ui_assets_scale;
var text_formating = $"[scale, {text_scale}][fnt_curtsweeper]";
		
var padding_block = (padding + 2) * text_scale;
var padding_left = padding * text_scale;

var simple_button_startx = Camera.view_x + Camera.view_width + current_appearance_offset;
var simple_button_starty = Camera.view_y + Camera.view_height;

draw_set_font(fnt_curtsweeper);

for(var i = 0; i < array_length(buttons_info); i++) {
	var button_info = buttons_info[i];
	var current_text = button_info.text;
			
	var first_button = i == 0;
	var first_padding = (first_button) ? (padding_block / text_scale) : 0;
			
	var button_y = simple_button_starty - padding_block * (i + 1) - padding_block;
			
	var button_inst = instance_create_simple_button
	(
		simple_button_startx,
		button_y,
		simple_button_startx - current_appearance_offset - (string_width(current_text) * text_scale) - padding_left,
		button_y,
		text_formating + current_text,
		appearance_offset_speed,
		button_info.callback,
		global.color_dark_white,
		global.color_bright_green
	)	
			
	button_info.inst = button_inst;

}