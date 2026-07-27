
shake_force *= -1;
drawx += shake_force;
shake_force -= shake_friction * sign(shake_force);

if (shake_force != 0) {
	alarm[0] = shake_duration;
}
