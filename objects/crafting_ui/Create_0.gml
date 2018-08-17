// Selection Array
selection[0] = "Stone Axe";
selection[1] = "Stone Pick";
selection[2] = "Steel Axe";
selection[3] = "Steel Pick";
selection_max = 3;

// Stone
globalvar _stone_axe_wood;
_stone_axe_wood = 20;
globalvar _stone_axe_stone;
_stone_axe_stone = 20;

globalvar _stone_pick_wood;
_stone_pick_wood = 25;
globalvar _stone_pick_stone;
_stone_pick_stone = 25;

// Steel
globalvar _steel_axe_wood;
_steel_axe_wood = 40;
globalvar _steel_axe_iron;
_steel_axe_iron = 40;

globalvar _steel_pick_wood;
_steel_pick_wood = 50;
globalvar _steel_pick_iron;
_steel_pick_iron = 50;

// Crafting Recipe
cost[0] = string(_stone_axe_wood) + " Wood" + "\n" + string(_stone_axe_stone) + " Stone";
cost[1] = string(_stone_pick_wood) + " Wood" + "\n" + string(_stone_pick_stone) + " Stone";
cost[2] = string(_steel_axe_wood) + " Wood" + "\n" + string(_steel_axe_iron) + " Iron";
cost[3] = string(_steel_pick_wood) + " Wood" + "\n" + string(_steel_pick_iron) + " Iron";

// Animation
anim = 0;
anim_n = 0;

show_gui = false;

selected = 0;
