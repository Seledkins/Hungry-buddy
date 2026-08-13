function destroy_bonus(bonus, killer){
	bonus.killer = killer;
	bonus.destroy_function();
}