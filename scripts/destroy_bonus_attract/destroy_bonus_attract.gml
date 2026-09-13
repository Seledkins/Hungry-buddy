function destroy_bonus_attract(){
	
	if (is_hole(killer.object_index)) {
		with(oe_parent) {
			if (self.object_index != oe_ghost) {
				var dist_to_player = point_distance(self.x, self.y, o_hole_parent.x, o_hole_parent.y);
				var dir_to_player = point_direction(self.x, self.y, o_hole_parent.x, o_hole_parent.y);
			
				self.direction = dir_to_player;
				self.speed = dist_to_player / 50; 
				self.friction = (sqr(self.speed) / (2 * dist_to_player)) * global.save_values_info.bonuses_info.attract.friction_ratio;
			
			}
		}
	
		create_fluctuation(x, y, 2, 4, 2);	
		set_invincible(o_hole_parent, true, 110);
		audio_play_sfx_random_pitch(snd_bonus_attract, 2, 0.95, 1.05);
	}
	
	create_smart_part_system(x, y, ps_bonus_eaten_attract, 40);
	instance_destroy();
}