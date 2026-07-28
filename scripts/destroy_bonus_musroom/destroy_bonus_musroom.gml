function destroy_bonus_musroom(){
	o_play_values_manager.eaten_mushrooms++

	if (object_is_ancestor(eater.object_index, o_hole_parent)) {
		eater.hp = clamp(eater.hp + 1, 0, eater.max_hp);
	}
}