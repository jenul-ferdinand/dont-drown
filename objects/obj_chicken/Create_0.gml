//Set up animal
randomise();
direction = ANIMAL_RIGHT;
move_rate = 0.1;
run_rate = 0.5;
state = IDLE;
next_state = IDLE;
info = "IDLE";

//Animation
image_speed = 4;
sprite_index = spr_chicken_idle;

//What the bunny is interested in
target_x = x;
target_y = y;

//Debug
debug = false;

//Fear
fear_distance = 100;
//Food
food_distance = 150;
food_in_belly = 100;
hunger_level = 50;
hunger_rate = 1;
starve_level = 5;
//Sleep
sleep_level = 0;
sleepy = 100;
sleepy_rate = 1;
must_sleep = 200;

//Combat
hit = false;
hp = 100;

//Laying Eggs
egg_rate = room_speed*300;
alarm[0] = egg_rate;