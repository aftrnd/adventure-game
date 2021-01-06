/// @description Insert description here
// You can write your code in this editor
var _size = ds_list_size(playerInventory);

for (var i = 0; i < _size; i++) {
	var _item = playerInventory[| i];
	
	var _x = 10;
	var _y = 10 + 30 * i;
	
	draw_text(_x, _y, string(_item));
}