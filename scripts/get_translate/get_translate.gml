function get_translate(grid, key){
	hh = ds_grid_height(grid);
	for (var i = 0; i <= hh; i++){
		if (ds_grid_get(grid, 0, i) == key) {
			return ds_grid_get(grid, global.language, i);
		}  
	}
	show_debug_message($"------------------ !!! Key {key} not found in grid {grid}!!! ------------------");
	return $"Key {key} not found";
}
