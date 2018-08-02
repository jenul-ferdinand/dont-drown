global.player_hp = 100;
global.hunger = 100;
global.thirst = 100;
global.sanity = 100;
global.oxygen = 100;

hunger_rate = room_speed*20;
thirst_rate = room_speed*15;
sanity_rate = room_speed*30;
oxygen_rate = room_speed*60;
show_oxygen_bar = false;

alarm[0] = hunger_rate; // Hunger
alarm[1] = thirst_rate; // Thirst
alarm[2] = sanity_rate; // Sanity
alarm[3] = oxygen_rate; // Oxygen
