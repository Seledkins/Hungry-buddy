global.all_audio_groups = [
	ag_sfx,
	ag_enemies_dead,
	ag_music
]

function audio_groups_load_all() {
	array_foreach(global.all_audio_groups, function(audio_group) {
		audio_group_load(audio_group)
	})
}

function audio_groups_unload_all() {
	array_foreach(global.all_audio_groups, function(audio_group) {
		audio_group_unload(audio_group)
	})	
}