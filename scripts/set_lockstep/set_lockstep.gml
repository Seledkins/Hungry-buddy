function set_lockstep(lockstep){
	
	with(all) {
		
		if (lockstep) {
			// enable lockstep
			
			variable_instance_set(self, "prev_image_speed", self.image_speed);
			self.image_speed = 0;
			variable_instance_set(self, "prev_speed", self.speed);
			self.speed = 0;
			
			if (!variable_instance_exists(self, "prev_image_speed")) {
				show_message(self);	
			}
		} else {
			// disable locksetp
			//trigger_lockstep_disable();
			
			show_debug_message(self);
			show_debug_message(self.object_index);
			self.image_speed = self.prev_image_speed;
			self.speed = self.prev_speed;
			
		}
	}
	
	global.no_lockstep = !lockstep;
}