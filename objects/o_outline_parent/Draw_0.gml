
if (draw_outline) {
	outline_set_sprite(sprite_index, image_index, ol_config(1, outline_color));
		draw_self();
	outline_end();
} else
{
	draw_self();	
}
