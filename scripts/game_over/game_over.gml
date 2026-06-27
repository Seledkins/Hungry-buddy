function game_over(){
	call_later(1.3, time_source_units_seconds, function(){room_goto(room)})
}