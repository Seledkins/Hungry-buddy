function choose_random_nature_obj() {

	var nature_obj = choose(o_nature_grass, o_nature_stick, o_nature_plant);

	if (random(100) <= 2) {
		nature_obj = o_nature_eye;
	}

	return nature_obj;

}