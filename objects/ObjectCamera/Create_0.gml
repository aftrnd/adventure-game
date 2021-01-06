///// @description CAMERA SETUP

// Create Camera
//Follow what object?
FollowObject = ObjectPlayer;
CameraSmoothingScale = 0.05;

CurrentMonitorResolutionHeight = display_get_height()
CurrentMonitorResolutionWidth = display_get_width()

view_width = CurrentMonitorResolutionWidth / 6;
view_height = CurrentMonitorResolutionHeight / 6;

window_scale = 3;

window_set_size(view_width * window_scale, view_height * window_scale);
alarm[0]=1;

surface_resize(application_surface,view_width * window_scale, view_height * window_scale);
