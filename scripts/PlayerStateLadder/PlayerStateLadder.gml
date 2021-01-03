function PlayerStateLadder(){
	
	if (place_meeting(x, y, ObjectLadderUtility))
    {
		ladder = true
		JumpDisabled = false
		GravityEnabled = true
		sprite_index = SpritePlayerLadder;
		
		if (keyboard_check(ord("W")))
		{
			image_speed = 0.75;
			sprite_index = SpritePlayerLadder;
			//Aligns player to x-coordinate of ladder
			if (place_meeting(x, y, ObjectLadderUtility))
			{
				ObjectPlayer.x = (ObjectLadderUtility.x + 4)
			}
			VerticalSpeed = -1;
			y = y + VerticalSpeed
			
		} else {
			image_speed = 0;
			image_index = 0
			VerticalSpeed = 0
		}
		if (keyboard_check(ord("S")))
		{

			VerticalSpeed = 1;
		} else {
			VerticalSpeed = 0;
		}
		show_debug_message("ON DA LADDER!");
    }
	else 
    {
		//When player is NOT on a ladder...
		PlayerState = PlayerStateFree;
		ladder = false;
		JumpDisabled = false;
		GravityEnabled = true;
		show_debug_message("NOT ON DA LADDER!");
    }
}