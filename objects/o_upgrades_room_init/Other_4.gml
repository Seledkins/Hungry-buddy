with(o_upgrade) {
	x += other.difx;
	y += other.dify;
}

Camera.cam_mode = CMODE.MOUSE_DRAG
uc_init_mouse_drag(1);
uc_set_mouse_drag_button(mb_left);