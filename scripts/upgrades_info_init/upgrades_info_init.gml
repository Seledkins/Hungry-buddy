function upgrades_info_init(){
	
	global.upgrades_info = [];
	global.upgrades_amount = 0;
	global.total_upgrades_chances = 0;
	
	upgrade_create(
		// name
		loc_text_create("text"), 
		// description
		loc_text_create("text"), 
		// sprite, min geted upgrades, chance
		sp_nothing1x1, 0, 10, 
		
		// callbacks of tiers...
		function(){ 
			o_hole_parent.max_hp++;
			o_hole_parent.hp = o_hole_parent.max_hp;
		},
		function(){
			o_hole_parent.max_hp += 2;
			o_hole_parent.hp = o_hole_parent.max_hp;
		}	
	);
	
}