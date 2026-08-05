///@description invincible alarm
event_inherited();
image_alpha = 1;

if (hp <= 2) {
	instance_create_message(x, y, "LOW HP",,,,$"[jitter]{dec_color(global.color_red)}")	
}
	
