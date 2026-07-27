// life alarm starts
event_inherited();

radius = clamp(radius, 0, 32);

create_fluctuation(x, y, radius / 40, radius / 10, 1, radius / 400);


image_xscale = radius / 30;
image_yscale = image_xscale;

image_speed = 1;