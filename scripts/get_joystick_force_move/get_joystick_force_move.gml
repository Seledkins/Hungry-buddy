function get_joystick_force_move(){
	if (instance_exists(o_virtual_joystick)) { 
		with(o_virtual_joystick) {
			return joystick_force_move / radius * 100 
		}
	}
}