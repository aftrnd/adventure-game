/// @description Insert description here
// You can write your code in this editor

//Location
var HalfWidth = Width * 0.5;

//Properties
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_roundrect_ext(x - HalfWidth - Border, y - Height - (Border * 2), x + HalfWidth + Border, y, 20, 20, false);

//draw_sprite(sMarker, 0 ,x, y);

draw_set_alpha(1);

//DRAW THE TEXT
ScriptDrawText(c_white, FontSignText, fa_center, fa_top);
draw_text(x, y - Height - Border, CurrentText);