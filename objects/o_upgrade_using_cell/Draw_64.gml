var wobble_strength = cos(current_time / 160) * wobble_ratio;
draw_sprite_ext(sp_plus, 0, x_to_guix(x), y_to_guiy(y), 1, 1, wobble_strength * 30, c_white, pluse_alpha);

