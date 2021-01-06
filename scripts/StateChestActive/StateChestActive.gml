function StateChestActive(){
	//Gets the current chest's ID so we're not affecting every chest in a room
	var CurrentChest
	
	
	IsChestOpen = false;
	TouchingChest = false;
	CurrentChest =  instance_position(ObjectPlayer.x, ObjectPlayer.y, ObjectChest)
	
	//IF player is directly over a chest, state becomes OPEN.
	if (place_meeting(ObjectPlayer.x, ObjectPlayer.y, ObjectChest)) and keyboard_check_pressed(ord("Z"))
	    {
			WalkSpeed = 0;
			TouchingChest = true;
			IsChestOpen = true;
			UsingChest = true;
			
			CurrentChest.image_speed = 1;
			CurrentChest.image_index = 0;
			CurrentChest.sprite_index = SpriteChestOpen;
			show_debug_message("Chest is open!");
			
		}

	if (keyboard_check_pressed(ord("X")))
		{
			UsingChest = false;
			WalkSpeed = 1;
			CurrentChest.image_speed = 1;
			CurrentChest.image_index = 0;
			CurrentChest.sprite_index = SpriteChestClose;
			show_debug_message("Chest is closed!");
		}

}