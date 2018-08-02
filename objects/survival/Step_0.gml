if (global.hunger > 100) { global.hunger = 100; }
if (global.thirst > 100) { global.thirst = 100; }
if (global.sanity > 100) { global.sanity = 100; }
if (global.oxygen > 100) { global.oxygen = 100; }

if (global.hunger <= 0) { global.player_hp -= 0.015; }
if (global.thirst <= 0) { global.player_hp -= 0.025; }
if (global.sanity <= 0) { global.player_hp -= 0.005; }
if (global.oxygen <= 0) { global.player_hp -= 0.030; }

