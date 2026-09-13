with(o_upgrade) {
	if (self.object_index != o_upgrade_manager_and_prestige) {
		x += other.difx;
		y += other.dify;
	}
	
	if (parent.level == 0) {
		self.locker = instance_create_depth(self.x, self.y, 50, o_bubble_upgrade_locker);	
	}
	
}

call_later(1, time_source_units_frames, function() {
	var deactivation_arr = [];
	with(o_upgrade) {
		if (parent.locker != noone) {
			array_push(deactivation_arr, self.id);
		}	
	}
	array_foreach(deactivation_arr, function(up_inst) {
		up_inst.appearance_ratio = 0;
		up_inst.appearance_flag = true;
		instance_deactivate_object(up_inst);
		instance_deactivate_object(up_inst.locker);
	})	
})

Camera.cam_mode = CMODE.MOUSE_DRAG
uc_init_mouse_drag(1);
uc_set_mouse_drag_button(mb_left);