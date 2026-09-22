function load_save() {
	
	var values_info = load_data("save.sav");
	
	if (values_info == undefined) {
		return;
	}
	
	global.save = values_info;
	return values_info;
	
}