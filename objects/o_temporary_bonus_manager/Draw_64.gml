var bonuses_inline = 0;
var line = 0;

for (var eb = 0; eb < array_length(executed_bonuses); eb++) {
	var current_bonus_info = executed_bonuses[eb];
	var bonus_sprite = current_bonus_info.sprite;
	
	bonuses_inline++;
	if (bonuses_inline > max_bonuses_inline) {
		line++
		bonuses_inline = 0;
	}
	
	var time_indecator_frame = max_frames_sprite_time - ((time_source_get_time_remaining(current_bonus_info.time_source_id) / current_bonus_info.start_time) * max_frames_sprite_time);
	
	outline_draw_sprite(sp_executed_bonus_time_indecator, time_indecator_frame, padding * 2 + bonus_sprite_width * (bonuses_inline - 1), starty + line * bonus_sprite_width + padding * 2 - 10);
	draw_sprite_ext(bonus_sprite, 0, padding * 2 + bonus_sprite_width * (bonuses_inline - 1), starty + line * bonus_sprite_width + padding * 2 , 1, 1, 0, c_white, 1);	
}