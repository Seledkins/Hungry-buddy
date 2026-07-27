if (outline_color == outline_color1) {
	outline_color = outline_color2;
} else {
	outline_color = outline_color1;	
}

alarm[1] = clamp(speed * 14, 4, infinity)