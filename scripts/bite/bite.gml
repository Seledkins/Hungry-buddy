function bite(bite_width, bite_height, delay_time, callback_for_creatures){
	
	var half_bite_width = bite_width / 2;
	var half_bite_height = bite_height / 2;
	
	var bite_list = ds_list_create();
	var bite_list_size = collision_rectangle_list(x - half_bite_width, y - half_bite_height,  x + half_bite_width, y + half_bite_height, o_etable_parent, true, true, bite_list, false);
	
	for(var i = 0; i < bite_list_size; i++) {
		var cur_bite_li_item = bite_list[| i];
		var cur_bite_li_item_obj_index = cur_bite_li_item.object_index;
		
		
		if (object_is_ancestor(cur_bite_li_item_obj_index, o_creature)) {
			
			callback_for_creatures(cur_bite_li_item);
			
		} else if (object_is_ancestor(cur_bite_li_item_obj_index, o_bonus_parent)) {
			
			var cur_bonus = cur_bite_li_item;
				
			destroy_bonus(cur_bonus, id);
		}
		
	}
	
	alarm[1] = delay_time;
	
	
}