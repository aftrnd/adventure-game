/// @description Insert description here
// You can write your code in this editor
#macro view view_camera[0]
camera_set_view_size(view, view_width, view_height);

if (instance_exists(FollowObject))
{
	//Follow the object (Centered)
	var CameraX = FollowObject.x - view_width / 2;
	var CameraY = FollowObject.y - view_height / 2;

	
	var CurrentX = camera_get_view_x(view);
	var CurrentY = camera_get_view_y(view);
	
	var CameraSpeed = CameraSmoothingScale;
	
	//Update camera view (Viewport) position
	camera_set_view_pos(view, lerp(CurrentX, CameraX, CameraSpeed), lerp(CurrentY, CameraY, CameraSpeed));
	
}