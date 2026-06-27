function show_deb_mes_var(name_variable,variable,string_format_zero_quantity = 2){
	
	var str 
	
	if is_numeric(variable)
	{
		str = string_format(variable,
									string_length(
									string(floor(variable))
									),
									string_format_zero_quantity)
	}
	else
		str = variable
	
	show_debug_message($"obj:{object_index} |  {name_variable}: {str}")

}