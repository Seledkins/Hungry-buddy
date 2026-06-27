function bite(bite_width, bite_height, callback){
	
	var half_bite_width = bite_width / 2
	var half_bite_height = bite_height / 2
	
	collision_rectangle_foreach(x - half_bite_width, y - half_bite_height,  x + half_bite_width, y + half_bite_height, o_creature, true, true, false,
	callback)
	
}