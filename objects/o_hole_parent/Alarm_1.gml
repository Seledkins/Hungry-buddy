///@description invincible alarm
event_inherited();
image_alpha = 1;

if (hp <= round(max_hp / 3)) {
	instance_create_message(x, y, $"LOW HP!",,,,$"[pulse]{dec_color(global.color_red)}", 0.6);
	o_health_bar.color = dec_color(global.color_red);
}
	
