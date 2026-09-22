function load_collected_upgrades(){
	var collected_upgrades = load_data("upgrades.sav");
	
	if (collected_upgrades != undefined) {
		global.save.collected_upgrades = collected_upgrades;	
		return collected_upgrades;
	} 
	
}