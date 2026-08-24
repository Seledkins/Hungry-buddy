var offset = padding + mushroom_icon_width / 2;

draw_sprite_ext_color(sp_bonus_mushroom_icon, 0, offset, offset, global.ui_assets_scale, global.ui_assets_scale, 0, 1, global.color_white, 1);
draw_text_scribble(padding + mushroom_icon_width, offset, $"[scale, {global.ui_assets_scale}][offset, 7, 3]{dec_color(global.color_white)}[fa_middle][fnt_curtsweeper]{global.mushrooms}[offsetPop][/scale]");

draw_sprite_ext_color(sp_upgrade_icon, 0, offset, offset * 2 + padding, global.ui_assets_scale, global.ui_assets_scale, 0, 1, global.color_white, 1);
draw_text_scribble(padding + mushroom_icon_width, offset * 2 + padding, $"[scale, {global.ui_assets_scale}][offset, 7, 3]{dec_color(global.color_white)}[fa_middle][fnt_curtsweeper]{global.bought_upgrades_amount}[offsetPop][offset,8, 3]{tdash()}{global.max_bought_upgrades_amount}[offsetPop][/scale]");