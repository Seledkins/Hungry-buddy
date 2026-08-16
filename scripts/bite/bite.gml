function bite(bite_width, bite_height, delay_time, callback_for_creatures, combo_increase = 1){
	
	if (!bite_fluctuation) {
		create_fluctuation(x, y, sprite_width_main / 45, sprite_width_main / 5, 3, sprite_width_main / 700);	
		bite_fluctuation = true;
	}
	
	var half_bite_width = bite_width / 2;
	var half_bite_height = bite_height / 2;
	
	var bite_list = ds_list_create();
	var bite_list_size = collision_rectangle_list(x - half_bite_width, y - half_bite_height,  x + half_bite_width, y + half_bite_height, o_etable_parent, true, true, bite_list, false);
	bite_list = ds_list_unique(bite_list);
	
	for(var i = 0; i < bite_list_size; i++) {
		var cur_bite_li_item = bite_list[| i];
		var cur_bite_li_item_obj_index = cur_bite_li_item.object_index;
		
		if (ds_list_find_index(memory_bite_list, cur_bite_li_item) != -1) {
			continue;
		}
		
		if (is_creature(cur_bite_li_item_obj_index.object_index)) {
			callback_for_creatures(cur_bite_li_item);
			
		} else if (is_bonus(cur_bite_li_item_obj_index.object_index)) {
			
			var cur_bonus = cur_bite_li_item;
			
			if (cur_bonus.invincible != true) {	
				destroy_bonus(cur_bonus, id);
			}
		}
		
	}
	
	if (ds_list_size(bite_list) >= enemies_amount_to_lockstep && !lockstep) {
		//set_lockstep_time(true, 3);
		//lockstep = true;
	}
	
	ds_list_foreach(bite_list, function(inst) {
		
			if (ds_list_find_index(memory_bite_list, inst) == -1) {
				ds_list_add(memory_bite_list, inst);
				
				//if (object_is_ancestor(inst.object_index, oe_parent)) {
				//	eated_enemies++;
				//}
			}
		})
	
	
	
}



/*
var current_bite_li_el = bite_list[| 0];
	
	var half_bite_width = bite_width / 2;
	var half_bite_height = bite_height / 2;
	
	if (bite_detected_enemies == 0)
	{
		bite_detected_enemies = collision_rectangle_list(x - half_bite_width, y - half_bite_height,  x + half_bite_width, y + half_bite_height, o_etable_parent, true, true, bite_list, false);
		if (bite_detected_enemies < enemies_amount_to_lockstep) {
			bite_foreach(bite_list, bite_detected_enemies, callback_for_creatures);
			
			bite_detected_enemies = 0;
			ds_list_clear(bite_list);
		}
		
	} 
	else if (instance_exists(current_bite_li_el))
	{
		callback_for_creatures(current_bite_li_el);
		set_lockstep_time(true, 5);	
		
		ds_list_delete(bite_list, current_bite_li_el);
		bite_detected_enemies--;
	}
*/