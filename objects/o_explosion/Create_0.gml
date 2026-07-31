// life alarm starts
event_inherited();

radius = clamp(radius, 0, 32);

create_fluctuation(x, y, radius / 40, radius / 10, 1, radius / 400);
audio_play_sound(snd_explosion, 10, false, 1, 0, random_range(0.9, 1.1));

image_xscale = radius / 30;
image_yscale = image_xscale;

image_speed = 1;