if (!surface_exists(upgrades_surf)) {
	upgrades_surf = surface_create(surf_w, surf_h);	
}

draw_surface(upgrades_surf, surfx, surfy);

surface_set_target(upgrades_surf);
	draw_clear_alpha(c_black, 0);
surface_reset_target();