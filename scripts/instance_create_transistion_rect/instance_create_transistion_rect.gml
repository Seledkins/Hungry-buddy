function instance_create_transistion_rect(_func, _transistion_speed, _depth = ui_depth, _data = {}){
	var lay = layer_get_id("Transistions");
	
	if (!layer_exists(lay)) {
		lay = layer_create(ui_depth, "Transistions");
		
		var _fx = fx_create("_filter_underwater");
		
		// --- Speed ---
	    fx_set_parameter(_fx, "g_Distort1Speed", 0.0001);
	    fx_set_parameter(_fx, "g_Distort2Speed", 0.0001);

	    // --- Scale (массивы из двух значений: X, Y) ---
	    fx_set_parameter(_fx, "g_Distort1Scale", [30, 2]);
	    fx_set_parameter(_fx, "g_Distort2Scale", [100, 10]);

	    // --- Amount ---
	    fx_set_parameter(_fx, "g_Distort1Amount", 50);
	    fx_set_parameter(_fx, "g_Distort2Amount", 15);

	    // --- Chroma Spread ---
	    fx_set_parameter(_fx, "g_ChromaSpreadAmount", 0);

	    // --- Camera Offset Scale ---
	    fx_set_parameter(_fx, "g_CamOffsetScale", 1);

	    // --- Цвета (RGBA, 0–255) ---
	    fx_set_parameter(_fx, "g_GlintCol", [255, 255, 255, 1]);     // чёрный
	    fx_set_parameter(_fx, "g_TintCol",  [0,   0,   0,   1]);     // белый
	    fx_set_parameter(_fx, "g_AddCol",   [0,   0,   0,   1]);     // чёрный

		// Прикрепить к слою
		layer_set_fx(lay, _fx);	
		fx_set_single_layer(_fx, true);
	}
	
	
	return instance_create_layer(0, 0, lay, o_transistion_rect, {
			func: _func, 
			transistion_speed: _transistion_speed,
			data: _data,
			
		});
}