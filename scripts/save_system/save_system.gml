function save_data(data, filename) {
	// convert struct to json
    var _json_string = json_stringify(data);
 
    // write the json string/text to a buffer
    var _buff = buffer_create(0, buffer_grow, 1);
    buffer_write(_buff, buffer_string, _json_string);
 
    // save
    buffer_save(_buff, filename);
    buffer_delete(_buff);	
}

function load_data(filename) {
	
	if (!file_exists(filename)) {
		return;	
	}
	
	var _buff = buffer_load(filename);
 
    // read buffer
    buffer_seek(_buff, buffer_seek_start, 0); // set read byte position to 0 (not really needed)
    var _json_string = buffer_read(_buff, buffer_string);
	buffer_delete(_buff);
	
	return json_parse(_json_string);
}