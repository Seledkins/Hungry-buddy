/// fd_rectangle_update(instance id)
function fd_rectangle_update(rectangle_id) {
	// Updates the fluid dynamics rectangle, proceeding the simulation one step further.
	// instance id: The instance id of the fluid dynamics rectangle to update.

	fd_rectangle_update_velocity(rectangle_id);
	fd_rectangle_update_material(rectangle_id);



}
