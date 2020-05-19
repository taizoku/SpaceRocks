/// @description Camera Set-up

// CAMERA
cameraX = 0;
cameraY = 0;
target = obj_ship;

cameraWidth = 500;
cameraHeight = 500;

view_enabled = true; // enable viewports
view_visible[0] = true; // set viewport0 to be visible

// Change the size of the camera (500 x 500)
camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);

// DISPLAY
displayScale = 2; // So the viewport is 2x camera dimensions
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

// Change the window size (viewport)
window_set_size(displayWidth, displayHeight);
surface_resize(application_surface, displayWidth, displayHeight);

// GUI
display_set_gui_size(cameraWidth, cameraHeight); // size gui to camera dim

alarm[0] = 1; // set the alarm off in the next frame
