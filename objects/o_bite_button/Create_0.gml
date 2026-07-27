
repeat (amount_fingers_to_check + 1) {
	array_push(fingers_info, {is_pressed : false, is_pressed_prev : false, first_clicked : false})
}



if (global.controls_type == "mobile") {
	bite_check_func = bite_check_mobile;
} else {
	bite_check_func = bite_check_pc;
}