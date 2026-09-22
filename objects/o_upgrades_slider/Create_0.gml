var spawned_cells = spawn_layout(o_upgrade_using_cell, global.save.upgrades.cells_count, Camera.view_width - surf_w - 50 - (surf_w / 2), Camera.view_height / 2, cells_gap, "Distruction", "column");

x = surfx;
y = surfy;
image_xscale = surf_w;
image_yscale = surf_h;

upgrades_surf = surface_create(surf_w, surf_h);

showen_ups_arr = [];

var collected_ups_arr = []
var keys = variable_struct_get_names(collected_ups);
array_sort(keys, function(a, b) {
    if (a < b) return -1;
    if (a > b) return 1;
    return 0;
});
for (var i = array_length(keys) - 1; i >= 0; --i) {
    array_push(collected_ups_arr, collected_ups[$ keys[i]]);
}
array_copy(collected_ups_arr, 0, showen_ups_arr, 0, array_length(showen_ups_arr));
var collected_ups_arr_len = array_length(collected_ups_arr);

for(var line = 0; collected_ups_arr_len != 0; line++) {
	for (var linex = 0; linex < max_upgrades_inline && collected_ups_arr_len != 0; linex++) {
		var up_info = global.upgrades_info.upgrades[$ collected_ups_arr[collected_ups_arr_len - 1].key];
		
		var _x = surfx + ((up_sprite_width + surface_padding) * linex)
		var _y = surfy + ((up_sprite_height + surface_padding) * line)
		
		var up_inst = instance_create_depth(_x, _y, 100, o_upgrade, {
			image_index: up_info.index_sprite,
			name: up_info.key,
			key: up_info.key,
			
		});
		
		var spawn_index = global.save.upgrades.selected[$ up_info.key];
		if (spawn_index != undefined) {
			var cell_inst = spawned_cells[spawn_index];
			
			with(cell_inst) {
				up_choosen = true;
				pluse_alpha = 0;
			}
			
			with(up_inst) {
				self.choosen_cell = cell_inst.id;
				self.inst_border = instance_create_depth(x, y, self.depth - 1, o_upgrade_border, { sprite_index: sp_upgrades, image_index: self.image_index });
				
				up_inst.x = cell_inst.x - up_inst.sprite_width / 2;
				up_inst.y = cell_inst.y - up_inst.sprite_height / 2;
			}
		}
		
		array_pop(collected_ups_arr);
		collected_ups_arr_len = array_length(collected_ups_arr);
	}	
}




