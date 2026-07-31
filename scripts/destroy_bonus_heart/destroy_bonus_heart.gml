function destroy_bonus_heart(){
	if (object_is_ancestor(eater.object_index, o_hole_parent)) {
			eater.hp = clamp(eater.hp + 1, 0, eater.max_hp);
		}
		
	sprite_index = sp_eated;
	
}