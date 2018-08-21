wep_selection_array();

// Check If The Player Exists
if (!(instance_exists(obj_player))) exit;
// Check If The Inventory Is Open
if (global.show_inv) exit;
// Turn Off Player Properties While, The Menu Is Open
if (show_gui == true)
{
	camera.mode = cam_mode.follow_object;
}
else 
{
	camera.mode = cam_mode.follow_mouse_peek;
}
// Check If The Crafting Menu Exists
if (!show_gui) exit;
// Key Bindings
if (mouse_wheel_down() or mouse_wheel_up()) 
	{audio_play_sound(snd_click_sound, 95, 0);}
if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(vk_up))
	{audio_play_sound(snd_click_sound, 95, 0);}
if (keyboard_check_pressed(ord("S")) or keyboard_check_pressed(ord("W")))
	{audio_play_sound(snd_click_sound, 95, 0);}

// Selecting
if (mouse_wheel_down()) {selected++}
if (mouse_wheel_up()) {selected--}
if (keyboard_check_pressed(vk_down)) {selected++}
if (keyboard_check_pressed(vk_up)) {selected--}
if (keyboard_check_pressed(ord("S"))) {selected++}
if (keyboard_check_pressed(ord("W"))) {selected--}
// Cap the lowest and highest
if (selected < 0) {selected = 0}
if (selected > selection_max) {selected = selection_max}

// Weapon Cost Script
if (keyboard_check_pressed(ord("E"))) { wep_crafting_cost_switch(); }