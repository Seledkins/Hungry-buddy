function destroy_eatble_obj(eatble_obj){

if(object_is_ancestor(eatble_obj.object_index, o_creature)){
	kill_creature(eatble_obj);
}
else {
	instance_destroy(eatble_obj);
}

}