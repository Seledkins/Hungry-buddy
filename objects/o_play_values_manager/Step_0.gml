survived_time += 17;
max_combo = max(max_combo, o_combo_manager.combo);

if (eaten_mushrooms != eaten_mushrooms_prev && !show_mushrooms) {
	show_mushrooms = true;
	alpha_show_mushrooms_step *= -1;
	alarm[0] = show_mushrooms_time;
}

alpha_show_mushrooms = clamp(alpha_show_mushrooms + alpha_show_mushrooms_step, 0, 1);

eaten_mushrooms_prev = eaten_mushrooms;