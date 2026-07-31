image_speed = speed;

if (speed <= 0 && alarm[2] == -1) {
	alarm[2] = explosion_delay_after_stop;
}

if (instance_place(x, y, target)) {
	instance_destroy();
}