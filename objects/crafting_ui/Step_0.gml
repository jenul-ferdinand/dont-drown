if (!(instance_exists(obj_player))) exit;
if (global.show_inv) exit;

if (keyboard_check_pressed(ord("C"))) {show_gui = !show_gui;}
if (!show_gui) exit;
if (mouse_wheel_down() or mouse_wheel_up()) {audio_play_sound(snd_click_sound, 99, 0);}
if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_up))
	{audio_play_sound(snd_click_sound, 95, 0);}

// Selecting
if (mouse_wheel_down() or (keyboard_check_pressed(vk_down))) {selected++}
if (mouse_wheel_up() or (keyboard_check_pressed(vk_up))) {selected--}
// Cap the lowest and highest
if (selected < 0) {selected = 0}
if (selected > selection_max) {selected = selection_max}

// Weapon Cost Script
if (keyboard_check_pressed(ord("E"))) { wep_crafting_cost_switch(); }