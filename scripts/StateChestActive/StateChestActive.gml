function StateChestActive(){
	//Gets the current chest's ID so we're not affecting every chest in a room
	var CurrentChest
	
	IsChestOpen = false;
	TouchingChest = false;
	CurrentChest =  instance_position(ObjectPlayer.x, ObjectPlayer.y, ObjectChest)
	
	//IF player is directly over a chest, state becomes OPEN.
	if (place_meeting(ObjectPlayer.x, ObjectPlayer.y, ObjectChest)) and keyboard_check_pressed(ord("Z"))
	    {
			
			TouchingChest = true;
			IsChestOpen = true;
			
			CurrentChest.image_speed = 1;
			CurrentChest.image_index = 0;
			show_debug_message("Chest is open!");
			
		}
	// If a player presses Z while not located over a chest, no chest is detected
	else
		{
			if (!place_meeting(ObjectPlayer.x, ObjectPlayer.y, ObjectChest))
			    {
			
					TouchingChest = false;
					IsChestOpen = false;
					show_debug_message("No chest detected.");
			
				}
		}

}