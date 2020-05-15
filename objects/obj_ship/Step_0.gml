/// @description Actions for ship 60times/sec	

// PRESS LEFT KEY
if (keyboard_check(vk_left)) {
	image_angle += 5;
}

// PRESS RIGHT KEY
if (keyboard_check(vk_right)) {
	image_angle -= 5;
}

// PRESS UP KEY
if (keyboard_check(vk_up)) {
	// 0.05*60fps = distance moved
	motion_add(image_angle+90, 0.05) // use built-in to add momentum in movement (dir, speed)
}

// PRESS DOWN KEY
if (keyboard_check(vk_down)) {
	// 0.05*60fps = distance moved
	motion_add(image_angle-90, 0.03) // use built-in to add momentum in movement (dir, speed)
}

// PRESSED SPACE BAR
if (keyboard_check_pressed(vk_space)) {
	// create a bullet (at location of player) and return id of object
	var bullet = instance_create_layer(x, y, "Instances", obj_bullet);
	bullet.direction = image_angle+90; // shoot bullet same direction as the ship
}

// WRAP SHIP ACROSS WINDOW
// for any instance that leaves the boundaries of the room
move_wrap(true, true, sprite_width/2);