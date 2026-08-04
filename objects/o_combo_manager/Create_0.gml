fdrect_combo_bg = fd_rectangle_create(fdrect_combo_width, fdrect_combo_height);


fd_rectangle_set_visualization_shader(fdrect_combo_bg, FD_VISUALIZATION_SHADER.PIXEL_ART_FIRE);
fd_rectangle_set_material_type(fdrect_combo_bg, FD_MATERIAL_TYPE.RGBA_16);

var time_step = 1;
fd_rectangle_set_velocity_time_step(fdrect_combo_bg, time_step); // значение силы скорости жидкости за шаг
fd_rectangle_set_material_time_step(fdrect_combo_bg, time_step); // значение силы распостраниение материала жидкости за шаг

fd_rectangle_set_material_dissipation_type(fdrect_combo_bg, 0); // по умолчанию на 0
fd_rectangle_set_material_dissipation_value(fdrect_combo_bg, 0.98); // сила рассеивания материала. Нормальные значение в пределе от 0.90 до 1

fd_rectangle_set_velocity_dissipation_type(fdrect_combo_bg, 1); // по умолчанию на 1
fd_rectangle_set_velocity_dissipation_value(fdrect_combo_bg, 0) // сила рассеивания скорости

fd_rectangle_set_velocity_maccormack_weight(fdrect_combo_bg, 1.5); // сила детализации мелких деталей
fd_rectangle_set_material_maccormack_weight(fdrect_combo_bg, 0);

fd_rectangle_set_pressure_iteration_type(fdrect_combo_bg, -1); // !ЖРЕТ МНОГО ФПС! количество итераций: -1 for 16 iterations. -2 for 31 iterations. -3 for 64 iterations. -4 for 131 iterations.

// размеры fdrect_combo_bg
fd_rectangle_set_pressure_size(fdrect_combo_bg, fdrect_combo_width, fdrect_combo_height);
fd_rectangle_set_velocity_size(fdrect_combo_bg, fdrect_combo_width, fdrect_combo_height);
fd_rectangle_set_material_size(fdrect_combo_bg, fdrect_combo_width, fdrect_combo_height);

fd_rectangle_set_initial_value_pressure(fdrect_combo_bg, 0.5); // начальное значение итераций давления (плотность). Автор сам хз, но рекомендует ставить на 0.5

fd_rectangle_set_acceleration(fdrect_combo_bg, 0, 0) // устанвавливает в какую сторону ускоряется жидкость


x = Camera.view_x + Camera.view_width / 2 - fdrect_combo_width / 2;
y = Camera.view_y - fdrect_combo_height / 3;