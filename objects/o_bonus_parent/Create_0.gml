shiny = shiny && room != rm_init;
if (shiny) {
	show_deb_mes_var(nameof(sprite_height), sprite_height);
	ps_info_shiny_stars = create_ps_shiny_stars(-sprite_width_main / 2, sprite_width_main / 2, -sprite_height_main, 0, drawx, drawy, 3);
}
