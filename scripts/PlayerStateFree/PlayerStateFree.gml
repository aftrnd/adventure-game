function PlayerStateFree(){
	
var MovePlayerHorizontal = Move_Right - Move_Left;
HorizontalSpeed = MovePlayerHorizontal * WalkSpeed;

//Apply gravity to Y-Axis
if (GravityEnabled = true)
{
	VerticalSpeed = VerticalSpeed + GravityAmount;
} else {
	GravityEnabled = false
}

// Jumping
if (place_meeting(x, y + 1, ObjectWall)) and (Move_Jump) and JumpDisabled = false
{
	VerticalSpeed = -2.75;
}

// Wall Collision
if (place_meeting(x + HorizontalSpeed, y, ObjectWall))
{
	// If player collides, set horizontal speed to 0
	while (!place_meeting(x + sign(HorizontalSpeed), y, ObjectWall))
	{
		x = x + sign(HorizontalSpeed);
	}
	
	HorizontalSpeed = 0;
}

// Change X-Axis Coordinates
x = x + HorizontalSpeed

// Vertical COllision
if (place_meeting(x, y + VerticalSpeed, ObjectWall))
{
	// If player collides, set horizontal speed to 0
	while (!place_meeting(x, y + sign(VerticalSpeed), ObjectWall))
	{
		y = y + sign(VerticalSpeed);
	}
	
	VerticalSpeed = 0;
}

// Change Y-Axis Coordinates
y = y + VerticalSpeed;

//PLAYER ANIMATION
//Controlls player's animation in the air while falling or jumping
if (!place_meeting(x, y + 1, ObjectWall)) and (!place_meeting(x, y, ObjectLadderUtility))
{
	sprite_index = SpritePlayerAir;
	image_speed = 0;
	if (sign(VerticalSpeed) > 0) image_index = 1; else image_index = 0;
	
}
// Controlls player's idle or running animation
else
{
	image_speed = 1;
	if (HorizontalSpeed == 0) and (!place_meeting(x, y, ObjectLadderUtility))
	{
		sprite_index = SpritePlayer;
	}
	else
	{
		sprite_index = SpritePlayerRunning;
	}
}

// Flips sprite horizontally based on direction/key
if (HorizontalSpeed != 0) image_xscale = sign(HorizontalSpeed);

//LADDERS
if (place_meeting(x, y, ObjectLadderUtility))
    {
		PlayerStateLadder()
	}

}