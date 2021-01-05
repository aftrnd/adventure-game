function StateChestDormant(){
	//Checks if player is located at a chest or not
	if (!place_meeting(ObjectPlayer.x, ObjectPlayer.y, ObjectChest))
	    {
			
			TouchingChest = false;
			IsChestOpen = false;
			
			ObjectChest.sprite_index = SpriteChest;
			
			
			
			
		}
}