// Health Of The Stone
hp = 100;
// Is The Stone Hit
hit = false;
// What Is It Hit From
hitfrom = -1;

#region Wobble
// setup variables used for calculation and keeping track of wobble
wobbling = false;
wobble = 0;
xoffset = 0;
wobble_length = 1; // number of cycles to wobble the instance with
                   // only whole numbers are valid - ie: 1, 2, etc
wobble_speed = 0.5; // valid value range: 0 - 13 (decimals are ok)
wobble_intensity = 3; // the distance multiplier (decimals are ok)
#endregion