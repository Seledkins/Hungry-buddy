if (!instance_exists(target)) {
	if (alarm[0] == -1) { alarm[0] = follow_fluctuation.destroy_timer; }
	dependence_variable_speed = 0;
} else {
	targetx = target.x;
	targety = target.y;
	
	dependence_variable_speed = variable_instance_get(target, follow_fluctuation.dependence_variable_speed_str) * follow_fluctuation.dependence_ratio;
	dependence_variable_dir = variable_instance_get(target, follow_fluctuation.dependence_variable_dir_str) + 180;
}

var ps = follow_fluctuation.ps;
var ptype = follow_fluctuation.ptype;
var size = 0.6 * dependence_variable_speed;
var _speed = 0.4 * dependence_variable_speed;
var life = 300 * dependence_variable_speed;

part_type_size(ptype, size, size, -0.01, 0);
part_type_speed(ptype, _speed, _speed, 0, 0);
part_type_life(ptype, life, life);
	
var arenax = x_to_arenax(targetx);
var arenay = y_to_arenay(targety);
	
part_system_position(ps, arenax, arenay);

if (dependence_variable_speed != 0) {
	dir += angle_difference(dependence_variable_dir, dir) * dir_lerp_amount;
}

part_system_angle(ps, dir);
