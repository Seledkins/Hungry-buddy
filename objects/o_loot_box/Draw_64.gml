var offset = padding + mushroom_icon_width / 2;

draw_sprite_ext_color(sp_bonus_mushroom_icon, 0, offset, offset, global.ui_assets_scale, global.ui_assets_scale, 0, 1, global.color_white, 1);
draw_text_scribble(padding + mushroom_icon_width, offset, $"[scale, {global.ui_assets_scale}][offset, 7, 3]{dec_color(global.color_white)}[fa_middle][fnt_curtsweeper]{global.save.mushrooms}[offsetPop][/scale]");