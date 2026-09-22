uc_set_position_now(Camera.view_width / 2, Camera.view_height / 2);
audio_play_sound(snd_test_background_music_skill_tree, 1000, true);
instance_create_depth(0, 0, 0, o_button_back);

add_window("shop",
	function() {
		instance_create_depth(Camera.x, Camera.y, 100, o_loot_box); 
	}, function() {
		instance_destroy(o_loot_box);
	});
	
add_window("inventory",
	function() {
		instance_create_depth(0, 0, 0, o_upgrades_manager); 
	}, function() {
		
	});

	
window_goto("shop");
