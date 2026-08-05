var hp_param;
var hp_draw = 0;

if (instance_exists(o_hole_parent)) {
	player_hp = lerp(player_hp, o_hole_parent.hp, lerp_amount);
	hp_draw = o_hole_parent.hp;
	
	if (o_hole_parent.prev_hp != o_hole_parent.hp) {
		scribble_anim_pulse(0.3 / o_hole_parent.hp, 0.3 / o_hole_parent.hp);
	}
}
else {
	player_hp = lerp(player_hp, 0, lerp_amount);
}

hp_param = relerp(0, player_max_hp, player_hp, sprite_height * 0.8, 0); 


if (!surface_exists(fluid_surface)) {
	fluid_surface = surface_create(sprite_width - offset, sprite_height - offset);	
}

surface_set_target(fluid_surface);
	draw_clear_alpha(c_black, 0)
	
	draw_sprite(sp_healthbar_fluid, fluid_image_index, 0, hp_param - sin(timer * 0.03) * 2);
	draw_masking_sprite_on_surface(sp_healthbar_mask, 2, 0, 0);
	
surface_reset_target();

outline_draw_sprite(sprite_index, 0, padding + half_sprite_width, padding + half_sprite_height, );
draw_surface(fluid_surface, padding + offset /2 , padding + offset / 2);
draw_text_scribble(padding + half_sprite_width, padding + half_sprite_height, formating + string(hp_draw));

