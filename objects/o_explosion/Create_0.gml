// life alarm starts
event_inherited();

create_skull_smoke_ps_system(o_play_values_manager.layid_particles, shadow_width / 6);
part_system_position(ps_skull_smoke, x, y);

take_damage_circle(x, y, radius, target, damage);

image_speed = 1;