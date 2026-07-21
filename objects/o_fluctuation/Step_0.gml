anim_curve_posx += anim_curve_posx_step;
var channel_evaluate = animcurve_channel_evaluate(anim_curve_channel, anim_curve_posx);

var size_increment = dispersal_force * channel_evaluate;

image_xscale += size_increment;
image_yscale += size_increment;


