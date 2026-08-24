padding = o_upgrade_manager_and_prestige.padding;
yoffset = padding + o_upgrade_manager_and_prestige.sprite_height;

text = $"[scale, {global.ui_assets_scale}][offset, 7, 3]{dec_color(global.color_white)}[fa_middle][fnt_curtsweeper]{global.bought_upgrades_amount}[offsetPop][offset,8, 3]{tdash()}{global.max_bought_upgrades_amount}[offsetPop][/scale]";