/// @desc wep_selection_array();

// Wood
globalvar _wood_axe_wood;
_wood_axe_wood = 15;

globalvar _wood_pick_wood;
_wood_pick_wood = 15;

// Stone
globalvar _stone_axe_wood;
_stone_axe_wood = 40;
globalvar _stone_axe_stone;
_stone_axe_stone = 40;

globalvar _stone_pick_wood;
_stone_pick_wood = 45;
globalvar _stone_pick_stone;
_stone_pick_stone = 45;

// Steel
globalvar _steel_axe_wood;
_steel_axe_wood = 60;
globalvar _steel_axe_iron;
_steel_axe_iron = 60;

globalvar _steel_pick_wood;
_steel_pick_wood = 65;
globalvar _steel_pick_iron;
_steel_pick_iron = 65;

// Selection Array
if (global.wood_count >= _wood_axe_wood) 
{
	selection[0] = "Wood Axe";
	cost[0] = string(_wood_axe_wood) + " Wood";
}
else 
{
	selection[0] = "******";
	cost[0] = "******";
}

if (global.wood_count >= _wood_pick_wood)
{
	selection[1] = "Wood Pick";
	cost[1] = string(_wood_pick_wood) + " Wood";
}
else
{
	selection[1] = "******";
	cost[1] = "******";
}

if (global.wood_count >= _stone_axe_wood and global.stone_count >= _stone_axe_stone)
{
	selection[2] = "Stone Axe";
	cost[2] = string(_stone_axe_wood) + " Wood" + "\n" + string(_stone_axe_stone) + " Stone";
}
else
{
	selection[2] = "******";
	cost[2] = "******";
}

if (global.wood_count >= _stone_pick_wood and global.stone_count >= _stone_pick_stone)
{
	selection[3] = "Stone Pick";
	cost[3] = string(_stone_pick_wood) + " Wood" + "\n" + string(_stone_pick_stone) + " Stone";
}
else
{
	selection[3] = "******";
	cost[3] = "******";
}

if (global.wood_count >= _steel_axe_wood and global.iron_count >= _steel_axe_iron)
{
	selection[4] = "Steel Axe";
	cost[4] = string(_steel_axe_wood) + " Wood" + "\n" + string(_steel_axe_iron) + " Iron";
}
else
{
	selection[4] = "******";
	cost[4] = "******";
}

if (global.wood_count >= _steel_pick_wood and global.iron_count >= _steel_pick_iron)
{
	selection[5] = "Steel Pick";
	cost[5] = string(_steel_pick_wood) + " Wood" + "\n" + string(_steel_pick_iron) + " Iron";
}
else
{
	selection[5] = "******";
	cost[5] = "******";
}

selection_max = 5;