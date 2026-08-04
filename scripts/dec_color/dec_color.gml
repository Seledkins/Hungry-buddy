function dec_color(varible,tags_format = true){
	if !tags_format 
		return $"d#{string(varible)}"
	else
		return $"[d#{string(varible)}]"
}