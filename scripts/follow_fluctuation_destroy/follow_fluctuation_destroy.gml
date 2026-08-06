function follow_fluctuation_destroy(follow_fluctuation){
	
	part_system_destroy(follow_fluctuation.ps);
	part_type_destroy(follow_fluctuation.ptype);
	
	delete follow_fluctuation;
}