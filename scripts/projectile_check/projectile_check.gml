function projectile_check(obj, _x, _y, notself = true, func_for_touched_obj){
	
	var projectile_check_li = ds_list_create()
	instance_place_list(_x, _y, o_creature, projectile_check_li, false)
	
	
	for (var creature = 0; creature < ds_list_size(projectile_check_li); creature++) {
		var cur_creature = projectile_check_li[| creature]
		
		if (cur_creature == self && notself)
			continue
		else
			func_for_touched_obj(cur_creature) // проверить можно ли передовать информацию в функуию таким образом
		
	}
}