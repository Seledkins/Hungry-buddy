function instance_create_spawn_apperance(_x, _y, _spawn_obj, _obj_layer_create = "Instances"){

var creating_obj_sprite = object_get_sprite(_spawn_obj)

var sprite_size_creating_obj = max(sprite_get_height(creating_obj_sprite), sprite_get_width(creating_obj_sprite));
var sprite_height_spawn_apperance_obj = sprite_get_height(object_get_sprite(o_spawn_appearance));

var procent = sprite_size_creating_obj / sprite_height_spawn_apperance_obj;

var _max_scale = sprite_height_spawn_apperance_obj * 0.001;

return instance_create_layer(_x, _y, o_play_values_manager.layid_spawn_appearances, o_spawn_appearance, {
	spawn_obj : _spawn_obj,
	obj_layer_create : _obj_layer_create,
	max_scale : _max_scale,
	image_xscale : 0,
	scale_increment : _max_scale / 9.5,
	
	})

}