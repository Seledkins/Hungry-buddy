function image_index_equals(_image_index, obj = id){
	
	if (obj.image_index == _image_index - (sprite_get_speed(obj.sprite_index) / game_get_speed(gamespeed_fps))) {
		return true
	}
	else
	{
		return false	
	}
}