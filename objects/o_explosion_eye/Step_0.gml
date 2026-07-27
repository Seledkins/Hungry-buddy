image_speed = speed;

show_debug_message(alarm[4])

if (speed <= 0 && alarm[2] == -1) {
	alarm[2] = explosion_delay_after_stop;
}

if (instance_place(x, y, target)) {
	instance_destroy();
}