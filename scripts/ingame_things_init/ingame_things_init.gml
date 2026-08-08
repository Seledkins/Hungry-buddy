function ingame_things_init(){
scribble_anim_pulse(0.3 / hp, 0.3 / hp);
o_health_bar.player_max_hp = max_hp;
o_health_bar.player_hp = hp;

o_spawner_parent.alarm[0] = o_spawner_parent.spawn_delay;

}