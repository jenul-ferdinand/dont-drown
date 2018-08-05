spawnX = random_range(0, room_width);
spawnY = random_range(room_height, 0);
spawnAlarm = random_range(0.1, 0.25) * room_speed;

event_inherited();

