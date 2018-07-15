script_execute(state);

//Slot 1 Is Equipped
if (instance_exists(ui)) {weapon = ui.slot_1;}

//Weapon Organizing
if (weapon == obj_stone_axe) {axe = true;}
else {axe = false;}

if (weapon == obj_stone_pick) {pick = true;}
else {pick = false;}

if (weapon == obj_hands) {hands = true;}
else {hands = false;}

