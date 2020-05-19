/// @description Camera tracking

// Follow target
if (instance_exists(target)) {
	// Camera is anchored to the top left
	cameraX = target.x - cameraWidth/2; // so substract width
	cameraY = target.y - cameraHeight/2;
	
	// Clamp the camera for wrapping (visual indication of window edge)
	cameraX = clamp(cameraX, 0, room_width - cameraWidth); // set limit
	cameraY = clamp(cameraY, 0, room_height - cameraHeight);
}

camera_set_view_pos(view_camera[0], cameraX, cameraY);

//camera_set_view_target(view_camera[0], target);