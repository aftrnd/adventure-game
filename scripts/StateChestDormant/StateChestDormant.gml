function StateChestDormant(){
	
	//Checks if player is located at a chest or not
	
	IsChestOpen = true
	
	if (!place_meeting(ObjectPlayer.x, ObjectPlayer.y, ObjectChest))
	    {
			
			TouchingChest = false;
			IsChestOpen = false;
			
			ObjectChest.image_speed = 0;
			ObjectChest.image_index = 0;
			
		}

}