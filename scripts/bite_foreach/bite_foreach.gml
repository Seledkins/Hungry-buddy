function bite_foreach(bite_list, bite_li_size, callback_for_creatures){
	
	for(var i = 0; i < bite_li_size; i++) {
			var cur_bite_li_item = bite_list[| i];
			
			if (!instance_exists(cur_bite_li_item)) {
				continue;	
			}
			
			var cur_bite_li_item_obj_index = cur_bite_li_item.object_index;
		
			if (is_creature(cur_bite_li_item_obj_index.object_index)) {
				callback_for_creatures(cur_bite_li_item);
			
			} else if (is_bonus(cur_bite_li_item_obj_index.object_index)) {
			
				var cur_bonus = cur_bite_li_item;
			
				if (cur_bonus.invincible != true) {	
					destroy_bonus(cur_bonus, id);
				}
			}
		
		}
	
}