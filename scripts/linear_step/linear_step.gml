function linear_step(stepsize, xgoal, ygoal){

if point_distance(x, y, xgoal, ygoal) > 1
{
	var dir = point_direction(x, y, xgoal, ygoal)

	x += lengthdir_x(stepsize, dir)
	y += lengthdir_y(stepsize, dir)

}

}