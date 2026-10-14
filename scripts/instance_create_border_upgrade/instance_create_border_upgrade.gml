function instance_create_border_upgrade(up_inst, _x, _y, _depth){
	return instance_create_depth(_x, _y, _depth, o_upgrade_border, { sprite_index: sp_upgrades, image_index: up_inst.image_index, line_offset: up_inst.line_offset });
}