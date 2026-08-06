if (!instance_exists(target)) {
	if (alarm[0] == -1) { alarm[0] = 60; }
} else {
	targetx = target.x;
	targety = target.y;
	
	dependence_variable = variable_instance_get(target, follow_fluctuation.dependence_variable_str) * follow_fluctuation.dependence_ratio;
}

var ps = follow_fluctuation.ps;
var ptype = follow_fluctuation.ptype;
var size = 0.6 * dependence_variable;
var _speed = 0.4 * dependence_variable;
var life = 300 * dependence_variable;

part_type_size(ptype, size, size, -0.01, 0);
part_type_speed(ptype, _speed, _speed, 0, 0);
part_type_life(ptype, life, life);
	
var arenax = x_to_arenax(targetx);
var arenay = y_to_arenay(targety);
	
part_system_position(ps, arenax, arenay);

if (dependence_variable != 0) {
	dir = point_direction(arenax, arenay, x_to_arenax(follow_fluctuation.prev_x), y_to_arenay(follow_fluctuation.prev_y))
}

part_system_angle(ps, dir);
	
follow_fluctuation.prev_x = targetx;
follow_fluctuation.prev_y = targety;