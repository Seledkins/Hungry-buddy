// Inherit the parent event
cur_spd = clamp(cur_spd, -max_spd, 0);

event_inherited();

if (animation_end() && sprite_index == sprite_attack) {
	drop_obj_chance = -1;	
}