uc_set_position_now(Camera.view_width / 2, Camera.view_height / 2);
audio_play_sound(snd_test_background_music_skill_tree, 1000, true);
//instance_create_depth(0, 0, 0, o_button_back);

x = Camera.view_x + Camera.view_width - padding - sprite_width / 2;
y = Camera.view_y + padding + sprite_height / 2;

add_window("inventory",
	function() {
		instance_create_depth(0, 0, 100, o_upgrades_slider); 
	}, function() {
		instance_destroy(o_upgrades_slider);
		instance_destroy(o_upgrade_using_cell);
		instance_destroy(o_upgrade);
		instance_destroy(o_upgrade_border);
	}, sp_bag_icon);

add_window("shop",
	function() {
		instance_create_layer(Camera.x, Camera.y, "Distruction", o_loot_chest); 
	}, function() {
		instance_destroy(o_loot_chest);
		instance_destroy(o_loot_chest_drop);
	}, sp_chest_icon);



buttons = array_map(struct_get_values_ordered(windows, windows_order), function(window_info) {
	return {
		name: window_info.name,
		goto_func: window_info.goto_func,
		sprite: window_info.sprite,
	}
});

array_push_front(buttons, {
	name: "play",
	sprite: sp_play_icon,
	goto_func: function() {
		instance_create_transistion_circle(other.x, other.y, room_width / 2, room_height / 2, function() { room_goto(rm_play);	}, 1.5, true);
	}
});

// init buttons
icon_width = sprite_get_width(sp_chest_icon) * global.ui_assets_scale;
array_foreach(buttons, function(win_info, i) {
	if (win_info.sprite != noone) {
		var icon_height = sprite_get_height(win_info.sprite) * global.ui_assets_scale;
		
		var _x = Camera.view_width - padding - icon_width / 2;
		var _y = Camera.view_y + padding + icon_height / 2 + (icon_height + padding) * i;
		
		var btn = instance_create_simple_button(_x, _y, _x, _y, win_info.sprite, 0, win_info.goto_func ,,, { window_name: win_info.name });
			
		with(btn) {
			image_xscale = global.ui_assets_scale;
			image_yscale = global.ui_assets_scale;
			depth = 0;
			
			outline_width = 1;
			image_speed = 0;
		}
	}
});

window_goto("shop");