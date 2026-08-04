if (alpha > 0) {
	alpha -= friction * alpha_change_ratio;	
} else {
	instance_destroy();	
}