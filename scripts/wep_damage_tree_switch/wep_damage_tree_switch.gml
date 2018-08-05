/// @desc wep_damage_tree_switch();

// Remove Hp
switch (obj_player.weapon)
{
	case obj_hands: { hp -= 5 * 0.5; } break;
	case obj_stone_axe: { hp -= 10 * 0.5; } break;
}
	
// Hands
if (instance_exists(obj_hands) && (obj_player.weapon == obj_hands))
{
	hitfrom = "Hands";
}
		
// Stone Axe
if (instance_exists(obj_stone_axe) && (obj_player.weapon == obj_stone_axe))
{
	hitfrom = "Stone Axe";
}