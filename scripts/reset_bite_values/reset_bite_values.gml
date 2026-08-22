function reset_bite_values(){
	
	ds_list_clear(memory_bite_list);
	
	combo_already_increased = false;
	bite_fluctuation = false;
	
	lockstep = false;
	eated_enemies_during_bite = 0;
	bite_shake = false;
}