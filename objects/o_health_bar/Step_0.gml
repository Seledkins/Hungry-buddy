if (fluid_image_index < sprite_get_number(sp_healthbar_fluid)) {
	fluid_image_index += fluid_image_index_step;
} else {
	fluid_image_index = 0;	
}

timer++