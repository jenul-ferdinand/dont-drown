randomise();
var i = choose(1, 2, 3, 4);
if (i == 1)
	{
		instance_create_layer(x, y, "Items", obj_chicken_egg);
	}
alarm[0] = egg_rate;