function create_blood(_x, _y, width, height, blood_config_sturct){

	var size_ratio = 180;

	instance_create_depth(_x, _y, 500, o_blood_fluid, {image_angle : random(359), image_xscale : width / size_ratio, image_yscale : height / size_ratio})
	
	create_smart_customizable_part_system(_x, _y, 70, blood_config_sturct);

	
}