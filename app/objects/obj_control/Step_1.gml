/// @description check the inputs keyboard/gamepad

var key_left_res = keyboard_check(vk_left);
var key_right_res = keyboard_check(vk_right);
var key_insert_res = keyboard_check(vk_insert);

// Check left key
if(key_left_down && !key_left_res) {
	// left key was released
	key_left_down = false;
	event_perform(ev_other, INPUT_LEFT_EVENT);
} else if(!key_left_down && key_left_res) {
	// left key was pressed
	key_left_down = true;
	event_perform(ev_other, INPUT_LEFT_EVENT);
}

// check right key
if(key_right_down && !key_right_res) {
	// left key was released
	key_right_down = false;
	event_perform(ev_other, INPUT_RIGHT_EVENT);
} else if(!key_right_down && key_right_res) {
	// left key was pressed
	key_right_down = true;
	event_perform(ev_other, INPUT_RIGHT_EVENT);
}

// check insert key (attack 1)
if(key_insert_down && !key_insert_res) {
	// left key was released
	key_insert_down = false;
	event_perform(ev_other, ATTACK_1_EVENT);
} else if(!key_insert_down && key_insert_res) {
	// left key was pressed
	key_insert_down = true;
	event_perform(ev_other, ATTACK_1_EVENT);
}
