/// @description Insert description here
// You can write your code in this editor

if (point_in_circle(ObjectPlayer.x, ObjectPlayer.y, x, y, 20)) && (!instance_exists(ObjectSignText))
{
	with (instance_create_layer(x, y - TextBoxHeight, layer, ObjectSignText))
	{
		Text = other.Text;
		Length = string_length(Text);
		
		instance_destroy(ObjectSpeechBubbleAnimated)
	
	}
	with (ObjectCamera)
	{
		FollowObject = other.id;
	}
}