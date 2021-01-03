/// @description Progress Text
// You can write your code in this editor

Letters += TextSpeed;
CurrentText = string_copy(Text, 1, floor(Letters));

draw_set_font(Determination);
if (Height == 0) Height = string_height(Text);
Width = string_width(CurrentText);

//Destroy when finished
if (Letters >= Length) && (keyboard_check_pressed(vk_anykey))
{
	instance_destroy();
	with(ObjectCamera) FollowObject = ObjectPlayer;
}