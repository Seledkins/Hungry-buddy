function explosion_eye_dead(){
	sprite_index = sprite_dead; 
	if (!self_deleted) {self_deleted = true; speed = 0; create_expolosion(x, y, damage, explosion_radius);}
}