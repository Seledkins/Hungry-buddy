var destroy_flag = target.shields == 0;

if (destroy_flag) {
	image_speed = 2.5;
} else {
	if (image_index < 1) {
		image_speed = 0;	
	}	
}

x = target.x;
y = target.y;
depth = target.depth - 1;