function create_blood(_x, _y, width, height, blood_config_sturct){

	instance_create_depth(_x, _y, 500, o_blood_fluid, {image_angle : random(359), image_xscale : width / 200, image_yscale : height / 200})
	
	create_smart_customizable_part_system(_x, _y, 50, blood_config_sturct)

	
}