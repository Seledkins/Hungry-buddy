appearance_procent = lerp(appearance_procent, endprocent, appearance_procent_lepr_amount * transistion_speed);	

if (appearance_procent >= endprocent * 0.95  ) {
	instance_destroy();
}

if (appearance_procent >= 0.40 && !executed) {
	executed = true;	
	func(data);
}

y = starty + (Camera.view_height * 2 - padding * 4) * appearance_procent;

show_debug_message(y)