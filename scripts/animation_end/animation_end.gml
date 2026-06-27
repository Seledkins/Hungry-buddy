function animation_end(obj = id){
	 
	if (obj.image_index >= obj.image_number - (sprite_get_speed(obj.sprite_index) / game_get_speed(gamespeed_fps))) {
		return true
	}
	else
	{
		
		return false	
	}
	
}