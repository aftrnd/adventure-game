/// @description Insert description here
// You can write your code in this editor

//Temporary Inventory UI
var _size = ds_list_size(playerInventory);

for (var i = 0; i < _size; i++) {
	var _item = playerInventory[| i];
	
	var _x = 10;
	var _y = 10 + 30 * i;
	
	draw_set_colour(c_gray);
	draw_set_font(FontDebugText);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(_x, _y, string(_item));
}


//USER INTERFACE
//DIAPLAY CHEST UI LOCATION
if (DisplayChestUI = true)
{
	//GUICenterY = display_get_gui_height() / 2;
	GUICenterX = display_get_gui_width() / 2;
	
	draw_sprite_ext(SpriteUIChest, 0, 88, HotbarCenterY + 128, GUIScale, GUIScale, 0, c_white, 1)
}

//DIAPLAY HOTBAR LOCATION
if (DisplayHotbarUI = true)
{	
	draw_sprite_ext(SpriteUIHotbar, 0, HotbarCenterX, HotbarCenterY, GUIScale, GUIScale, 0, c_white, 1)
}

//DISPLAY CURRENT PLAYER
if (CurrentPlayerHuman = true)
{
	
	draw_sprite_ext(SpriteUICurrentPlayer, 0, 121, HotbarCenterY, GUIScale, GUIScale, 0, c_white, 1)
}
if (CurrentPlayerHuman = false)
{
	sprite_delete(SpriteUICurrentPlayer)
}


