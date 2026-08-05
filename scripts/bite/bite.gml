function bite(bite_width, bite_height, delay_time, callback_for_creatures, combo_increase = 1){
	
	var half_bite_width = bite_width / 2;
	var half_bite_height = bite_height / 2;
	
	var bite_list = ds_list_create();
	var bite_list_size = collision_rectangle_list(x - half_bite_width, y - half_bite_height,  x + half_bite_width, y + half_bite_height, o_etable_parent, true, true, bite_list, false);
	
	for(var i = 0; i < bite_list_size; i++) {
		var cur_bite_li_item = bite_list[| i];
		var cur_bite_li_item_obj_index = cur_bite_li_item.object_index;
		
		if (ds_list_find_index(memory_bite_list, cur_bite_li_item) != -1) {
			continue;
		}
		
		if (is_creature(cur_bite_li_item_obj_index.object_index)) {
				
			if (!combo_already_increased && cur_bite_li_item.hp == 1 && !cur_bite_li_item.invincible) {
				o_combo_manager.combo++;
				o_play_values_manager.eaten_enemies++;
			}
			
			callback_for_creatures(cur_bite_li_item);
			
		} else if (is_bonus(cur_bite_li_item_obj_index.object_index)) {
			
			var cur_bonus = cur_bite_li_item;
			
			if (cur_bonus.invincible != true) {	
				destroy_bonus(cur_bonus, id);
			}
		}
		
	}
	
	ds_list_foreach(bite_list, function(inst) {
		
			if (ds_list_find_index(memory_bite_list, inst) == -1) {
				ds_list_add(memory_bite_list, inst);
			}
		})
	
	
	
}