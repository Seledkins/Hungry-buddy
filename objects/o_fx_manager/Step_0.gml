
// ---------- DEBUGING 
/*
if keyboard_check(vk_up) brightness += 0.01;
if keyboard_check(vk_down) brightness -= 0.01;
brightness = clamp(brightness, -0.5, 0.5);

if keyboard_check(ord("A")) contrast += 0.01;
if keyboard_check(ord("Z")) contrast -= 0.01;
contrast = clamp(contrast, 0.5, 3.0);

if keyboard_check(ord("S")) saturation += 0.01;
if keyboard_check(ord("X")) saturation -= 0.01;
saturation = clamp(saturation, 0.0, 3.0);
*/

if keyboard_check_pressed(ord("B")) {
	draw_with_fx = !draw_with_fx;
	
}