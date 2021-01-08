/// @description Player Variables (Speed, Gravity, etc...)
PlayerState = PlayerStateNormal;

CurrentPlayerHuman = true;

//General Movement
HorizontalSpeed = 0;
VerticalSpeed = 0;
GravityAmount = 0.25;

//Speed
WalkSpeed = 1;
LadderSpeed = 1

//Toggles
ladder = false
JumpDisabled = false
GravityEnabled = true
UsingChest = false

//Inventory
playerInventory = ds_list_create();

//GUI Settings
HotbarCenterY = 50;
HotbarCenterX = 50;

GUIScale = 3

//UI Toggles
DisplayChestUI = false
DisplayHotbarUI = true
