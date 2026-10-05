if (!transferred) {
	appearance_procent = lerp(appearance_procent, transferred, appearance_procent_lepr_amount);	
} else {
	var _k = (appearance_procent_lepr_amount * appearance_procent);
    _k = max(_k, 0.001);
    appearance_procent = lerp(appearance_procent, transferred, _k);	
}

//angle = 90 + appearance_procent * 180;