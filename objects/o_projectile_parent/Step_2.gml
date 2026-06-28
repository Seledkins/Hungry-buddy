var camx = Camera.view_x
var camy = Camera.view_y

if (x + margin_outside_room < camx || x - margin_outside_room > camx + Camera.view_width || y + margin_outside_room < camy || y - margin_outside_room > camy + Camera.view_height) {
	instance_destroy()
}