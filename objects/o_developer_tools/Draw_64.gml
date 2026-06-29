if(!global.show_hidden_variables){
	exit
}

height_ratio = 1;
i = 0;

draw_set_valign(fa_right);

var margin = 15;

for(i = 0; i < array_length(hidden_variables); i++){
	
	variables_info = hidden_variables[i];
	
	if(!instance_exists(variables_info.obj)){
		continue
	}
	
	
	array_foreach(variables_info.variables, function(variable, j){
		
		if(variable_instance_exists(variables_info.obj, variable)){	
			
			var w = other.hidden_variables_margin * 8;
			var drawx = Camera.view_width - w;
			var drawy = Camera.view_height - (other.hidden_variables_margin * (j + 1) * height_ratio);
			var scale = 0.5;
		
			draw_text_ext_transformed(drawx, drawy, $"{variable}: {variable_instance_get(other.variables_info.obj, variable)}",hidden_variables_margin , 200, scale, scale, 0);
			
		}
		else
		{
			height_ratio -= 1	
		}
		
		
	})
	
	height_ratio += array_length(variables_info.variables);
}


draw_set_valign(fa_left);