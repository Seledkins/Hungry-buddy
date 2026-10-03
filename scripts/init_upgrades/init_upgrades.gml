function init_upgrades(){

	global.upgrades_info = {
		upgrades: {},
		amount: 0,
		total_chance: 0,
		
	};

	upgrade_create("hp", 50, 0, function() {
		with(o_hole_parent) {
			max_hp = 7;
			hp = max_hp;
		}
	});
	upgrade_create("vampire", 50, 1, function() {});
	upgrade_create("unlimitHp", 20, 2,  function() {});
	upgrade_create("50Combo", 60, 3, function() {});
	upgrade_create("durableCombo", 70, 4, function() {});
	
	
}