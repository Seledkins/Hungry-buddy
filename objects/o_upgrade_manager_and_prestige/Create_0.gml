layid_upgrades = layer_get_id("Upgrades");
layid_upgrades_connection = layer_get_id("UpgradesConneciton");

instance_create_depth(0, 0, 0, o_button_back);
//instance_create_depth(0, 0, 0, o_upgrade_amount_icon);

audio_play_sound(snd_test_background_music_skill_tree, 1000, true);

alarm[0] = 1;

