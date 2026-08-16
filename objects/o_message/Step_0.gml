if (alpha > 0) {
	alpha -= friction * alpha_change_ratio * global.no_lockstep;	
} else {
	instance_destroy();	
}

size = lerp(size, max_size, friction * 15)