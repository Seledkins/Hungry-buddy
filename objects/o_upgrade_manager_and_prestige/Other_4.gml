with(o_upgrade) {
	if (self.object_index != o_upgrade_manager_and_prestige) {
		x += other.difx;
		y += other.dify;
	}
	
	if (parent.level == 0) {
		self.locker = instance_create_depth(self.x, self.y, 50, o_bubble_upgrade_locker);	
	}
}

Camera.cam_mode = CMODE.MOUSE_DRAG
uc_init_mouse_drag(1);
uc_set_mouse_drag_button(mb_left);