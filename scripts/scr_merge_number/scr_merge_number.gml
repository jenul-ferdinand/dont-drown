///@desc scr_merge_number
///@param num1
///@param num2
///@param amount

var num1 = argument0;
var num2 = argument1;
var amount = argument2;

var diff = num1 - num2;
var merged = num1 - (diff * amount);

return merged;