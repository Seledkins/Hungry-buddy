if (global.controls_type == "mobile") {
	controls_func = default_hole_mobile_controls;
}
else { 
	controls_func = default_hole_pc_controls;
	if (global.developer_mode) {
		set_invincible(id, true, -1);
	}
}

ingame_things_init();

create_follow_fluctuation(id, x, y, "cur_spd", 0.5, "move_dir", sprite_width / 140, infinity);
audio_play_sfx(snd_appearance);

draw_ev_activate_flag = false;
alarm[2] = 2;
prev_hp = hp;
