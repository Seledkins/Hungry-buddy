var offset = padding + upgrade_icon_width / 2;

draw_sprite_ext_color(sp_upgrade_icon, 0, offset, yoffset, global.ui_assets_scale, global.ui_assets_scale, 0, 1, global.color_white, 1);
draw_text_scribble(padding + upgrade_icon_width, yoffset, text);