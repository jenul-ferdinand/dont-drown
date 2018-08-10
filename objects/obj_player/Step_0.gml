event_inherited();
// Attack Cooldown Script
wep_attack_cooldown();
// Run State
script_execute(state);
// Death
if (global.player_hp <= 0) { instance_destroy(); }

